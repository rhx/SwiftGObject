import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypeInterface Record

/// The `TypeInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTypeInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInterface`.
/// Alternatively, use `TypeInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used as the base of all interface types.
public protocol TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeInterface` instance.
    var _ptr: UnsafeMutablePointer<GTypeInterface> { get }
}

/// The `TypeInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTypeInterface` instance.
/// It exposes methods that can operate on this data type through `TypeInterfaceProtocol` conformance.
/// Use `TypeInterfaceRef` only as an `unowned` reference to an existing `GTypeInterface` instance.
///
/// An opaque structure used as the base of all interface types.
public struct TypeInterfaceRef: TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeInterfaceProtocol`
    init<T: TypeInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    static func peek(instanceClass instance_class: TypeClassProtocol, ifaceType iface_type: GType) -> TypeInterfaceRef! {
        let rv: UnsafeMutableRawPointer! = cast(g_type_interface_peek(cast(instance_class.ptr), iface_type))
        return rv.map { TypeInterfaceRef(cast($0)) }
    }
}

/// The `TypeInterface` type acts as an owner of an underlying `GTypeInterface` instance.
/// It provides the methods that can operate on this data type through `TypeInterfaceProtocol` conformance.
/// Use `TypeInterface` as a strong reference or owner of a `GTypeInterface` instance.
///
/// An opaque structure used as the base of all interface types.
open class TypeInterface: TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeInterface, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TypeInterfaceProtocol`
    /// `GTypeInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeInterfaceProtocol`
    public init<T: TypeInterfaceProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTypeInterface, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GTypeInterface`.
    deinit {
        // no reference counting for GTypeInterface, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeInterface, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeInterface, cannot ref(cast(_ptr))
    }


    /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    public static func peek(instanceClass instance_class: TypeClassProtocol, ifaceType iface_type: GType) -> TypeInterface! {
        let rv: UnsafeMutableRawPointer! = cast(g_type_interface_peek(cast(instance_class.ptr), iface_type))
        return rv.map { TypeInterface(cast($0)) }
    }

}

// MARK: no TypeInterface properties

// MARK: no TypeInterface signals


// MARK: TypeInterface Record: TypeInterfaceProtocol extension (methods and fields)
public extension TypeInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInterface` instance.
    var _ptr: UnsafeMutablePointer<GTypeInterface> { return ptr.assumingMemoryBound(to: GTypeInterface.self) }

    /// Returns the corresponding `GTypeInterface` structure of the parent type
    /// of the instance type to which `g_iface` belongs. This is useful when
    /// deriving the implementation of an interface from the parent type and
    /// then possibly overriding some methods.
    func peekParent() -> UnsafeMutableRawPointer! {
        let rv: UnsafeMutableRawPointer! = cast(g_type_interface_peek_parent(cast(_ptr)))
        return cast(rv)
    }

    /// Decrements the reference count for the type corresponding to the
    /// interface default vtable `g_iface`. If the type is dynamic, then
    /// when no one is using the interface and all references have
    /// been released, the finalize function for the interface's default
    /// vtable (the `class_finalize` member of `GTypeInfo`) will be called.
    func typeDefaultInterfaceUnref() {
        g_type_default_interface_unref(cast(_ptr))
    
    }

    // var gType is unavailable because g_type is private

    // var gInstanceType is unavailable because g_instance_type is private

}



