import CGLib
import GLib

// MARK: - ParamSpecULong Class

/// The `ParamSpecULongProtocol` protocol exposes the methods and properties of an underlying `GParamSpecULong` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecULong`.
/// Alternatively, use `ParamSpecULongRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
public protocol ParamSpecULongProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecULong` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecULong` instance.
    var param_spec_ulong_ptr: UnsafeMutablePointer<GParamSpecULong> { get }
}

/// The `ParamSpecULongRef` type acts as a lightweight Swift reference to an underlying `GParamSpecULong` instance.
/// It exposes methods that can operate on this data type through `ParamSpecULongProtocol` conformance.
/// Use `ParamSpecULongRef` only as an `unowned` reference to an existing `GParamSpecULong` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
public struct ParamSpecULongRef: ParamSpecULongProtocol {
    /// Untyped pointer to the underlying `GParamSpecULong` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ulong_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecULongRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecULong>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecULongProtocol`
    init<T: ParamSpecULongProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecULong` type acts as a reference-counted owner of an underlying `GParamSpecULong` instance.
/// It provides the methods that can operate on this data type through `ParamSpecULongProtocol` conformance.
/// Use `ParamSpecULong` as a strong reference or owner of a `GParamSpecULong` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
open class ParamSpecULong: ParamSpec, ParamSpecULongProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecULong>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecULong`.
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecULong>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecULongProtocol`
    /// Will retain `GParamSpecULong`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecULongProtocol`
    public init<T: ParamSpecULongProtocol>(paramSpecULong other: T) {
        super.init(retaining: cast(other.param_spec_ulong_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecULong properties

// MARK: - no signals


public extension ParamSpecULongProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecULong` instance.
    var param_spec_ulong_ptr: UnsafeMutablePointer<GParamSpecULong> { return ptr.assumingMemoryBound(to: GParamSpecULong.self) }

}



