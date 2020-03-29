import CGLib
import GLib

// MARK: - ParamSpecObject Class

/// The `ParamSpecObjectProtocol` protocol exposes the methods and properties of an underlying `GParamSpecObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecObject`.
/// Alternatively, use `ParamSpecObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for object properties.
public protocol ParamSpecObjectProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecObject` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecObject` instance.
    var param_spec_object_ptr: UnsafeMutablePointer<GParamSpecObject> { get }
}

/// The `ParamSpecObjectRef` type acts as a lightweight Swift reference to an underlying `GParamSpecObject` instance.
/// It exposes methods that can operate on this data type through `ParamSpecObjectProtocol` conformance.
/// Use `ParamSpecObjectRef` only as an `unowned` reference to an existing `GParamSpecObject` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for object properties.
public struct ParamSpecObjectRef: ParamSpecObjectProtocol {
    /// Untyped pointer to the underlying `GParamSpecObject` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecObjectRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecObject>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecObjectProtocol`
    init<T: ParamSpecObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecObject` type acts as a reference-counted owner of an underlying `GParamSpecObject` instance.
/// It provides the methods that can operate on this data type through `ParamSpecObjectProtocol` conformance.
/// Use `ParamSpecObject` as a strong reference or owner of a `GParamSpecObject` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for object properties.
open class ParamSpecObject: ParamSpec, ParamSpecObjectProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecObject>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecObject`.
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecObject>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecObjectProtocol`
    /// Will retain `GParamSpecObject`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecObjectProtocol`
    public init<T: ParamSpecObjectProtocol>(paramSpecObject other: T) {
        super.init(retaining: cast(other.param_spec_object_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecObject properties

// MARK: - no signals


public extension ParamSpecObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecObject` instance.
    var param_spec_object_ptr: UnsafeMutablePointer<GParamSpecObject> { return ptr.assumingMemoryBound(to: GParamSpecObject.self) }

}



