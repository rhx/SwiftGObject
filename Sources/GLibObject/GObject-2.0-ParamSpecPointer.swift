import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecPointer Class

/// The `ParamSpecPointerProtocol` protocol exposes the methods and properties of an underlying `GParamSpecPointer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecPointer`.
/// Alternatively, use `ParamSpecPointerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
public protocol ParamSpecPointerProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecPointer` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecPointer` instance.
    var param_spec_pointer_ptr: UnsafeMutablePointer<GParamSpecPointer> { get }
}

/// The `ParamSpecPointerRef` type acts as a lightweight Swift reference to an underlying `GParamSpecPointer` instance.
/// It exposes methods that can operate on this data type through `ParamSpecPointerProtocol` conformance.
/// Use `ParamSpecPointerRef` only as an `unowned` reference to an existing `GParamSpecPointer` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
public struct ParamSpecPointerRef: ParamSpecPointerProtocol {
        /// Untyped pointer to the underlying `GParamSpecPointer` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_pointer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecPointerRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecPointer>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecPointerProtocol`
    init<T: ParamSpecPointerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecPointer` type acts as a reference-counted owner of an underlying `GParamSpecPointer` instance.
/// It provides the methods that can operate on this data type through `ParamSpecPointerProtocol` conformance.
/// Use `ParamSpecPointer` as a strong reference or owner of a `GParamSpecPointer` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
open class ParamSpecPointer: ParamSpec, ParamSpecPointerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecPointer>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecPointer`.
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecPointer>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecPointerProtocol`
    /// Will retain `GParamSpecPointer`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecPointerProtocol`
    public init<T: ParamSpecPointerProtocol>(paramSpecPointer other: T) {
        super.init(retaining: cast(other.param_spec_pointer_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecPointer properties

// MARK: no ParamSpecPointer signals


// MARK: ParamSpecPointer Class: ParamSpecPointerProtocol extension (methods and fields)
public extension ParamSpecPointerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecPointer` instance.
    var param_spec_pointer_ptr: UnsafeMutablePointer<GParamSpecPointer> { return ptr.assumingMemoryBound(to: GParamSpecPointer.self) }


    /// private `GParamSpec` portion
    var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv: GParamSpec = cast(param_spec_pointer_ptr.pointee.parent_instance)
            return rv
        }
    }

}



