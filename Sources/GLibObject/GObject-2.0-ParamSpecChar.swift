import CGLib
import GLib

// MARK: - ParamSpecChar Class

/// The `ParamSpecCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecChar`.
/// Alternatively, use `ParamSpecCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for character properties.
public protocol ParamSpecCharProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecChar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecChar` instance.
    var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar> { get }
}

/// The `ParamSpecCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecCharRef` only as an `unowned` reference to an existing `GParamSpecChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for character properties.
public struct ParamSpecCharRef: ParamSpecCharProtocol {
    /// Untyped pointer to the underlying `GParamSpecChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_char_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecCharRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecChar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    init<T: ParamSpecCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecChar` type acts as a reference-counted owner of an underlying `GParamSpecChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecChar` as a strong reference or owner of a `GParamSpecChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for character properties.
open class ParamSpecChar: ParamSpec, ParamSpecCharProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecChar` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecCharProtocol`
    /// Will retain `GParamSpecChar`.
    public convenience init<T: ParamSpecCharProtocol>(_ other: T) {
        self.init(cast(other.param_spec_char_ptr))
        g_param_spec_ref(cast(param_spec_char_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecChar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecChar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecChar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecChar>(opaquePointer))
    }



}

// MARK: - no ParamSpecChar properties

// MARK: - no signals


public extension ParamSpecCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecChar` instance.
    var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar> { return ptr.assumingMemoryBound(to: GParamSpecChar.self) }

}



