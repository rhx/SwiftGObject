import CGLib
import GLib
import GObjectCHelpers

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecVariant` instance.
    var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecVariantRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecVariant>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecVariant>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    @inlinable init<T: ParamSpecVariantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
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
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecVariant>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecVariant>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecVariant>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecVariant`.
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    /// Will retain `GParamSpecVariant`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecVariantProtocol`
    @inlinable public init<T: ParamSpecVariantProtocol>(paramSpecVariant other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecVariant properties

// MARK: no ParamSpecVariant signals


// MARK: ParamSpecVariant Class: ParamSpecVariantProtocol extension (methods and fields)
public extension ParamSpecVariantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecVariant` instance.
    @inlinable var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant>! { return ptr?.assumingMemoryBound(to: GParamSpecVariant.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_variant_ptr.pointee.parent_instance
            return rv
        }
    }

    /// a `GVariantType`, or `nil`
    @inlinable var type: VariantTypeRef! {
        /// a `GVariantType`, or `nil`
        get {
            let rv = VariantTypeRef(gconstpointer: gconstpointer(param_spec_variant_ptr.pointee.type))
            return rv
        }
    }

    /// a `GVariant`, or `nil`
    @inlinable var defaultValue: VariantRef! {
        /// a `GVariant`, or `nil`
        get {
            let rv = VariantRef(gconstpointer: gconstpointer(param_spec_variant_ptr.pointee.default_value))
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



