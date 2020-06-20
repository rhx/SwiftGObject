import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecInt Class

/// The `ParamSpecIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt`.
/// Alternatively, use `ParamSpecIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for integer properties.
public protocol ParamSpecIntProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecInt` instance.
    var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt> { get }
}

/// The `ParamSpecIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecIntRef` only as an `unowned` reference to an existing `GParamSpecInt` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for integer properties.
public struct ParamSpecIntRef: ParamSpecIntProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecIntRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecInt>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    init<T: ParamSpecIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecInt` type acts as a reference-counted owner of an underlying `GParamSpecInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecInt` as a strong reference or owner of a `GParamSpecInt` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for integer properties.
open class ParamSpecInt: ParamSpec, ParamSpecIntProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecInt`.
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    /// Will retain `GParamSpecInt`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecIntProtocol`
    public init<T: ParamSpecIntProtocol>(paramSpecInt other: T) {
        super.init(retaining: cast(other.param_spec_int_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecInt properties

// MARK: no ParamSpecInt signals


// MARK: ParamSpecInt Class: ParamSpecIntProtocol extension (methods and fields)
public extension ParamSpecIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt` instance.
    var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt> { return ptr.assumingMemoryBound(to: GParamSpecInt.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_int_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// minimum value for the property specified
    var minimum: Int {
        /// minimum value for the property specified
        get {
            let rv: Int = cast(param_spec_int_ptr.pointee.minimum)
            return rv
        }
    }

    /// maximum value for the property specified
    var maximum: Int {
        /// maximum value for the property specified
        get {
            let rv: Int = cast(param_spec_int_ptr.pointee.maximum)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: Int {
        /// default value for the property specified
        get {
            let rv: Int = cast(param_spec_int_ptr.pointee.default_value)
            return rv
        }
    }

}



