import CGLib
import GLib

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
    /// Ownership is transferred to the `ParamSpecGType` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecGTypeProtocol`
    /// Will retain `GParamSpecGType`.
    public convenience init<T: ParamSpecGTypeProtocol>(_ other: T) {
        self.init(cast(other.param_spec_gtype_ptr))
        g_param_spec_ref(cast(param_spec_gtype_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecGType.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecGType.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecGType.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecGType>(opaquePointer))
    }



}

// MARK: - no ParamSpecGType properties

// MARK: - no signals


public extension ParamSpecGTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecGType` instance.
    var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType> { return ptr.assumingMemoryBound(to: GParamSpecGType.self) }

}



