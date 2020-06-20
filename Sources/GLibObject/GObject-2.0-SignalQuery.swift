import CGLib
import GLib
import GObjectCHelpers

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
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSignalQuery` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `SignalQueryProtocol`
    /// `GSignalQuery` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SignalQueryProtocol`
    public init<T: SignalQueryProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GSignalQuery`.
    deinit {
        // no reference counting for GSignalQuery, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSignalQuery, cannot ref(cast(_ptr))
    }



}

// MARK: no SignalQuery properties

// MARK: no SignalQuery signals


// MARK: SignalQuery Record: SignalQueryProtocol extension (methods and fields)
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

    /// The signal id of the signal being queried, or 0 if the
    ///  signal to be queried was unknown.
    var signalID: Int {
        /// The signal id of the signal being queried, or 0 if the
        ///  signal to be queried was unknown.
        get {
            let rv: Int = cast(_ptr.pointee.signal_id)
            return rv
        }
        /// The signal id of the signal being queried, or 0 if the
        ///  signal to be queried was unknown.
         set {
            _ptr.pointee.signal_id = guint(newValue)
        }
    }

    /// The signal name.
    var signalName: UnsafePointer<CChar> {
        /// The signal name.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.signal_name)
            return rv
        }
        /// The signal name.
         set {
            _ptr.pointee.signal_name = cast(newValue)
        }
    }

    /// The interface/instance type that this signal can be emitted for.
    var itype: GType {
        /// The interface/instance type that this signal can be emitted for.
        get {
            let rv: GType = cast(_ptr.pointee.itype)
            return rv
        }
        /// The interface/instance type that this signal can be emitted for.
         set {
            _ptr.pointee.itype = cast(newValue)
        }
    }

    /// The signal flags as passed in to `g_signal_new()`.
    var signalFlags: GSignalFlags {
        /// The signal flags as passed in to `g_signal_new()`.
        get {
            let rv: GSignalFlags = cast(_ptr.pointee.signal_flags)
            return rv
        }
        /// The signal flags as passed in to `g_signal_new()`.
         set {
            _ptr.pointee.signal_flags = cast(newValue)
        }
    }

    /// The return type for user callbacks.
    var returnType: GType {
        /// The return type for user callbacks.
        get {
            let rv: GType = cast(_ptr.pointee.return_type)
            return rv
        }
        /// The return type for user callbacks.
         set {
            _ptr.pointee.return_type = cast(newValue)
        }
    }

    /// The number of parameters that user callbacks take.
    var nParams: Int {
        /// The number of parameters that user callbacks take.
        get {
            let rv: Int = cast(_ptr.pointee.n_params)
            return rv
        }
        /// The number of parameters that user callbacks take.
         set {
            _ptr.pointee.n_params = guint(newValue)
        }
    }

    // var paramTypes is unavailable because param_types is void

}



