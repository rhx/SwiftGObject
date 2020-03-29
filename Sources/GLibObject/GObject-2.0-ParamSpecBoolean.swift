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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecBoolean`.
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecBooleanProtocol`
    /// Will retain `GParamSpecBoolean`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecBooleanProtocol`
    public init<T: ParamSpecBooleanProtocol>(paramSpecBoolean other: T) {
        super.init(retaining: cast(other.param_spec_boolean_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecBoolean properties

// MARK: - no signals


public extension ParamSpecBooleanProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoolean` instance.
    var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean> { return ptr.assumingMemoryBound(to: GParamSpecBoolean.self) }

}



