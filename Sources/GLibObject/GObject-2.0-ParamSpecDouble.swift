import CGLib
import GLib

// MARK: - ParamSpecDouble Class

/// The `ParamSpecDoubleProtocol` protocol exposes the methods and properties of an underlying `GParamSpecDouble` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecDouble`.
/// Alternatively, use `ParamSpecDoubleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for double properties.
public protocol ParamSpecDoubleProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecDouble` instance.
    var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble> { get }
}

/// The `ParamSpecDoubleRef` type acts as a lightweight Swift reference to an underlying `GParamSpecDouble` instance.
/// It exposes methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDoubleRef` only as an `unowned` reference to an existing `GParamSpecDouble` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for double properties.
public struct ParamSpecDoubleRef: ParamSpecDoubleProtocol {
    /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_double_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecDoubleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecDouble>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    init<T: ParamSpecDoubleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecDouble` type acts as a reference-counted owner of an underlying `GParamSpecDouble` instance.
/// It provides the methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDouble` as a strong reference or owner of a `GParamSpecDouble` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for double properties.
open class ParamSpecDouble: ParamSpec, ParamSpecDoubleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecDouble`.
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    /// Will retain `GParamSpecDouble`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecDoubleProtocol`
    public init<T: ParamSpecDoubleProtocol>(paramSpecDouble other: T) {
        super.init(retaining: cast(other.param_spec_double_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecDouble properties

// MARK: - no signals


public extension ParamSpecDoubleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecDouble` instance.
    var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble> { return ptr.assumingMemoryBound(to: GParamSpecDouble.self) }

}



