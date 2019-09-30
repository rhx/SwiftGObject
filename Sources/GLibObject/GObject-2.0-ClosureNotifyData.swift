import CGLib
import GLib

// MARK: - ClosureNotifyData Record

/// The `ClosureNotifyDataProtocol` protocol exposes the methods and properties of an underlying `GClosureNotifyData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ClosureNotifyData`.
/// Alternatively, use `ClosureNotifyDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///

public protocol ClosureNotifyDataProtocol {
    /// Untyped pointer to the underlying `GClosureNotifyData` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GClosureNotifyData` instance.
    var _ptr: UnsafeMutablePointer<GClosureNotifyData> { get }
}

/// The `ClosureNotifyDataRef` type acts as a lightweight Swift reference to an underlying `GClosureNotifyData` instance.
/// It exposes methods that can operate on this data type through `ClosureNotifyDataProtocol` conformance.
/// Use `ClosureNotifyDataRef` only as an `unowned` reference to an existing `GClosureNotifyData` instance.
///

public struct ClosureNotifyDataRef: ClosureNotifyDataProtocol {
    /// Untyped pointer to the underlying `GClosureNotifyData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ClosureNotifyDataRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ClosureNotifyDataProtocol`
    init<T: ClosureNotifyDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ClosureNotifyData` type acts as an owner of an underlying `GClosureNotifyData` instance.
/// It provides the methods that can operate on this data type through `ClosureNotifyDataProtocol` conformance.
/// Use `ClosureNotifyData` as a strong reference or owner of a `GClosureNotifyData` instance.
///

open class ClosureNotifyData: ClosureNotifyDataProtocol {
    /// Untyped pointer to the underlying `GClosureNotifyData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ClosureNotifyData` instance.
    public init(_ op: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ClosureNotifyDataProtocol`
    /// `GClosureNotifyData` does not allow reference counting.
    public convenience init<T: ClosureNotifyDataProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GClosureNotifyData`.
    deinit {
        // no reference counting for GClosureNotifyData, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GClosureNotifyData.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GClosureNotifyData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GClosureNotifyData.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GClosureNotifyData>(opaquePointer))
    }



}

// MARK: - no ClosureNotifyData properties

// MARK: - no signals


public extension ClosureNotifyDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GClosureNotifyData` instance.
    var _ptr: UnsafeMutablePointer<GClosureNotifyData> { return ptr.assumingMemoryBound(to: GClosureNotifyData.self) }

}



