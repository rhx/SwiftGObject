import CGLib
import GLib

// MARK: - ParamSpecUChar Class

/// The `ParamSpecUCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUChar`.
/// Alternatively, use `ParamSpecUCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
public protocol ParamSpecUCharProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecUChar` instance.
    var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar> { get }
}

/// The `ParamSpecUCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUCharRef` only as an `unowned` reference to an existing `GParamSpecUChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
public struct ParamSpecUCharRef: ParamSpecUCharProtocol {
    /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uchar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecUCharRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecUChar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    init<T: ParamSpecUCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecUChar` type acts as a reference-counted owner of an underlying `GParamSpecUChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUChar` as a strong reference or owner of a `GParamSpecUChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
open class ParamSpecUChar: ParamSpec, ParamSpecUCharProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecUChar` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecUCharProtocol`
    /// Will retain `GParamSpecUChar`.
    public convenience init<T: ParamSpecUCharProtocol>(_ other: T) {
        self.init(cast(other.param_spec_uchar_ptr))
        g_param_spec_ref(cast(param_spec_uchar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecUChar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecUChar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecUChar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecUChar>(opaquePointer))
    }



}

// MARK: - no ParamSpecUChar properties

// MARK: - no signals


public extension ParamSpecUCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUChar` instance.
    var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar> { return ptr.assumingMemoryBound(to: GParamSpecUChar.self) }

}



