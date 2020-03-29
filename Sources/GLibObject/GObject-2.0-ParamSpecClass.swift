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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParamSpecClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ParamSpecClassProtocol`
    /// `GParamSpecClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParamSpecClassProtocol`
    public init<T: ParamSpecClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GParamSpecClass`.
    deinit {
        // no reference counting for GParamSpecClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParamSpecClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no ParamSpecClass properties

// MARK: - no signals


public extension ParamSpecClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecClass` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecClass> { return ptr.assumingMemoryBound(to: GParamSpecClass.self) }

}



