import CGLib
import GLib

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypePluginClass` instance.
    var _ptr: UnsafeMutablePointer<GTypePluginClass> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension TypePluginClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypePluginClassProtocol`
    init<T: TypePluginClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypePluginClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TypePluginClassProtocol`
    /// `GTypePluginClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypePluginClassProtocol`
    public init<T: TypePluginClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypePluginClass`.
    deinit {
        // no reference counting for GTypePluginClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no TypePluginClass properties

// MARK: - no signals


public extension TypePluginClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypePluginClass` instance.
    var _ptr: UnsafeMutablePointer<GTypePluginClass> { return ptr.assumingMemoryBound(to: GTypePluginClass.self) }

}



