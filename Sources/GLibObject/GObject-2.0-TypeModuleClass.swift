import CGLib
import GLib

// MARK: - TypeModuleClass Record

/// The `TypeModuleClassProtocol` protocol exposes the methods and properties of an underlying `GTypeModuleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeModuleClass`.
/// Alternatively, use `TypeModuleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
public protocol TypeModuleClassProtocol {
    /// Untyped pointer to the underlying `GTypeModuleClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeModuleClass> { get }
}

/// The `TypeModuleClassRef` type acts as a lightweight Swift reference to an underlying `GTypeModuleClass` instance.
/// It exposes methods that can operate on this data type through `TypeModuleClassProtocol` conformance.
/// Use `TypeModuleClassRef` only as an `unowned` reference to an existing `GTypeModuleClass` instance.
///
/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
public struct TypeModuleClassRef: TypeModuleClassProtocol {
    /// Untyped pointer to the underlying `GTypeModuleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeModuleClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeModuleClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeModuleClassProtocol`
    init<T: TypeModuleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeModuleClass` type acts as an owner of an underlying `GTypeModuleClass` instance.
/// It provides the methods that can operate on this data type through `TypeModuleClassProtocol` conformance.
/// Use `TypeModuleClass` as a strong reference or owner of a `GTypeModuleClass` instance.
///
/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
open class TypeModuleClass: TypeModuleClassProtocol {
    /// Untyped pointer to the underlying `GTypeModuleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModuleClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTypeModuleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeModuleClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeModuleClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTypeModuleClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TypeModuleClassProtocol`
    /// `GTypeModuleClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeModuleClassProtocol`
    public init<T: TypeModuleClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeModuleClass`.
    deinit {
        // no reference counting for GTypeModuleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no TypeModuleClass properties

// MARK: - no signals


public extension TypeModuleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeModuleClass> { return ptr.assumingMemoryBound(to: GTypeModuleClass.self) }

}



