import CGLib
import GLib
import GObjectCHelpers

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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GClosureNotifyData` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ClosureNotifyDataProtocol`
    /// `GClosureNotifyData` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ClosureNotifyDataProtocol`
    public init<T: ClosureNotifyDataProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GClosureNotifyData`.
    deinit {
        // no reference counting for GClosureNotifyData, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GClosureNotifyData, cannot ref(cast(_ptr))
    }



}

// MARK: no ClosureNotifyData properties

// MARK: no ClosureNotifyData signals


// MARK: ClosureNotifyData Record: ClosureNotifyDataProtocol extension (methods and fields)
public extension ClosureNotifyDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GClosureNotifyData` instance.
    var _ptr: UnsafeMutablePointer<GClosureNotifyData> { return ptr.assumingMemoryBound(to: GClosureNotifyData.self) }


    var data: UnsafeMutableRawPointer {
        get {
            let rv: UnsafeMutableRawPointer = cast(_ptr.pointee.data)
            return rv
        }
         set {
            _ptr.pointee.data = cast(newValue)
        }
    }

    var notify: GClosureNotify {
        get {
            let rv: GClosureNotify = cast(_ptr.pointee.notify)
            return rv
        }
         set {
            _ptr.pointee.notify = cast(newValue)
        }
    }

}



