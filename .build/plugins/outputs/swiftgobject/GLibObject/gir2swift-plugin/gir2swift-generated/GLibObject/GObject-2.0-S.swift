import CGLib
import GLib
import GObjectCHelpers

// MARK: - SignalInvocationHint Record

/// The `GSignalInvocationHint` structure is used to pass on additional information
/// to callbacks during a signal emission.
///
/// The `SignalInvocationHintProtocol` protocol exposes the methods and properties of an underlying `GSignalInvocationHint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SignalInvocationHint`.
/// Alternatively, use `SignalInvocationHintRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SignalInvocationHintProtocol {
        /// Untyped pointer to the underlying `GSignalInvocationHint` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSignalInvocationHint` instance.
    var _ptr: UnsafeMutablePointer<GSignalInvocationHint>! { get }

    /// Required Initialiser for types conforming to `SignalInvocationHintProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GSignalInvocationHint` structure is used to pass on additional information
/// to callbacks during a signal emission.
///
/// The `SignalInvocationHintRef` type acts as a lightweight Swift reference to an underlying `GSignalInvocationHint` instance.
/// It exposes methods that can operate on this data type through `SignalInvocationHintProtocol` conformance.
/// Use `SignalInvocationHintRef` only as an `unowned` reference to an existing `GSignalInvocationHint` instance.
///
public struct SignalInvocationHintRef: SignalInvocationHintProtocol {
        /// Untyped pointer to the underlying `GSignalInvocationHint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SignalInvocationHintRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSignalInvocationHint>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSignalInvocationHint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSignalInvocationHint>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSignalInvocationHint>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `SignalInvocationHintProtocol`
    @inlinable init<T: SignalInvocationHintProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `GSignalInvocationHint` structure is used to pass on additional information
/// to callbacks during a signal emission.
///
/// The `SignalInvocationHint` type acts as an owner of an underlying `GSignalInvocationHint` instance.
/// It provides the methods that can operate on this data type through `SignalInvocationHintProtocol` conformance.
/// Use `SignalInvocationHint` as a strong reference or owner of a `GSignalInvocationHint` instance.
///
open class SignalInvocationHint: SignalInvocationHintProtocol {
        /// Untyped pointer to the underlying `GSignalInvocationHint` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSignalInvocationHint>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSignalInvocationHint>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSignalInvocationHint>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSignalInvocationHint>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSignalInvocationHint` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SignalInvocationHint` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSignalInvocationHint>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSignalInvocationHint, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SignalInvocationHintProtocol`
    /// `GSignalInvocationHint` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SignalInvocationHintProtocol`
    @inlinable public init<T: SignalInvocationHintProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSignalInvocationHint, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSignalInvocationHint`.
    deinit {
        // no reference counting for GSignalInvocationHint, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSignalInvocationHint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSignalInvocationHint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSignalInvocationHint, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalInvocationHintProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSignalInvocationHint, cannot ref(_ptr)
    }



}

// MARK: no SignalInvocationHint properties

// MARK: no SignalInvocationHint signals

// MARK: SignalInvocationHint has no signals
// MARK: SignalInvocationHint Record: SignalInvocationHintProtocol extension (methods and fields)
public extension SignalInvocationHintProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSignalInvocationHint` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSignalInvocationHint>! { return ptr?.assumingMemoryBound(to: GSignalInvocationHint.self) }

    /// A predefined `GSignalAccumulator` for signals intended to be used as a
    /// hook for application code to provide a particular value.  Usually
    /// only one such value is desired and multiple handlers for the same
    /// signal don't make much sense (except for the case of the default
    /// handler defined in the class structure, in which case you will
    /// usually want the signal connection to override the class handler).
    /// 
    /// This accumulator will use the return value from the first signal
    /// handler that is run as the return value for the signal and not run
    /// any further handlers (ie: the first handler "wins").
    @inlinable func signalAccumulatorFirstWins<ValueT: ValueProtocol>(returnAccu: ValueT, handlerReturn: ValueT, dummy: gpointer? = nil) -> Bool {
        let result = g_signal_accumulator_first_wins(_ptr, returnAccu.value_ptr, handlerReturn.value_ptr, dummy)
        let rv = ((result) != 0)
        return rv
    }

    /// A predefined `GSignalAccumulator` for signals that return a
    /// boolean values. The behavior that this accumulator gives is
    /// that a return of `true` stops the signal emission: no further
    /// callbacks will be invoked, while a return of `false` allows
    /// the emission to continue. The idea here is that a `true` return
    /// indicates that the callback handled the signal, and no further
    /// handling is needed.
    @inlinable func signalAccumulatorTrueHandled<ValueT: ValueProtocol>(returnAccu: ValueT, handlerReturn: ValueT, dummy: gpointer? = nil) -> Bool {
        let result = g_signal_accumulator_true_handled(_ptr, returnAccu.value_ptr, handlerReturn.value_ptr, dummy)
        let rv = ((result) != 0)
        return rv
    }

    /// The signal id of the signal invoking the callback
    @inlinable var signalID: guint {
        /// The signal id of the signal invoking the callback
        get {
            let rv = _ptr.pointee.signal_id
    return rv
        }
        /// The signal id of the signal invoking the callback
         set {
            _ptr.pointee.signal_id = newValue
        }
    }

    /// The detail passed on for this emission
    @inlinable var detail: GQuark {
        /// The detail passed on for this emission
        get {
            let rv = _ptr.pointee.detail
    return rv
        }
        /// The detail passed on for this emission
         set {
            _ptr.pointee.detail = newValue
        }
    }

    /// The stage the signal emission is currently in, this
    ///  field will contain one of `G_SIGNAL_RUN_FIRST`,
    ///  `G_SIGNAL_RUN_LAST` or `G_SIGNAL_RUN_CLEANUP` and `G_SIGNAL_ACCUMULATOR_FIRST_RUN`.
    ///  `G_SIGNAL_ACCUMULATOR_FIRST_RUN` is only set for the first run of the accumulator
    ///  function for a signal emission.
    @inlinable var runType: GLibObject.SignalFlags {
        /// The stage the signal emission is currently in, this
        ///  field will contain one of `G_SIGNAL_RUN_FIRST`,
        ///  `G_SIGNAL_RUN_LAST` or `G_SIGNAL_RUN_CLEANUP` and `G_SIGNAL_ACCUMULATOR_FIRST_RUN`.
        ///  `G_SIGNAL_ACCUMULATOR_FIRST_RUN` is only set for the first run of the accumulator
        ///  function for a signal emission.
        get {
            let rv = SignalFlags(_ptr.pointee.run_type)
    return rv
        }
        /// The stage the signal emission is currently in, this
        ///  field will contain one of `G_SIGNAL_RUN_FIRST`,
        ///  `G_SIGNAL_RUN_LAST` or `G_SIGNAL_RUN_CLEANUP` and `G_SIGNAL_ACCUMULATOR_FIRST_RUN`.
        ///  `G_SIGNAL_ACCUMULATOR_FIRST_RUN` is only set for the first run of the accumulator
        ///  function for a signal emission.
         set {
            _ptr.pointee.run_type = newValue.value
        }
    }

}



// MARK: - SignalQuery Record

/// A structure holding in-depth information for a specific signal.
/// 
/// See also: `g_signal_query()`
///
/// The `SignalQueryProtocol` protocol exposes the methods and properties of an underlying `GSignalQuery` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SignalQuery`.
/// Alternatively, use `SignalQueryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol SignalQueryProtocol {
        /// Untyped pointer to the underlying `GSignalQuery` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSignalQuery` instance.
    var _ptr: UnsafeMutablePointer<GSignalQuery>! { get }

    /// Required Initialiser for types conforming to `SignalQueryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure holding in-depth information for a specific signal.
/// 
/// See also: `g_signal_query()`
///
/// The `SignalQueryRef` type acts as a lightweight Swift reference to an underlying `GSignalQuery` instance.
/// It exposes methods that can operate on this data type through `SignalQueryProtocol` conformance.
/// Use `SignalQueryRef` only as an `unowned` reference to an existing `GSignalQuery` instance.
///
public struct SignalQueryRef: SignalQueryProtocol {
        /// Untyped pointer to the underlying `GSignalQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension SignalQueryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GSignalQuery>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GSignalQuery>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `SignalQueryProtocol`
    @inlinable init<T: SignalQueryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A structure holding in-depth information for a specific signal.
/// 
/// See also: `g_signal_query()`
///
/// The `SignalQuery` type acts as an owner of an underlying `GSignalQuery` instance.
/// It provides the methods that can operate on this data type through `SignalQueryProtocol` conformance.
/// Use `SignalQuery` as a strong reference or owner of a `GSignalQuery` instance.
///
open class SignalQuery: SignalQueryProtocol {
        /// Untyped pointer to the underlying `GSignalQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GSignalQuery>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GSignalQuery>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GSignalQuery` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `SignalQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GSignalQuery>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GSignalQuery, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `SignalQueryProtocol`
    /// `GSignalQuery` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `SignalQueryProtocol`
    @inlinable public init<T: SignalQueryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GSignalQuery, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GSignalQuery`.
    deinit {
        // no reference counting for GSignalQuery, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GSignalQuery, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GSignalQuery, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GSignalQuery, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `SignalQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GSignalQuery, cannot ref(_ptr)
    }



}

// MARK: no SignalQuery properties

// MARK: no SignalQuery signals

// MARK: SignalQuery has no signals
// MARK: SignalQuery Record: SignalQueryProtocol extension (methods and fields)
public extension SignalQueryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GSignalQuery` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GSignalQuery>! { return ptr?.assumingMemoryBound(to: GSignalQuery.self) }

    /// Queries the signal system for in-depth information about a
    /// specific signal. This function will fill in a user-provided
    /// structure to hold signal-specific information. If an invalid
    /// signal id is passed in, the `signal_id` member of the `GSignalQuery`
    /// is 0. All members filled into the `GSignalQuery` structure should
    /// be considered constant and have to be left untouched.
    @inlinable func signalQuery(signalID: Int) {
        
        g_signal_query(guint(signalID), _ptr)
        
    }

    /// The signal id of the signal being queried, or 0 if the
    ///  signal to be queried was unknown.
    @inlinable var signalID: guint {
        /// The signal id of the signal being queried, or 0 if the
        ///  signal to be queried was unknown.
        get {
            let rv = _ptr.pointee.signal_id
    return rv
        }
        /// The signal id of the signal being queried, or 0 if the
        ///  signal to be queried was unknown.
         set {
            _ptr.pointee.signal_id = newValue
        }
    }

    /// The signal name.
    @inlinable var signalName: UnsafePointer<gchar>! {
        /// The signal name.
        get {
            let rv = _ptr.pointee.signal_name
    return rv
        }
        /// The signal name.
         set {
            _ptr.pointee.signal_name = newValue
        }
    }

    /// The interface/instance type that this signal can be emitted for.
    @inlinable var itype: GType {
        /// The interface/instance type that this signal can be emitted for.
        get {
            let rv = _ptr.pointee.itype
    return rv
        }
        /// The interface/instance type that this signal can be emitted for.
         set {
            _ptr.pointee.itype = newValue
        }
    }

    /// The signal flags as passed in to `g_signal_new()`.
    @inlinable var signalFlags: GLibObject.SignalFlags {
        /// The signal flags as passed in to `g_signal_new()`.
        get {
            let rv = SignalFlags(_ptr.pointee.signal_flags)
    return rv
        }
        /// The signal flags as passed in to `g_signal_new()`.
         set {
            _ptr.pointee.signal_flags = newValue.value
        }
    }

    /// The return type for user callbacks.
    @inlinable var returnType: GType {
        /// The return type for user callbacks.
        get {
            let rv = _ptr.pointee.return_type
    return rv
        }
        /// The return type for user callbacks.
         set {
            _ptr.pointee.return_type = newValue
        }
    }

    /// The number of parameters that user callbacks take.
    @inlinable var nParams: guint {
        /// The number of parameters that user callbacks take.
        get {
            let rv = _ptr.pointee.n_params
    return rv
        }
        /// The number of parameters that user callbacks take.
         set {
            _ptr.pointee.n_params = newValue
        }
    }

    /// The individual parameter types for
    ///  user callbacks, note that the effective callback signature is:
    ///  
    /// (C Language Example):
    /// ```C
    ///  @return_type callback (#gpointer     data1,
    ///  [param_types param_names,]
    ///  gpointer     data2);
    ///  
    /// ```
    /// 
    @inlinable var paramTypes: UnsafePointer<GType>! {
        /// The individual parameter types for
        ///  user callbacks, note that the effective callback signature is:
        ///  
        /// (C Language Example):
        /// ```C
        ///  @return_type callback (#gpointer     data1,
        ///  [param_types param_names,]
        ///  gpointer     data2);
        ///  
        /// ```
        /// 
        get {
            let rv = _ptr.pointee.param_types
    return rv
        }
        /// The individual parameter types for
        ///  user callbacks, note that the effective callback signature is:
        ///  
        /// (C Language Example):
        /// ```C
        ///  @return_type callback (#gpointer     data1,
        ///  [param_types param_names,]
        ///  gpointer     data2);
        ///  
        /// ```
        /// 
         set {
            _ptr.pointee.param_types = newValue
        }
    }

}



