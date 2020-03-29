import CGLib
import GLib

// MARK: - ParamSpecVariant Class

/// The `ParamSpecVariantProtocol` protocol exposes the methods and properties of an underlying `GParamSpecVariant` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecVariant`.
/// Alternatively, use `ParamSpecVariantRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
public protocol ParamSpecVariantProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecVariant` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecVariant` instance.
    var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant> { get }
}

/// The `ParamSpecVariantRef` type acts as a lightweight Swift reference to an underlying `GParamSpecVariant` instance.
/// It exposes methods that can operate on this data type through `ParamSpecVariantProtocol` conformance.
/// Use `ParamSpecVariantRef` only as an `unowned` reference to an existing `GParamSpecVariant` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
public struct ParamSpecVariantRef: ParamSpecVariantProtocol {
    /// Untyped pointer to the underlying `GParamSpecVariant` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecVariantRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    init<T: ParamSpecVariantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecVariant` type acts as a reference-counted owner of an underlying `GParamSpecVariant` instance.
/// It provides the methods that can operate on this data type through `ParamSpecVariantProtocol` conformance.
/// Use `ParamSpecVariant` as a strong reference or owner of a `GParamSpecVariant` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
open class ParamSpecVariant: ParamSpec, ParamSpecVariantProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecVariant`.
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    /// Will retain `GParamSpecVariant`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecVariantProtocol`
    public init<T: ParamSpecVariantProtocol>(paramSpecVariant other: T) {
        super.init(retaining: cast(other.param_spec_variant_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecVariant properties

// MARK: - no signals


public extension ParamSpecVariantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecVariant` instance.
    var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant> { return ptr.assumingMemoryBound(to: GParamSpecVariant.self) }

}



