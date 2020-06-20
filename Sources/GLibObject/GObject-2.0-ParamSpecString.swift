import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecString Class

/// The `ParamSpecStringProtocol` protocol exposes the methods and properties of an underlying `GParamSpecString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecString`.
/// Alternatively, use `ParamSpecStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
public protocol ParamSpecStringProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecString` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecString` instance.
    var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString> { get }
}

/// The `ParamSpecStringRef` type acts as a lightweight Swift reference to an underlying `GParamSpecString` instance.
/// It exposes methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecStringRef` only as an `unowned` reference to an existing `GParamSpecString` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
public struct ParamSpecStringRef: ParamSpecStringProtocol {
        /// Untyped pointer to the underlying `GParamSpecString` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecStringRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecString>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    init<T: ParamSpecStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecString` type acts as a reference-counted owner of an underlying `GParamSpecString` instance.
/// It provides the methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecString` as a strong reference or owner of a `GParamSpecString` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
open class ParamSpecString: ParamSpec, ParamSpecStringProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecString`.
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    /// Will retain `GParamSpecString`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecStringProtocol`
    public init<T: ParamSpecStringProtocol>(paramSpecString other: T) {
        super.init(retaining: cast(other.param_spec_string_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecString properties

// MARK: no ParamSpecString signals


// MARK: ParamSpecString Class: ParamSpecStringProtocol extension (methods and fields)
public extension ParamSpecStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecString` instance.
    var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString> { return ptr.assumingMemoryBound(to: GParamSpecString.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_string_ptr.pointee.parent_instance)
            return rv
        }
    }

    /// default value for the property specified
    var defaultValue: UnsafePointer<CChar> {
        /// default value for the property specified
        get {
            let rv: UnsafePointer<CChar> = cast(param_spec_string_ptr.pointee.default_value)
            return rv
        }
    }

    /// a string containing the allowed values for the first byte
    var csetFirst: UnsafePointer<CChar> {
        /// a string containing the allowed values for the first byte
        get {
            let rv: UnsafePointer<CChar> = cast(param_spec_string_ptr.pointee.cset_first)
            return rv
        }
    }

    /// a string containing the allowed values for the subsequent bytes
    var csetNth: UnsafePointer<CChar> {
        /// a string containing the allowed values for the subsequent bytes
        get {
            let rv: UnsafePointer<CChar> = cast(param_spec_string_ptr.pointee.cset_nth)
            return rv
        }
    }

    /// the replacement byte for bytes which don't match `cset_first` or `cset_nth`.
    var substitutor: gchar {
        /// the replacement byte for bytes which don't match `cset_first` or `cset_nth`.
        get {
            let rv: gchar = cast(param_spec_string_ptr.pointee.substitutor)
            return rv
        }
    }

    /// replace empty string by `nil`
    var nullFoldIfEmpty: Int {
        /// replace empty string by `nil`
        get {
            let rv: Int = cast(param_spec_string_ptr.pointee.null_fold_if_empty)
            return rv
        }
    }

    /// replace `nil` strings by an empty string
    var ensureNonNull: Int {
        /// replace `nil` strings by an empty string
        get {
            let rv: Int = cast(param_spec_string_ptr.pointee.ensure_non_null)
            return rv
        }
    }

}



