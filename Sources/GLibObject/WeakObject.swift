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

    public var raw: gpointer? {
        get { storage.pointee.pointee }
        set { assign(newValue: newValue.flatMap(T.init(raw:))) }
    }

    public init(wrappedValue: T?) {
        self.storage = UnsafeMutablePointer.allocate(capacity: 1)
        self.storage.pointee = UnsafeMutablePointer.allocate(capacity: 1)
        self.storage.pointee.pointee = nil
        assign(newValue: wrappedValue) 
    }

    public convenience init(raw pointer: UnsafeMutableRawPointer?) {
        self.init(wrappedValue: pointer.flatMap(T.init(raw:)))
    }

    public convenience init(_ object: ObjectProtocol) {
        self.init(raw: object.ptr)
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
