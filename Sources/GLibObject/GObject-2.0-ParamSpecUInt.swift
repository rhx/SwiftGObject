import CGLib
import GLib

// MARK: - ParamSpecUInt Class

/// The `ParamSpecUIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUInt`.
/// Alternatively, use `ParamSpecUIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
public protocol ParamSpecUIntProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecUInt` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecUInt` instance.
    var param_spec_uint_ptr: UnsafeMutablePointer<GParamSpecUInt> { get }
}

/// The `ParamSpecUIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUIntProtocol` conformance.
/// Use `ParamSpecUIntRef` only as an `unowned` reference to an existing `GParamSpecUInt` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
public struct ParamSpecUIntRef: ParamSpecUIntProtocol {
    /// Untyped pointer to the underlying `GParamSpecUInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uint_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecUIntRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecUInt>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecUIntProtocol`
    init<T: ParamSpecUIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecUInt` type acts as a reference-counted owner of an underlying `GParamSpecUInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUIntProtocol` conformance.
/// Use `ParamSpecUInt` as a strong reference or owner of a `GParamSpecUInt` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
open class ParamSpecUInt: ParamSpec, ParamSpecUIntProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecUInt>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUInt`.
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecUInt>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecUIntProtocol`
    /// Will retain `GParamSpecUInt`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUIntProtocol`
    public init<T: ParamSpecUIntProtocol>(paramSpecUInt other: T) {
        super.init(retaining: cast(other.param_spec_uint_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecUInt properties

// MARK: - no signals


public extension ParamSpecUIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUInt` instance.
    var param_spec_uint_ptr: UnsafeMutablePointer<GParamSpecUInt> { return ptr.assumingMemoryBound(to: GParamSpecUInt.self) }

}



