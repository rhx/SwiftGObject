import CGLib
import GLib

// MARK: - TypeInstance Record

/// The `TypeInstanceProtocol` protocol exposes the methods and properties of an underlying `GTypeInstance` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInstance`.
/// Alternatively, use `TypeInstanceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used as the base of all type instances.
public protocol TypeInstanceProtocol {
    /// Untyped pointer to the underlying `GTypeInstance` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeInstance` instance.
    var _ptr: UnsafeMutablePointer<GTypeInstance> { get }
}

/// The `TypeInstanceRef` type acts as a lightweight Swift reference to an underlying `GTypeInstance` instance.
/// It exposes methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstanceRef` only as an `unowned` reference to an existing `GTypeInstance` instance.
///
/// An opaque structure used as the base of all type instances.
public struct TypeInstanceRef: TypeInstanceProtocol {
    /// Untyped pointer to the underlying `GTypeInstance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeInstanceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeInstanceProtocol`
    init<T: TypeInstanceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeInstance` type acts as an owner of an underlying `GTypeInstance` instance.
/// It provides the methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstance` as a strong reference or owner of a `GTypeInstance` instance.
///
/// An opaque structure used as the base of all type instances.
open class TypeInstance: TypeInstanceProtocol {
    /// Untyped pointer to the underlying `GTypeInstance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TypeInstance` instance.
    public init(_ op: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypeInstanceProtocol`
    /// `GTypeInstance` does not allow reference counting.
    public convenience init<T: TypeInstanceProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypeInstance, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeInstance`.
    deinit {
        // no reference counting for GTypeInstance, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeInstance.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeInstance.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeInstance.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeInstance>(opaquePointer))
    }



}

// MARK: - no TypeInstance properties

// MARK: - no signals


public extension TypeInstanceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInstance` instance.
    var _ptr: UnsafeMutablePointer<GTypeInstance> { return ptr.assumingMemoryBound(to: GTypeInstance.self) }

    func getPrivate(privateType private_type: GType) -> UnsafeMutableRawPointer! {
        let rv = g_type_instance_get_private(cast(_ptr), private_type)
        return cast(rv)
    }


    // *** signalChainFromOverriddenHandler() is not available because it has a varargs (...) parameter!


    /// This is similar to g_signal_connect_data(), but uses a closure which
    /// ensures that the `gobject` stays alive during the call to `c_handler`
    /// by temporarily adding a reference count to `gobject`.
    /// 
    /// When the `gobject` is destroyed the signal handler will be automatically
    /// disconnected.  Note that this is not currently threadsafe (ie:
    /// emitting a signal while `gobject` is being destroyed in another thread
    /// is not safe).
    func signalConnectObject(detailedSignal detailed_signal: UnsafePointer<gchar>, cHandler c_handler: @escaping Callback, gobject: ObjectProtocol, connectFlags connect_flags: ConnectFlags) -> CUnsignedLong {
        let rv = g_signal_connect_object(cast(_ptr), detailed_signal, c_handler, cast(gobject.ptr), connect_flags)
        return CUnsignedLong(rv)
    }

    /// Emits a signal.
    /// 
    /// Note that g_signal_emit_valist() resets the return value to the default
    /// if no handlers are connected, in contrast to g_signal_emitv().
    func signalEmitValist(signalID signal_id: CUnsignedInt, detail: GLib.Quark, varArgs var_args: CVaListPointer) {
        g_signal_emit_valist(cast(_ptr), guint(signal_id), detail, var_args)
    
    }

    /// Private helper function to aid implementation of the
    /// G_TYPE_CHECK_INSTANCE() macro.
    func typeCheckInstance() -> Bool {
        let rv = g_type_check_instance(cast(_ptr))
        return Bool(rv != 0)
    }

    func typeCheckInstanceCast(ifaceType iface_type: GType) -> UnsafeMutablePointer<GTypeInstance>! {
        let rv = g_type_check_instance_cast(cast(_ptr), iface_type)
        return cast(rv)
    }

    func typeCheckInstanceIsA(ifaceType iface_type: GType) -> Bool {
        let rv = g_type_check_instance_is_a(cast(_ptr), iface_type)
        return Bool(rv != 0)
    }

    func typeCheckInstanceIsFundamentallyA(fundamentalType fundamental_type: GType) -> Bool {
        let rv = g_type_check_instance_is_fundamentally_a(cast(_ptr), fundamental_type)
        return Bool(rv != 0)
    }

    /// Frees an instance of a type, returning it to the instance pool for
    /// the type, if there is one.
    /// 
    /// Like g_type_create_instance(), this function is reserved for
    /// implementors of fundamental types.
    func typeFreeInstance() {
        g_type_free_instance(cast(_ptr))
    
    }

    func typeNameFromInstance() -> String! {
        let rv = g_type_name_from_instance(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
}



