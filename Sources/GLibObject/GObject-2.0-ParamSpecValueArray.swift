import CGLib
import GLib

// MARK: - ParamSpecValueArray Class

/// The `ParamSpecValueArrayProtocol` protocol exposes the methods and properties of an underlying `GParamSpecValueArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecValueArray`.
/// Alternatively, use `ParamSpecValueArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
public protocol ParamSpecValueArrayProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecValueArray` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecValueArray` instance.
    var param_spec_value_array_ptr: UnsafeMutablePointer<GParamSpecValueArray> { get }
}

/// The `ParamSpecValueArrayRef` type acts as a lightweight Swift reference to an underlying `GParamSpecValueArray` instance.
/// It exposes methods that can operate on this data type through `ParamSpecValueArrayProtocol` conformance.
/// Use `ParamSpecValueArrayRef` only as an `unowned` reference to an existing `GParamSpecValueArray` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
public struct ParamSpecValueArrayRef: ParamSpecValueArrayProtocol {
    /// Untyped pointer to the underlying `GParamSpecValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecValueArrayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecValueArray>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecValueArrayProtocol`
    init<T: ParamSpecValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecValueArray` type acts as a reference-counted owner of an underlying `GParamSpecValueArray` instance.
/// It provides the methods that can operate on this data type through `ParamSpecValueArrayProtocol` conformance.
/// Use `ParamSpecValueArray` as a strong reference or owner of a `GParamSpecValueArray` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
open class ParamSpecValueArray: ParamSpec, ParamSpecValueArrayProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecValueArray>) {
        super.init(cast(op))
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecValueArray`.
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecValueArray>) {
        super.init(retaining: cast(op))
    }

    /// Reference intialiser for a related type that implements `ParamSpecValueArrayProtocol`
    /// Will retain `GParamSpecValueArray`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecValueArrayProtocol`
    public init<T: ParamSpecValueArrayProtocol>(paramSpecValueArray other: T) {
        super.init(retaining: cast(other.param_spec_value_array_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    override public init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: - no ParamSpecValueArray properties

// MARK: - no signals


public extension ParamSpecValueArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecValueArray` instance.
    var param_spec_value_array_ptr: UnsafeMutablePointer<GParamSpecValueArray> { return ptr.assumingMemoryBound(to: GParamSpecValueArray.self) }

}



