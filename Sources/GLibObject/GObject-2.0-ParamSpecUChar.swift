import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecUChar Class

/// The `ParamSpecUCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUChar`.
/// Alternatively, use `ParamSpecUCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
public protocol ParamSpecUCharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecUChar` instance.
    var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar> { get }
}

/// The `ParamSpecUCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUCharRef` only as an `unowned` reference to an existing `GParamSpecUChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
public struct ParamSpecUCharRef: ParamSpecUCharProtocol {
        /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uchar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecUCharRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecUChar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    init<T: ParamSpecUCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecUChar` type acts as a reference-counted owner of an underlying `GParamSpecUChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUChar` as a strong reference or owner of a `GParamSpecUChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
open class ParamSpecUChar: ParamSpec, ParamSpecUCharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUChar`.
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    /// Will retain `GParamSpecUChar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUCharProtocol`
    public init<T: ParamSpecUCharProtocol>(paramSpecUChar other: T) {
        super.init(retaining: cast(other.param_spec_uchar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUChar properties

// MARK: no ParamSpecUChar signals


// MARK: ParamSpecUChar Class: ParamSpecUCharProtocol extension (methods and fields)
public extension ParamSpecUCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUChar` instance.
    var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar> { return ptr.assumingMemoryBound(to: GParamSpecUChar.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_uchar_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// minimum value for the property specified
    var minimum: UInt8 {
        /// minimum value for the property specified
        get {
            let rv: UInt8 = cast(param_spec_uchar_ptr.pointee.minimum)
            return rv
        }
    }

    /// maximum value for the property specified
    var maximum: UInt8 {
        /// maximum value for the property specified
        get {
            let rv: UInt8 = cast(param_spec_uchar_ptr.pointee.maximum)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: UInt8 {
        /// default value for the property specified
        get {
            let rv: UInt8 = cast(param_spec_uchar_ptr.pointee.default_value)
            return rv
        }
    }

}



