import CGLib
import GLib

public protocol GWeakCapturing {
    init(raw: UnsafeMutableRawPointer)
}

@propertyWrapper
public final class GWeak<T: ObjectProtocol & GWeakCapturing> {

    private var storage: UnsafeMutablePointer<gpointer?>

    public var wrappedValue: T? {
        get {
            storage.pointee.flatMap(T.init(raw:))
        }
        set {
            assign(newValue: newValue)
        }
    }

    public init(_ wrappedValue: T?) {
        self.storage = UnsafeMutablePointer.allocate(capacity: 1)
        assign(newValue: wrappedValue) 
    }

    public init(raw pointer: UnsafeMutableRawPointer?) {
        self.storage = UnsafeMutablePointer.allocate(capacity: 1)
        assign(newValue: pointer.flatMap(T.init(raw:))) 
    }

    public convenience init(_ object: ObjectProtocol) {
        self.init(raw: object.ptr)
    }

    private func assign(newValue: T?) {
        let current = wrappedValue
        current?.removeWeakPointer(weakPointerLocation: storage)
        storage.pointee = newValue?.ptr
        newValue?.addWeakPointer(weakPointerLocation: storage)
        
    }

    deinit {
        assign(newValue: nil)
        storage.deallocate()
    }

} 