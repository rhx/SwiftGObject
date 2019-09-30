import CGLib
import GLib

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
    /// Ownership is transferred to the `ParamSpecUnichar` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecUnicharProtocol`
    /// Will retain `GParamSpecUnichar`.
    public convenience init<T: ParamSpecUnicharProtocol>(_ other: T) {
        self.init(cast(other.param_spec_unichar_ptr))
        g_param_spec_ref(cast(param_spec_unichar_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecUnichar.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecUnichar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecUnichar.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecUnichar>(opaquePointer))
    }



}

// MARK: - no ParamSpecUnichar properties

// MARK: - no signals


public extension ParamSpecUnicharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUnichar` instance.
    var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar> { return ptr.assumingMemoryBound(to: GParamSpecUnichar.self) }

}



