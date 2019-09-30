import CGLib
import GLib

// MARK: - CClosure Record

/// The `CClosureProtocol` protocol exposes the methods and properties of an underlying `GCClosure` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CClosure`.
/// Alternatively, use `CClosureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GCClosure` is a specialization of `GClosure` for C function callbacks.
public protocol CClosureProtocol {
    /// Untyped pointer to the underlying `GCClosure` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GCClosure` instance.
    var _ptr: UnsafeMutablePointer<GCClosure> { get }
}

/// The `CClosureRef` type acts as a lightweight Swift reference to an underlying `GCClosure` instance.
/// It exposes methods that can operate on this data type through `CClosureProtocol` conformance.
/// Use `CClosureRef` only as an `unowned` reference to an existing `GCClosure` instance.
///
/// A `GCClosure` is a specialization of `GClosure` for C function callbacks.
public struct CClosureRef: CClosureProtocol {
    /// Untyped pointer to the underlying `GCClosure` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension CClosureRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `CClosureProtocol`
    init<T: CClosureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `CClosure` type acts as an owner of an underlying `GCClosure` instance.
/// It provides the methods that can operate on this data type through `CClosureProtocol` conformance.
/// Use `CClosure` as a strong reference or owner of a `GCClosure` instance.
///
/// A `GCClosure` is a specialization of `GClosure` for C function callbacks.
open class CClosure: CClosureProtocol {
    /// Untyped pointer to the underlying `GCClosure` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `CClosure` instance.
    public init(_ op: UnsafeMutablePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `CClosureProtocol`
    /// `GCClosure` does not allow reference counting.
    public convenience init<T: CClosureProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GCClosure, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GCClosure`.
    deinit {
        // no reference counting for GCClosure, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GCClosure.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GCClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GCClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GCClosure>(opaquePointer))
    }



}

// MARK: - no CClosure properties

// MARK: - no signals


public extension CClosureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCClosure` instance.
    var _ptr: UnsafeMutablePointer<GCClosure> { return ptr.assumingMemoryBound(to: GCClosure.self) }

}



