import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecFloat Class

/// The `ParamSpecFloatProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFloat`.
/// Alternatively, use `ParamSpecFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for float properties.
public protocol ParamSpecFloatProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecFloat` instance.
    var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat> { get }
}

/// The `ParamSpecFloatRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFloat` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloatRef` only as an `unowned` reference to an existing `GParamSpecFloat` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for float properties.
public struct ParamSpecFloatRef: ParamSpecFloatProtocol {
        /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_float_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecFloatRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecFloat>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    init<T: ParamSpecFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecFloat` type acts as a reference-counted owner of an underlying `GParamSpecFloat` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloat` as a strong reference or owner of a `GParamSpecFloat` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for float properties.
open class ParamSpecFloat: ParamSpec, ParamSpecFloatProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecFloat`.
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    /// Will retain `GParamSpecFloat`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecFloatProtocol`
    public init<T: ParamSpecFloatProtocol>(paramSpecFloat other: T) {
        super.init(retaining: cast(other.param_spec_float_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecFloat properties

// MARK: no ParamSpecFloat signals


// MARK: ParamSpecFloat Class: ParamSpecFloatProtocol extension (methods and fields)
public extension ParamSpecFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFloat` instance.
    var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat> { return ptr.assumingMemoryBound(to: GParamSpecFloat.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_float_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// minimum value for the property specified
    var minimum: Float {
        /// minimum value for the property specified
        get {
            let rv: Float = cast(param_spec_float_ptr.pointee.minimum)
            return rv
        }
    }

    /// maximum value for the property specified
    var maximum: Float {
        /// maximum value for the property specified
        get {
            let rv: Float = cast(param_spec_float_ptr.pointee.maximum)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: Float {
        /// default value for the property specified
        get {
            let rv: Float = cast(param_spec_float_ptr.pointee.default_value)
            return rv
        }
    }

    /// values closer than `epsilon` will be considered identical
    ///  by `g_param_values_cmp()`; the default value is 1e-30.
    var epsilon: Float {
        /// values closer than `epsilon` will be considered identical
        ///  by `g_param_values_cmp()`; the default value is 1e-30.
        get {
            let rv: Float = cast(param_spec_float_ptr.pointee.epsilon)
            return rv
        }
    }

}



