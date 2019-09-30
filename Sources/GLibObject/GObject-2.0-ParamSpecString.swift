import CGLib
import GLib

// MARK: - ParamSpecString Class

/// The `ParamSpecStringProtocol` protocol exposes the methods and properties of an underlying `GParamSpecString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecString`.
/// Alternatively, use `ParamSpecStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
public protocol ParamSpecStringProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecString` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecString` instance.
    var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString> { get }
}

/// The `ParamSpecStringRef` type acts as a lightweight Swift reference to an underlying `GParamSpecString` instance.
/// It exposes methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecStringRef` only as an `unowned` reference to an existing `GParamSpecString` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
public struct ParamSpecStringRef: ParamSpecStringProtocol {
    /// Untyped pointer to the underlying `GParamSpecString` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecStringRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecString>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    init<T: ParamSpecStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecString` type acts as a reference-counted owner of an underlying `GParamSpecString` instance.
/// It provides the methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecString` as a strong reference or owner of a `GParamSpecString` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
open class ParamSpecString: ParamSpec, ParamSpecStringProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecString` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecStringProtocol`
    /// Will retain `GParamSpecString`.
    public convenience init<T: ParamSpecStringProtocol>(_ other: T) {
        self.init(cast(other.param_spec_string_ptr))
        g_param_spec_ref(cast(param_spec_string_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecString.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecString.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecString.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecString>(opaquePointer))
    }



}

// MARK: - no ParamSpecString properties

// MARK: - no signals


public extension ParamSpecStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecString` instance.
    var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString> { return ptr.assumingMemoryBound(to: GParamSpecString.self) }

}



