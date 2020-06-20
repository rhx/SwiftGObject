import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecUnichar Class

/// The `ParamSpecUnicharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUnichar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUnichar`.
/// Alternatively, use `ParamSpecUnicharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
public protocol ParamSpecUnicharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUnichar` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecUnichar` instance.
    var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar> { get }
}

/// The `ParamSpecUnicharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUnichar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUnicharProtocol` conformance.
/// Use `ParamSpecUnicharRef` only as an `unowned` reference to an existing `GParamSpecUnichar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
public struct ParamSpecUnicharRef: ParamSpecUnicharProtocol {
        /// Untyped pointer to the underlying `GParamSpecUnichar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_unichar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecUnicharRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecUnichar>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecUnicharProtocol`
    init<T: ParamSpecUnicharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecUnichar` type acts as a reference-counted owner of an underlying `GParamSpecUnichar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUnicharProtocol` conformance.
/// Use `ParamSpecUnichar` as a strong reference or owner of a `GParamSpecUnichar` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
open class ParamSpecUnichar: ParamSpec, ParamSpecUnicharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUnichar`.
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecUnicharProtocol`
    /// Will retain `GParamSpecUnichar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUnicharProtocol`
    public init<T: ParamSpecUnicharProtocol>(paramSpecUnichar other: T) {
        super.init(retaining: cast(other.param_spec_unichar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUnichar properties

// MARK: no ParamSpecUnichar signals


// MARK: ParamSpecUnichar Class: ParamSpecUnicharProtocol extension (methods and fields)
public extension ParamSpecUnicharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUnichar` instance.
    var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar> { return ptr.assumingMemoryBound(to: GParamSpecUnichar.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_unichar_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: gunichar {
        /// default value for the property specified
        get {
            let rv: gunichar = cast(param_spec_unichar_ptr.pointee.default_value)
            return rv
        }
    }

}



