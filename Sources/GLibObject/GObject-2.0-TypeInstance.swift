import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypeInstance Record

/// The `TypeInstanceProtocol` protocol exposes the methods and properties of an underlying `GTypeInstance` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInstance`.
/// Alternatively, use `TypeInstanceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used as the base of all type instances.
public protocol TypeInstanceProtocol {
        /// Untyped pointer to the underlying `GTypeInstance` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInstance` instance.
    var _ptr: UnsafeMutablePointer<GTypeInstance>! { get }

}

/// The `TypeInstanceRef` type acts as a lightweight Swift reference to an underlying `GTypeInstance` instance.
/// It exposes methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstanceRef` only as an `unowned` reference to an existing `GTypeInstance` instance.
///
/// An opaque structure used as the base of all type instances.
public struct TypeInstanceRef: TypeInstanceProtocol {
        /// Untyped pointer to the underlying `GTypeInstance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeInstanceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeInstance>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeInstance>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `TypeInstanceProtocol`
    @inlinable init<T: TypeInstanceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeInstance>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeInstance>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeInstance` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeInstanceProtocol`
    /// `GTypeInstance` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeInstanceProtocol`
    @inlinable public init<T: TypeInstanceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeInstance`.
    deinit {
        // no reference counting for GTypeInstance, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }



}

// MARK: no TypeInstance properties

// MARK: no TypeInstance signals


// MARK: TypeInstance Record: TypeInstanceProtocol extension (methods and fields)
public extension TypeInstanceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInstance` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeInstance>! { return ptr?.assumingMemoryBound(to: GTypeInstance.self) }

    @inlinable func getPrivate(privateType private_type: GType) -> gpointer! {
        let rv = g_type_instance_get_private(_ptr, private_type)
        return rv
    }


    // *** signalChainFromOverriddenHandler() is not available because it has a varargs (...) parameter!


    /// This is similar to `g_signal_connect_data()`, but uses a closure which
    /// ensures that the `gobject` stays alive during the call to `c_handler`
    /// by temporarily adding a reference count to `gobject`.
    /// 
    /// When the `gobject` is destroyed the signal handler will be automatically
    /// disconnected.  Note that this is not currently threadsafe (ie:
    /// emitting a signal while `gobject` is being destroyed in another thread
    /// is not safe).
    @inlinable func signalConnectObject<ObjectT: ObjectProtocol>(detailedSignal detailed_signal: UnsafePointer<gchar>!, cHandler c_handler: @escaping GCallback, gobject: ObjectT? = nil, connectFlags connect_flags: ConnectFlags) -> Int {
        let rv = Int(g_signal_connect_object(_ptr, detailed_signal, c_handler, gobject?.object_ptr, connect_flags.value))
        return rv
    }

    /// Emits a signal.
    /// 
    /// Note that `g_signal_emit_valist()` resets the return value to the default
    /// if no handlers are connected, in contrast to `g_signal_emitv()`.
    @inlinable func signalEmitValist(signalID signal_id: Int, detail: GQuark, varArgs var_args: CVaListPointer) {
        g_signal_emit_valist(_ptr, guint(signal_id), detail, var_args)
    
    }

    /// Private helper function to aid implementation of the
    /// `G_TYPE_CHECK_INSTANCE()` macro.
    @inlinable func typeCheckInstance() -> Bool {
        let rv = ((g_type_check_instance(_ptr)) != 0)
        return rv
    }

    @inlinable func typeCheckInstanceCast(ifaceType iface_type: GType) -> TypeInstanceRef! {
        guard let rv = TypeInstanceRef(gconstpointer: gconstpointer(g_type_check_instance_cast(_ptr, iface_type))) else { return nil }
        return rv
    }

    @inlinable func typeCheckInstanceIsA(ifaceType iface_type: GType) -> Bool {
        let rv = ((g_type_check_instance_is_a(_ptr, iface_type)) != 0)
        return rv
    }

    @inlinable func typeCheckInstanceIsFundamentallyA(fundamentalType fundamental_type: GType) -> Bool {
        let rv = ((g_type_check_instance_is_fundamentally_a(_ptr, fundamental_type)) != 0)
        return rv
    }

    /// Frees an instance of a type, returning it to the instance pool for
    /// the type, if there is one.
    /// 
    /// Like `g_type_create_instance()`, this function is reserved for
    /// implementors of fundamental types.
    @inlinable func typeFreeInstance() {
        g_type_free_instance(_ptr)
    
    }

    @inlinable func typeNameFromInstance() -> String! {
        let rv = g_type_name_from_instance(_ptr).map({ String(cString: $0) })
        return rv
    }

    // var gClass is unavailable because g_class is private

}



