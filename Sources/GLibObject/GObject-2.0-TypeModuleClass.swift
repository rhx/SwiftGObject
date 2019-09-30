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
    /// Ownership is transferred to the `TypeModuleClass` instance.
    public init(_ op: UnsafeMutablePointer<GTypeModuleClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypeModuleClassProtocol`
    /// `GTypeModuleClass` does not allow reference counting.
    public convenience init<T: TypeModuleClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypeModuleClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeModuleClass`.
    deinit {
        // no reference counting for GTypeModuleClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeModuleClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeModuleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeModuleClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeModuleClass>(opaquePointer))
    }



}

// MARK: - no TypeModuleClass properties

// MARK: - no signals


public extension TypeModuleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeModuleClass> { return ptr.assumingMemoryBound(to: GTypeModuleClass.self) }

}



