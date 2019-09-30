import CGLib
import GLib

// MARK: - ParamSpecFloat Class

/// The `ParamSpecFloatProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFloat`.
/// Alternatively, use `ParamSpecFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for float properties.
public protocol ParamSpecFloatProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecFloat` instance.
    var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat> { get }
}

/// The `ParamSpecFloatRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFloat` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloatRef` only as an `unowned` reference to an existing `GParamSpecFloat` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for float properties.
public struct ParamSpecFloatRef: ParamSpecFloatProtocol {
    /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_float_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecFloatRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecFloat>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    init<T: ParamSpecFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecFloat` type acts as a reference-counted owner of an underlying `GParamSpecFloat` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloat` as a strong reference or owner of a `GParamSpecFloat` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for float properties.
open class ParamSpecFloat: ParamSpec, ParamSpecFloatProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecFloat` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecFloatProtocol`
    /// Will retain `GParamSpecFloat`.
    public convenience init<T: ParamSpecFloatProtocol>(_ other: T) {
        self.init(cast(other.param_spec_float_ptr))
        g_param_spec_ref(cast(param_spec_float_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecFloat.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecFloat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecFloat.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecFloat>(opaquePointer))
    }



}

// MARK: - no ParamSpecFloat properties

// MARK: - no signals


public extension ParamSpecFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFloat` instance.
    var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat> { return ptr.assumingMemoryBound(to: GParamSpecFloat.self) }

}



