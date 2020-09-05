import CGLib
import GLib
import GObjectCHelpers

// MARK: - InterfaceInfo Record

/// The `InterfaceInfoProtocol` protocol exposes the methods and properties of an underlying `GInterfaceInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InterfaceInfo`.
/// Alternatively, use `InterfaceInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
public protocol InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInterfaceInfo` instance.
    var _ptr: UnsafeMutablePointer<GInterfaceInfo>! { get }

}

/// The `InterfaceInfoRef` type acts as a lightweight Swift reference to an underlying `GInterfaceInfo` instance.
/// It exposes methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfoRef` only as an `unowned` reference to an existing `GInterfaceInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
public struct InterfaceInfoRef: InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InterfaceInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInterfaceInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInterfaceInfo>?) {
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

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    @inlinable init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InterfaceInfo` type acts as an owner of an underlying `GInterfaceInfo` instance.
/// It provides the methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfo` as a strong reference or owner of a `GInterfaceInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
open class InterfaceInfo: InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInterfaceInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInterfaceInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GInterfaceInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    /// `GInterfaceInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `InterfaceInfoProtocol`
    @inlinable public init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GInterfaceInfo`.
    deinit {
        // no reference counting for GInterfaceInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }



}

// MARK: no InterfaceInfo properties

// MARK: no InterfaceInfo signals


// MARK: InterfaceInfo Record: InterfaceInfoProtocol extension (methods and fields)
public extension InterfaceInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInterfaceInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInterfaceInfo>! { return ptr?.assumingMemoryBound(to: GInterfaceInfo.self) }

    /// Adds `interface_type` to the static `instantiable_type`.
    /// The information contained in the `GInterfaceInfo` structure
    /// pointed to by `info` is used to manage the relationship.
    @inlinable func typeAddInterfaceStatic(instanceType instance_type: GType, interfaceType interface_type: GType) {
        g_type_add_interface_static(instance_type, interface_type, _ptr)
    
    }

    /// location of the interface initialization function
    @inlinable var interfaceInit: GInterfaceInitFunc! {
        /// location of the interface initialization function
        get {
            let rv = _ptr.pointee.interface_init
            return rv
        }
        /// location of the interface initialization function
         set {
            _ptr.pointee.interface_init = newValue
        }
    }

    /// location of the interface finalization function
    @inlinable var interfaceFinalize: GInterfaceFinalizeFunc! {
        /// location of the interface finalization function
        get {
            let rv = _ptr.pointee.interface_finalize
            return rv
        }
        /// location of the interface finalization function
         set {
            _ptr.pointee.interface_finalize = newValue
        }
    }

    /// user-supplied data passed to the interface init/finalize functions
    @inlinable var interfaceData: gpointer! {
        /// user-supplied data passed to the interface init/finalize functions
        get {
            let rv = _ptr.pointee.interface_data
            return rv
        }
        /// user-supplied data passed to the interface init/finalize functions
         set {
            _ptr.pointee.interface_data = newValue
        }
    }

}



