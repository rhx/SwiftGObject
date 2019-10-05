import CGLib
import GLib

// MARK: - SignalQuery Record

/// The `SignalQueryProtocol` protocol exposes the methods and properties of an underlying `GSignalQuery` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SignalQuery`.
/// Alternatively, use `SignalQueryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure holding in-depth information for a specific signal. It is
/// filled in by the `g_signal_query()` function.
public protocol SignalQueryProtocol {
    /// Untyped pointer to the underlying `GSignalQuery` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GSignalQuery` instance.
    var _ptr: UnsafeMutablePointer<GSignalQuery> { get }
}

/// The `SignalQueryRef` type acts as a lightweight Swift reference to an underlying `GSignalQuery` instance.
/// It exposes methods that can operate on this data type through `SignalQueryProtocol` conformance.
/// Use `SignalQueryRef` only as an `unowned` reference to an existing `GSignalQuery` instance.
///
/// A structure holding in-depth information for a specific signal. It is
/// filled in by the `g_signal_query()` function.
public struct SignalQueryRef: SignalQueryProtocol {
    /// Untyped pointer to the underlying `GSignalQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension SignalQueryRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `SignalQueryProtocol`
    init<T: SignalQueryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `SignalQuery` type acts as an owner of an underlying `GSignalQuery` instance.
/// It provides the methods that can operate on this data type through `SignalQueryProtocol` conformance.
/// Use `SignalQuery` as a strong reference or owner of a `GSignalQuery` instance.
///
/// A structure holding in-depth information for a specific signal. It is
/// filled in by the `g_signal_query()` function.
open class SignalQuery: SignalQueryProtocol {
    /// Untyped pointer to the underlying `GSignalQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `SignalQuery` instance.
    public init(_ op: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `SignalQueryProtocol`
    /// `GSignalQuery` does not allow reference counting.
    public convenience init<T: SignalQueryProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GSignalQuery`.
    deinit {
        // no reference counting for GSignalQuery, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GSignalQuery.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GSignalQuery.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GSignalQuery.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GSignalQuery>(opaquePointer))
    }



}

// MARK: - no SignalQuery properties

// MARK: - no signals


public extension SignalQueryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSignalQuery` instance.
    var _ptr: UnsafeMutablePointer<GSignalQuery> { return ptr.assumingMemoryBound(to: GSignalQuery.self) }

    /// Queries the signal system for in-depth information about a
    /// specific signal. This function will fill in a user-provided
    /// structure to hold signal-specific information. If an invalid
    /// signal id is passed in, the `signal_id` member of the `GSignalQuery`
    /// is 0. All members filled into the `GSignalQuery` structure should
    /// be considered constant and have to be left untouched.
    func signalQuery(signalID signal_id: CUnsignedInt) {
        g_signal_query(guint(signal_id), cast(_ptr))
    
    }
}



