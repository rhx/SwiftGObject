import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecGType Class

/// The `ParamSpecGTypeProtocol` protocol exposes the methods and properties of an underlying `GParamSpecGType` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecGType`.
/// Alternatively, use `ParamSpecGTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
public protocol ParamSpecGTypeProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecGType` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecGType` instance.
    var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType> { get }
}

/// The `ParamSpecGTypeRef` type acts as a lightweight Swift reference to an underlying `GParamSpecGType` instance.
/// It exposes methods that can operate on this data type through `ParamSpecGTypeProtocol` conformance.
/// Use `ParamSpecGTypeRef` only as an `unowned` reference to an existing `GParamSpecGType` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
public struct ParamSpecGTypeRef: ParamSpecGTypeProtocol {
        /// Untyped pointer to the underlying `GParamSpecGType` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_gtype_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecGTypeRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecGType>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecGTypeProtocol`
    init<T: ParamSpecGTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecGType` type acts as a reference-counted owner of an underlying `GParamSpecGType` instance.
/// It provides the methods that can operate on this data type through `ParamSpecGTypeProtocol` conformance.
/// Use `ParamSpecGType` as a strong reference or owner of a `GParamSpecGType` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
open class ParamSpecGType: ParamSpec, ParamSpecGTypeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecGType`.
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecGTypeProtocol`
    /// Will retain `GParamSpecGType`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecGTypeProtocol`
    public init<T: ParamSpecGTypeProtocol>(paramSpecGType other: T) {
        super.init(retaining: cast(other.param_spec_gtype_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecGType properties

// MARK: no ParamSpecGType signals


// MARK: ParamSpecGType Class: ParamSpecGTypeProtocol extension (methods and fields)
public extension ParamSpecGTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecGType` instance.
    var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType> { return ptr.assumingMemoryBound(to: GParamSpecGType.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_gtype_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// a `GType` whose subtypes can occur as values
    var isAType: GType {
        /// a `GType` whose subtypes can occur as values
        get {
            let rv: GType = cast(param_spec_gtype_ptr.pointee.is_a_type)
            return rv
        }
    }

}



