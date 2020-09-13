import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypePluginClass Record

/// The `TypePluginClassProtocol` protocol exposes the methods and properties of an underlying `GTypePluginClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypePluginClass`.
/// Alternatively, use `TypePluginClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
public protocol TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypePluginClass` instance.
    var _ptr: UnsafeMutablePointer<GTypePluginClass>! { get }

}

/// The `TypePluginClassRef` type acts as a lightweight Swift reference to an underlying `GTypePluginClass` instance.
/// It exposes methods that can operate on this data type through `TypePluginClassProtocol` conformance.
/// Use `TypePluginClassRef` only as an `unowned` reference to an existing `GTypePluginClass` instance.
///
/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
public struct TypePluginClassRef: TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypePluginClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypePluginClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypePluginClass>?) {
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

    /// Reference intialiser for a related type that implements `TypePluginClassProtocol`
    @inlinable init<T: TypePluginClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypePluginClass` type acts as an owner of an underlying `GTypePluginClass` instance.
/// It provides the methods that can operate on this data type through `TypePluginClassProtocol` conformance.
/// Use `TypePluginClass` as a strong reference or owner of a `GTypePluginClass` instance.
///
/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
open class TypePluginClass: TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypePluginClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypePluginClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypePluginClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypePluginClassProtocol`
    /// `GTypePluginClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypePluginClassProtocol`
    @inlinable public init<T: TypePluginClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypePluginClass`.
    deinit {
        // no reference counting for GTypePluginClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }



}

// MARK: no TypePluginClass properties

// MARK: no TypePluginClass signals


// MARK: TypePluginClass Record: TypePluginClassProtocol extension (methods and fields)
public extension TypePluginClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypePluginClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypePluginClass>! { return ptr?.assumingMemoryBound(to: GTypePluginClass.self) }


    // var baseIface is unavailable because base_iface is private

    /// Increases the use count of the plugin.
    @inlinable var usePlugin: GTypePluginUse! {
        /// Increases the use count of the plugin.
        get {
            let rv = _ptr.pointee.use_plugin
            return rv
        }
        /// Increases the use count of the plugin.
         set {
            _ptr.pointee.use_plugin = newValue
        }
    }

    /// Decreases the use count of the plugin.
    @inlinable var unusePlugin: GTypePluginUnuse! {
        /// Decreases the use count of the plugin.
        get {
            let rv = _ptr.pointee.unuse_plugin
            return rv
        }
        /// Decreases the use count of the plugin.
         set {
            _ptr.pointee.unuse_plugin = newValue
        }
    }

    /// Fills in the `GTypeInfo` and
    ///  `GTypeValueTable` structs for the type. The structs are initialized
    ///  with ``memset(s, 0, sizeof (s)`)` before calling this function.
    @inlinable var completeTypeInfo: GTypePluginCompleteTypeInfo! {
        /// Fills in the `GTypeInfo` and
        ///  `GTypeValueTable` structs for the type. The structs are initialized
        ///  with ``memset(s, 0, sizeof (s)`)` before calling this function.
        get {
            let rv = _ptr.pointee.complete_type_info
            return rv
        }
        /// Fills in the `GTypeInfo` and
        ///  `GTypeValueTable` structs for the type. The structs are initialized
        ///  with ``memset(s, 0, sizeof (s)`)` before calling this function.
         set {
            _ptr.pointee.complete_type_info = newValue
        }
    }

    /// Fills in missing parts of the `GInterfaceInfo`
    ///  for the interface. The structs is initialized with
    ///  ``memset(s, 0, sizeof (s)`)` before calling this function.
    @inlinable var completeInterfaceInfo: GTypePluginCompleteInterfaceInfo! {
        /// Fills in missing parts of the `GInterfaceInfo`
        ///  for the interface. The structs is initialized with
        ///  ``memset(s, 0, sizeof (s)`)` before calling this function.
        get {
            let rv = _ptr.pointee.complete_interface_info
            return rv
        }
        /// Fills in missing parts of the `GInterfaceInfo`
        ///  for the interface. The structs is initialized with
        ///  ``memset(s, 0, sizeof (s)`)` before calling this function.
         set {
            _ptr.pointee.complete_interface_info = newValue
        }
    }

}



