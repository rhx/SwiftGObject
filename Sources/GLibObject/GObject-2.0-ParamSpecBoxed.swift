import CGLib
import GLib

// MARK: - ParamSpecBoxed Class

/// The `ParamSpecBoxedProtocol` protocol exposes the methods and properties of an underlying `GParamSpecBoxed` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecBoxed`.
/// Alternatively, use `ParamSpecBoxedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
public protocol ParamSpecBoxedProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecBoxed` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecBoxed` instance.
    var param_spec_boxed_ptr: UnsafeMutablePointer<GParamSpecBoxed> { get }
}

/// The `ParamSpecBoxedRef` type acts as a lightweight Swift reference to an underlying `GParamSpecBoxed` instance.
/// It exposes methods that can operate on this data type through `ParamSpecBoxedProtocol` conformance.
/// Use `ParamSpecBoxedRef` only as an `unowned` reference to an existing `GParamSpecBoxed` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
public struct ParamSpecBoxedRef: ParamSpecBoxedProtocol {
    /// Untyped pointer to the underlying `GParamSpecBoxed` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_boxed_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecBoxedRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecBoxed>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecBoxedProtocol`
    init<T: ParamSpecBoxedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecBoxed` type acts as a reference-counted owner of an underlying `GParamSpecBoxed` instance.
/// It provides the methods that can operate on this data type through `ParamSpecBoxedProtocol` conformance.
/// Use `ParamSpecBoxed` as a strong reference or owner of a `GParamSpecBoxed` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
open class ParamSpecBoxed: ParamSpec, ParamSpecBoxedProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecBoxed` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecBoxed>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecBoxedProtocol`
    /// Will retain `GParamSpecBoxed`.
    public convenience init<T: ParamSpecBoxedProtocol>(_ other: T) {
        self.init(cast(other.param_spec_boxed_ptr))
        g_param_spec_ref(cast(param_spec_boxed_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecBoxed.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecBoxed.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecBoxed.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecBoxed>(opaquePointer))
    }



}

// MARK: - no ParamSpecBoxed properties

// MARK: - no signals


public extension ParamSpecBoxedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoxed` instance.
    var param_spec_boxed_ptr: UnsafeMutablePointer<GParamSpecBoxed> { return ptr.assumingMemoryBound(to: GParamSpecBoxed.self) }

}



