import CGLib
import GLib

// MARK: - ParamSpecInt64 Class

/// The `ParamSpecInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt64`.
/// Alternatively, use `ParamSpecInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
public protocol ParamSpecInt64Protocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecInt64` instance.
    var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64> { get }
}

/// The `ParamSpecInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64Ref` only as an `unowned` reference to an existing `GParamSpecInt64` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
public struct ParamSpecInt64Ref: ParamSpecInt64Protocol {
    /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecInt64>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    init<T: ParamSpecInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecInt64` type acts as a reference-counted owner of an underlying `GParamSpecInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64` as a strong reference or owner of a `GParamSpecInt64` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
open class ParamSpecInt64: ParamSpec, ParamSpecInt64Protocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecInt64` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecInt64Protocol`
    /// Will retain `GParamSpecInt64`.
    public convenience init<T: ParamSpecInt64Protocol>(_ other: T) {
        self.init(cast(other.param_spec_int64_ptr))
        g_param_spec_ref(cast(param_spec_int64_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecInt64.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecInt64.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecInt64.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecInt64>(opaquePointer))
    }



}

// MARK: - no ParamSpecInt64 properties

// MARK: - no signals


public extension ParamSpecInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt64` instance.
    var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64> { return ptr.assumingMemoryBound(to: GParamSpecInt64.self) }

}



