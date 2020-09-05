import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecOverride Class

/// The `ParamSpecOverrideProtocol` protocol exposes the methods and properties of an underlying `GParamSpecOverride` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecOverride`.
/// Alternatively, use `ParamSpecOverrideRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This is a type of `GParamSpec` type that simply redirects operations to
/// another paramspec.  All operations other than getting or
/// setting the value are redirected, including accessing the nick and
/// blurb, validating a value, and so forth. See
/// `g_param_spec_get_redirect_target()` for retrieving the overidden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
public protocol ParamSpecOverrideProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecOverride` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecOverride` instance.
    var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride>! { get }

}

/// The `ParamSpecOverrideRef` type acts as a lightweight Swift reference to an underlying `GParamSpecOverride` instance.
/// It exposes methods that can operate on this data type through `ParamSpecOverrideProtocol` conformance.
/// Use `ParamSpecOverrideRef` only as an `unowned` reference to an existing `GParamSpecOverride` instance.
///
/// This is a type of `GParamSpec` type that simply redirects operations to
/// another paramspec.  All operations other than getting or
/// setting the value are redirected, including accessing the nick and
/// blurb, validating a value, and so forth. See
/// `g_param_spec_get_redirect_target()` for retrieving the overidden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
public struct ParamSpecOverrideRef: ParamSpecOverrideProtocol {
        /// Untyped pointer to the underlying `GParamSpecOverride` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_override_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecOverrideRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecOverride>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecOverride>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    @inlinable init<T: ParamSpecOverrideProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecOverride` type acts as a reference-counted owner of an underlying `GParamSpecOverride` instance.
/// It provides the methods that can operate on this data type through `ParamSpecOverrideProtocol` conformance.
/// Use `ParamSpecOverride` as a strong reference or owner of a `GParamSpecOverride` instance.
///
/// This is a type of `GParamSpec` type that simply redirects operations to
/// another paramspec.  All operations other than getting or
/// setting the value are redirected, including accessing the nick and
/// blurb, validating a value, and so forth. See
/// `g_param_spec_get_redirect_target()` for retrieving the overidden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
open class ParamSpecOverride: ParamSpec, ParamSpecOverrideProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecOverride>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecOverride>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecOverride>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecOverride`.
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    /// Will retain `GParamSpecOverride`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecOverrideProtocol`
    @inlinable public init<T: ParamSpecOverrideProtocol>(paramSpecOverride other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecOverride properties

// MARK: no ParamSpecOverride signals


// MARK: ParamSpecOverride Class: ParamSpecOverrideProtocol extension (methods and fields)
public extension ParamSpecOverrideProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecOverride` instance.
    @inlinable var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride>! { return ptr?.assumingMemoryBound(to: GParamSpecOverride.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var overridden is unavailable because overridden is private

}



