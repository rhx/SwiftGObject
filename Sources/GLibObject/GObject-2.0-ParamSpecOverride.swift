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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecOverride` instance.
    var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecOverrideRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    init<T: ParamSpecOverrideProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public init(_ op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecOverride`.
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    /// Will retain `GParamSpecOverride`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecOverrideProtocol`
    public init<T: ParamSpecOverrideProtocol>(paramSpecOverride other: T) {
        super.init(retaining: cast(other.param_spec_override_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecOverride properties

// MARK: no ParamSpecOverride signals


// MARK: ParamSpecOverride Class: ParamSpecOverrideProtocol extension (methods and fields)
public extension ParamSpecOverrideProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecOverride` instance.
    var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride> { return ptr.assumingMemoryBound(to: GParamSpecOverride.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var overridden is unavailable because overridden is private

}



