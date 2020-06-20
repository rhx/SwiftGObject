import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecEnum Class

/// The `ParamSpecEnumProtocol` protocol exposes the methods and properties of an underlying `GParamSpecEnum` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecEnum`.
/// Alternatively, use `ParamSpecEnumRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
public protocol ParamSpecEnumProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecEnum` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecEnum` instance.
    var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum> { get }
}

/// The `ParamSpecEnumRef` type acts as a lightweight Swift reference to an underlying `GParamSpecEnum` instance.
/// It exposes methods that can operate on this data type through `ParamSpecEnumProtocol` conformance.
/// Use `ParamSpecEnumRef` only as an `unowned` reference to an existing `GParamSpecEnum` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
public struct ParamSpecEnumRef: ParamSpecEnumProtocol {
        /// Untyped pointer to the underlying `GParamSpecEnum` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_enum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecEnumRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecEnum>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecEnumProtocol`
    init<T: ParamSpecEnumProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecEnum` type acts as a reference-counted owner of an underlying `GParamSpecEnum` instance.
/// It provides the methods that can operate on this data type through `ParamSpecEnumProtocol` conformance.
/// Use `ParamSpecEnum` as a strong reference or owner of a `GParamSpecEnum` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
open class ParamSpecEnum: ParamSpec, ParamSpecEnumProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecEnum`.
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecEnumProtocol`
    /// Will retain `GParamSpecEnum`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecEnumProtocol`
    public init<T: ParamSpecEnumProtocol>(paramSpecEnum other: T) {
        super.init(retaining: cast(other.param_spec_enum_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecEnum properties

// MARK: no ParamSpecEnum signals


// MARK: ParamSpecEnum Class: ParamSpecEnumProtocol extension (methods and fields)
public extension ParamSpecEnumProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecEnum` instance.
    var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum> { return ptr.assumingMemoryBound(to: GParamSpecEnum.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_enum_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// the `GEnumClass` for the enum
    var enumClass: UnsafeMutablePointer<GEnumClass> {
        /// the `GEnumClass` for the enum
        get {
            let rv: UnsafeMutablePointer<GEnumClass> = cast(param_spec_enum_ptr.pointee.enum_class)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: Int {
        /// default value for the property specified
        get {
            let rv: Int = cast(param_spec_enum_ptr.pointee.default_value)
            return rv
        }
    }

}



