import CGLib
import GLib

// MARK: - ParamSpecInt Class

/// The `ParamSpecIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt`.
/// Alternatively, use `ParamSpecIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpec` derived structure that contains the meta data for integer properties.
public protocol ParamSpecIntProtocol: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpecInt` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecInt` instance.
    var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt> { get }
}

/// The `ParamSpecIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecIntRef` only as an `unowned` reference to an existing `GParamSpecInt` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for integer properties.
public struct ParamSpecIntRef: ParamSpecIntProtocol {
    /// Untyped pointer to the underlying `GParamSpecInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecIntRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecInt>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    init<T: ParamSpecIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecInt` type acts as a reference-counted owner of an underlying `GParamSpecInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecInt` as a strong reference or owner of a `GParamSpecInt` instance.
///
/// A `GParamSpec` derived structure that contains the meta data for integer properties.
open class ParamSpecInt: ParamSpec, ParamSpecIntProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecInt` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecIntProtocol`
    /// Will retain `GParamSpecInt`.
    public convenience init<T: ParamSpecIntProtocol>(_ other: T) {
        self.init(cast(other.param_spec_int_ptr))
        g_param_spec_ref(cast(param_spec_int_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecInt.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecInt.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecInt.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecInt>(opaquePointer))
    }



}

// MARK: - no ParamSpecInt properties

// MARK: - no signals


public extension ParamSpecIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt` instance.
    var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt> { return ptr.assumingMemoryBound(to: GParamSpecInt.self) }

}



