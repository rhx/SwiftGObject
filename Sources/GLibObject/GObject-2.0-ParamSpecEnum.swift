import CGLib
import GLib

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
    /// Ownership is transferred to the `ParamSpecEnum` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecEnumProtocol`
    /// Will retain `GParamSpecEnum`.
    public convenience init<T: ParamSpecEnumProtocol>(_ other: T) {
        self.init(cast(other.param_spec_enum_ptr))
        g_param_spec_ref(cast(param_spec_enum_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecEnum.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecEnum.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecEnum.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecEnum>(opaquePointer))
    }



}

// MARK: - no ParamSpecEnum properties

// MARK: - no signals


public extension ParamSpecEnumProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecEnum` instance.
    var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum> { return ptr.assumingMemoryBound(to: GParamSpecEnum.self) }

}



