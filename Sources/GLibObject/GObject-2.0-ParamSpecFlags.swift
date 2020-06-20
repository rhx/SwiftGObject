import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecFlags Class

/// The `ParamSpecFlagsProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFlags` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFlags`.
/// Alternatively, use `ParamSpecFlagsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
public protocol ParamSpecFlagsProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecFlags` instance.
    var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags> { get }
}

/// The `ParamSpecFlagsRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFlags` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlagsRef` only as an `unowned` reference to an existing `GParamSpecFlags` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
public struct ParamSpecFlagsRef: ParamSpecFlagsProtocol {
        /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_flags_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecFlagsRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecFlags>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    init<T: ParamSpecFlagsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecFlags` type acts as a reference-counted owner of an underlying `GParamSpecFlags` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlags` as a strong reference or owner of a `GParamSpecFlags` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
open class ParamSpecFlags: ParamSpec, ParamSpecFlagsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecFlags`.
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    /// Will retain `GParamSpecFlags`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecFlagsProtocol`
    public init<T: ParamSpecFlagsProtocol>(paramSpecFlags other: T) {
        super.init(retaining: cast(other.param_spec_flags_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecFlags properties

// MARK: no ParamSpecFlags signals


// MARK: ParamSpecFlags Class: ParamSpecFlagsProtocol extension (methods and fields)
public extension ParamSpecFlagsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFlags` instance.
    var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags> { return ptr.assumingMemoryBound(to: GParamSpecFlags.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_flags_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// the `GFlagsClass` for the flags
    var flagsClass: UnsafeMutablePointer<GFlagsClass> {
        /// the `GFlagsClass` for the flags
        get {
            let rv: UnsafeMutablePointer<GFlagsClass> = cast(param_spec_flags_ptr.pointee.flags_class)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: Int {
        /// default value for the property specified
        get {
            let rv: Int = cast(param_spec_flags_ptr.pointee.default_value)
            return rv
        }
    }

}



