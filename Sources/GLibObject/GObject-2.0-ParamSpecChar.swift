import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecChar Class

/// The `ParamSpecCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecChar`.
/// Alternatively, use `ParamSpecCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for character properties.
public protocol ParamSpecCharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecChar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecChar` instance.
    var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar> { get }
}

/// The `ParamSpecCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecCharRef` only as an `unowned` reference to an existing `GParamSpecChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for character properties.
public struct ParamSpecCharRef: ParamSpecCharProtocol {
        /// Untyped pointer to the underlying `GParamSpecChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_char_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecCharRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecChar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    init<T: ParamSpecCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecChar` type acts as a reference-counted owner of an underlying `GParamSpecChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecChar` as a strong reference or owner of a `GParamSpecChar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for character properties.
open class ParamSpecChar: ParamSpec, ParamSpecCharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecChar`.
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    /// Will retain `GParamSpecChar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecCharProtocol`
    public init<T: ParamSpecCharProtocol>(paramSpecChar other: T) {
        super.init(retaining: cast(other.param_spec_char_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecChar properties

// MARK: no ParamSpecChar signals


// MARK: ParamSpecChar Class: ParamSpecCharProtocol extension (methods and fields)
public extension ParamSpecCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecChar` instance.
    var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar> { return ptr.assumingMemoryBound(to: GParamSpecChar.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_char_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// minimum value for the property specified
    var minimum: Int8 {
        /// minimum value for the property specified
        get {
            let rv: Int8 = cast(param_spec_char_ptr.pointee.minimum)
            return rv
        }
    }

    /// maximum value for the property specified
    var maximum: Int8 {
        /// maximum value for the property specified
        get {
            let rv: Int8 = cast(param_spec_char_ptr.pointee.maximum)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: Int8 {
        /// default value for the property specified
        get {
            let rv: Int8 = cast(param_spec_char_ptr.pointee.default_value)
            return rv
        }
    }

}



