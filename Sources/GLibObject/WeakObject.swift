import CGLib
import GLib

public protocol GWeakCapturing {
    init(raw: UnsafeMutableRawPointer)
}

@propertyWrapper
public final class GWeak<T: ObjectProtocol & GWeakCapturing> {

    private var storage: UnsafeMutablePointer<UnsafeMutablePointer<gpointer?>>

    public var wrappedValue: T? {
        get { storage.pointee.pointee.flatMap(T.init(raw:)) }
        set { assign(newValue: newValue) }
    }

    public init(wrappedValue: T?) {
        self.storage = UnsafeMutablePointer.allocate(capacity: 1)
        self.storage.pointee = UnsafeMutablePointer.allocate(capacity: 1)
        self.storage.pointee.pointee = nil
        assign(newValue: wrappedValue) 
    }

    public convenience init(_ other: T?) {
        self.init(wrappedValue: other)
    }

    private func assign(newValue: T?) {
        let current = wrappedValue
        current?.removeWeakPointer(weakPointerLocation: storage.pointee)
        storage.pointee.pointee = newValue?.ptr
        newValue?.addWeakPointer(weakPointerLocation: storage.pointee)
        
    }

    deinit {
        assign(newValue: nil)
        storage.pointee.deallocate()
        storage.deallocate()
    }
} 


final class WeakReferenceContainer {
    typealias Container = (closureBox: AnyObject, handler: GWeakNotify, unownedInstance: UnsafeMutableRawPointer)
    private var container: Container? = nil

    init() { }

    func inject(closureBox: AnyObject, handler: @escaping GWeakNotify, unownedInstance: UnsafeMutableRawPointer) {
        self.container = (closureBox: closureBox, handler: handler, unownedInstance: unownedInstance)
    }

    func dispose() {
        container = nil
    }

    deinit {
        if let container = container {
            let data = Unmanaged.passUnretained(container.closureBox)
            ObjectRef(raw: container.unownedInstance).weakUnref(notify: container.handler, data: data.toOpaque())
            data.release()
        }
    }

} 

extension ObjectProtocol {
    public func addWeakObserver( _ handler: @escaping (_ objectBeingDestroyed: gpointer) -> Void ) -> AnyObject {
        typealias SwiftHandler = GLib.ClosureHolder<gpointer, Void>
        let container = WeakReferenceContainer()
        let notificationBox: (gpointer) -> Void = { [weak container] arg in handler(arg); container?.dispose()}
        let cCallback: @convention(c) (gpointer, gpointer) -> Void = {  userData, unownedSelf in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeRetainedValue()
            holder.call(unownedSelf)
        }
        let closureBox = SwiftHandler(notificationBox)
        let data = Unmanaged.passRetained(closureBox)
        let notificationHanler = unsafeBitCast(cCallback, to: GWeakNotify.self)
        self.weakRef(notify: notificationHanler, data: data.toOpaque())
        container.inject(closureBox: closureBox, handler: notificationHanler, unownedInstance: self.ptr)
        return container
    }
}
