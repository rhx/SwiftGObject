import CGLib
import GLib

// MARK: - ParamSpecBoolean Class

/// The `ParamSpecBooleanProtocol` protocol exposes the methods and properties of an underlying `GParamSpecBoolean` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecBoolean`.
/// Alternatively, use `ParamSpecBooleanRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
public protocol ParamSpecBooleanProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecBoolean` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecBoolean` instance.
    var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean> { get }
}

/// The `ParamSpecBooleanRef` type acts as a lightweight Swift reference to an underlying `GParamSpecBoolean` instance.
/// It exposes methods that can operate on this data type through `ParamSpecBooleanProtocol` conformance.
/// Use `ParamSpecBooleanRef` only as an `unowned` reference to an existing `GParamSpecBoolean` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
public struct ParamSpecBooleanRef: ParamSpecBooleanProtocol {
    /// Untyped pointer to the underlying `GParamSpecBoolean` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_boolean_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecBooleanRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecBoolean>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecBooleanProtocol`
    init<T: ParamSpecBooleanProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecBoolean` type acts as a reference-counted owner of an underlying `GParamSpecBoolean` instance.
/// It provides the methods that can operate on this data type through `ParamSpecBooleanProtocol` conformance.
/// Use `ParamSpecBoolean` as a strong reference or owner of a `GParamSpecBoolean` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
open class ParamSpecBoolean: ParamSpec, ParamSpecBooleanProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecBoolean` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecBooleanProtocol`
    /// Will retain `GParamSpecBoolean`.
    public convenience init<T: ParamSpecBooleanProtocol>(_ other: T) {
        self.init(cast(other.param_spec_boolean_ptr))
        g_param_spec_ref(cast(param_spec_boolean_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecBoolean.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecBoolean.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecBoolean.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecBoolean>(opaquePointer))
    }



}

// MARK: - no ParamSpecBoolean properties

// MARK: - no signals


public extension ParamSpecBooleanProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoolean` instance.
    var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean> { return ptr.assumingMemoryBound(to: GParamSpecBoolean.self) }

}



