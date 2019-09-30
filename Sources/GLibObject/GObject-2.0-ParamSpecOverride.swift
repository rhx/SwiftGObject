import CGLib
import GLib

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
/// g_param_spec_get_redirect_target() for retrieving the overidden
/// property. `GParamSpecOverride` is used in implementing
/// g_object_class_override_property(), and will not be directly useful
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
/// g_param_spec_get_redirect_target() for retrieving the overidden
/// property. `GParamSpecOverride` is used in implementing
/// g_object_class_override_property(), and will not be directly useful
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
/// g_param_spec_get_redirect_target() for retrieving the overidden
/// property. `GParamSpecOverride` is used in implementing
/// g_object_class_override_property(), and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
open class ParamSpecOverride: ParamSpec, ParamSpecOverrideProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecOverride` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecOverrideProtocol`
    /// Will retain `GParamSpecOverride`.
    public convenience init<T: ParamSpecOverrideProtocol>(_ other: T) {
        self.init(cast(other.param_spec_override_ptr))
        g_param_spec_ref(cast(param_spec_override_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecOverride.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecOverride.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecOverride.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecOverride>(opaquePointer))
    }



}

// MARK: - no ParamSpecOverride properties

// MARK: - no signals


public extension ParamSpecOverrideProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecOverride` instance.
    var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride> { return ptr.assumingMemoryBound(to: GParamSpecOverride.self) }

}



