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
    /// Ownership is transferred to the `TypePluginClass` instance.
    public init(_ op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypePluginClassProtocol`
    /// `GTypePluginClass` does not allow reference counting.
    public convenience init<T: TypePluginClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypePluginClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypePluginClass`.
    deinit {
        // no reference counting for GTypePluginClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypePluginClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypePluginClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypePluginClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypePluginClass>(opaquePointer))
    }



}

// MARK: - no TypePluginClass properties

// MARK: - no signals


public extension TypePluginClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypePluginClass` instance.
    var _ptr: UnsafeMutablePointer<GTypePluginClass> { return ptr.assumingMemoryBound(to: GTypePluginClass.self) }

}



