import CGLib
import GLib

// MARK: - ParamSpecClass Record

/// The `ParamSpecClassProtocol` protocol exposes the methods and properties of an underlying `GParamSpecClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecClass`.
/// Alternatively, use `ParamSpecClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class structure for the GParamSpec type.
/// Normally, GParamSpec classes are filled by
/// `g_param_type_register_static()`.
public protocol ParamSpecClassProtocol {
    /// Untyped pointer to the underlying `GParamSpecClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecClass` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecClass> { get }
}

/// The `ParamSpecClassRef` type acts as a lightweight Swift reference to an underlying `GParamSpecClass` instance.
/// It exposes methods that can operate on this data type through `ParamSpecClassProtocol` conformance.
/// Use `ParamSpecClassRef` only as an `unowned` reference to an existing `GParamSpecClass` instance.
///
/// The class structure for the GParamSpec type.
/// Normally, GParamSpec classes are filled by
/// `g_param_type_register_static()`.
public struct ParamSpecClassRef: ParamSpecClassProtocol {
    /// Untyped pointer to the underlying `GParamSpecClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecClassProtocol`
    init<T: ParamSpecClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecClass` type acts as an owner of an underlying `GParamSpecClass` instance.
/// It provides the methods that can operate on this data type through `ParamSpecClassProtocol` conformance.
/// Use `ParamSpecClass` as a strong reference or owner of a `GParamSpecClass` instance.
///
/// The class structure for the GParamSpec type.
/// Normally, GParamSpec classes are filled by
/// `g_param_type_register_static()`.
open class ParamSpecClass: ParamSpecClassProtocol {
    /// Untyped pointer to the underlying `GParamSpecClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecClass` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecClassProtocol`
    /// `GParamSpecClass` does not allow reference counting.
    public convenience init<T: ParamSpecClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GParamSpecClass`.
    deinit {
        // no reference counting for GParamSpecClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecClass>(opaquePointer))
    }



}

// MARK: - no ParamSpecClass properties

// MARK: - no signals


public extension ParamSpecClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecClass` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecClass> { return ptr.assumingMemoryBound(to: GParamSpecClass.self) }

}



