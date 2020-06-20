import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecInt64 Class

/// The `ParamSpecInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt64`.
/// Alternatively, use `ParamSpecInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
public protocol ParamSpecInt64Protocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecInt64` instance.
    var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64> { get }
}

/// The `ParamSpecInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64Ref` only as an `unowned` reference to an existing `GParamSpecInt64` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
public struct ParamSpecInt64Ref: ParamSpecInt64Protocol {
        /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecInt64>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    init<T: ParamSpecInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecInt64` type acts as a reference-counted owner of an underlying `GParamSpecInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64` as a strong reference or owner of a `GParamSpecInt64` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
open class ParamSpecInt64: ParamSpec, ParamSpecInt64Protocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecInt64`.
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    /// Will retain `GParamSpecInt64`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecInt64Protocol`
    public init<T: ParamSpecInt64Protocol>(paramSpecInt64 other: T) {
        super.init(retaining: cast(other.param_spec_int64_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecInt64 properties

// MARK: no ParamSpecInt64 signals


// MARK: ParamSpecInt64 Class: ParamSpecInt64Protocol extension (methods and fields)
public extension ParamSpecInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt64` instance.
    var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64> { return ptr.assumingMemoryBound(to: GParamSpecInt64.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_int64_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// minimum value for the property specified
    var minimum: Int64 {
        /// minimum value for the property specified
        get {
            let rv: Int64 = cast(param_spec_int64_ptr.pointee.minimum)
            return rv
        }
    }

    /// maximum value for the property specified
    var maximum: Int64 {
        /// maximum value for the property specified
        get {
            let rv: Int64 = cast(param_spec_int64_ptr.pointee.maximum)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: Int64 {
        /// default value for the property specified
        get {
            let rv: Int64 = cast(param_spec_int64_ptr.pointee.default_value)
            return rv
        }
    }

}



