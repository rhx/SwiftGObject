import CGLib
import GLib

// MARK: - ParamSpecDouble Class

/// The `ParamSpecDoubleProtocol` protocol exposes the methods and properties of an underlying `GParamSpecDouble` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecDouble`.
/// Alternatively, use `ParamSpecDoubleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for double properties.
public protocol ParamSpecDoubleProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecDouble` instance.
    var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble> { get }
}

/// The `ParamSpecDoubleRef` type acts as a lightweight Swift reference to an underlying `GParamSpecDouble` instance.
/// It exposes methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDoubleRef` only as an `unowned` reference to an existing `GParamSpecDouble` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for double properties.
public struct ParamSpecDoubleRef: ParamSpecDoubleProtocol {
    /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_double_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecDoubleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecDouble>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    init<T: ParamSpecDoubleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecDouble` type acts as a reference-counted owner of an underlying `GParamSpecDouble` instance.
/// It provides the methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDouble` as a strong reference or owner of a `GParamSpecDouble` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for double properties.
open class ParamSpecDouble: ParamSpec, ParamSpecDoubleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecDouble` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecDoubleProtocol`
    /// Will retain `GParamSpecDouble`.
    public convenience init<T: ParamSpecDoubleProtocol>(_ other: T) {
        self.init(cast(other.param_spec_double_ptr))
        g_param_spec_ref(cast(param_spec_double_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecDouble.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecDouble.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecDouble.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecDouble>(opaquePointer))
    }



}

// MARK: - no ParamSpecDouble properties

// MARK: - no signals


public extension ParamSpecDoubleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecDouble` instance.
    var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble> { return ptr.assumingMemoryBound(to: GParamSpecDouble.self) }

}



