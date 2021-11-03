import CGLib
import GLib
import GObjectCHelpers

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
    @inlinable var signalFlags: SignalFlags {
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



// MARK: - TypeClass Record

/// An opaque structure used as the base of all classes.
///
/// The `TypeClassProtocol` protocol exposes the methods and properties of an underlying `GTypeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeClass`.
/// Alternatively, use `TypeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeClassProtocol {
        /// Untyped pointer to the underlying `GTypeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeClass>! { get }

    /// Required Initialiser for types conforming to `TypeClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure used as the base of all classes.
///
/// The `TypeClassRef` type acts as a lightweight Swift reference to an underlying `GTypeClass` instance.
/// It exposes methods that can operate on this data type through `TypeClassProtocol` conformance.
/// Use `TypeClassRef` only as an `unowned` reference to an existing `GTypeClass` instance.
///
public struct TypeClassRef: TypeClassProtocol {
        /// Untyped pointer to the underlying `GTypeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeClass>?) {
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

    /// Reference intialiser for a related type that implements `TypeClassProtocol`
    @inlinable init<T: TypeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function is essentially the same as `g_type_class_ref()`,
    /// except that the classes reference count isn't incremented.
    /// As a consequence, this function may return `nil` if the class
    /// of the type passed in does not currently exist (hasn't been
    /// referenced before).
    @inlinable static func peek(type: GType) -> TypeClassRef! {
        guard let rv = TypeClassRef(gpointer: g_type_class_peek(type)) else { return nil }
        return rv
    }

    /// A more efficient version of `g_type_class_peek()` which works only for
    /// static types.
    @inlinable static func peekStatic(type: GType) -> TypeClassRef! {
        guard let rv = TypeClassRef(gpointer: g_type_class_peek_static(type)) else { return nil }
        return rv
    }

    /// Increments the reference count of the class structure belonging to
    /// `type`. This function will demand-create the class if it doesn't
    /// exist already.
    @inlinable static func ref(type: GType) -> TypeClassRef! {
        guard let rv = TypeClassRef(gpointer: g_type_class_ref(type)) else { return nil }
        return rv
    }
}

/// An opaque structure used as the base of all classes.
///
/// The `TypeClass` type acts as an owner of an underlying `GTypeClass` instance.
/// It provides the methods that can operate on this data type through `TypeClassProtocol` conformance.
/// Use `TypeClass` as a strong reference or owner of a `GTypeClass` instance.
///
open class TypeClass: TypeClassProtocol {
        /// Untyped pointer to the underlying `GTypeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeClassProtocol`
    /// `GTypeClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeClassProtocol`
    @inlinable public init<T: TypeClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Releases the underlying `GTypeClass` instance using `g_type_class_unref`.
    deinit {
        g_type_class_unref(ptr.assumingMemoryBound(to: GTypeClass.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }


    /// This function is essentially the same as `g_type_class_ref()`,
    /// except that the classes reference count isn't incremented.
    /// As a consequence, this function may return `nil` if the class
    /// of the type passed in does not currently exist (hasn't been
    /// referenced before).
    @inlinable public static func peek(type: GType) -> TypeClass! {
        guard let rv = TypeClass(gpointer: g_type_class_peek(type)) else { return nil }
        return rv
    }

    /// A more efficient version of `g_type_class_peek()` which works only for
    /// static types.
    @inlinable public static func peekStatic(type: GType) -> TypeClass! {
        guard let rv = TypeClass(gpointer: g_type_class_peek_static(type)) else { return nil }
        return rv
    }

    /// Increments the reference count of the class structure belonging to
    /// `type`. This function will demand-create the class if it doesn't
    /// exist already.
    @inlinable public static func ref(type: GType) -> TypeClass! {
        guard let rv = TypeClass(gpointer: g_type_class_ref(type)) else { return nil }
        return rv
    }

}

// MARK: no TypeClass properties

// MARK: no TypeClass signals

// MARK: TypeClass has no signals
// MARK: TypeClass Record: TypeClassProtocol extension (methods and fields)
public extension TypeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeClass>! { return ptr?.assumingMemoryBound(to: GTypeClass.self) }

    /// Registers a private structure for an instantiatable type.
    /// 
    /// When an object is allocated, the private structures for
    /// the type and all of its parent types are allocated
    /// sequentially in the same memory block as the public
    /// structures, and are zero-filled.
    /// 
    /// Note that the accumulated size of the private structures of
    /// a type and all its parent types cannot exceed 64 KiB.
    /// 
    /// This function should be called in the type's `class_init()` function.
    /// The private structure can be retrieved using the
    /// `G_TYPE_INSTANCE_GET_PRIVATE()` macro.
    /// 
    /// The following example shows attaching a private structure
    /// MyObjectPrivate to an object MyObject defined in the standard
    /// GObject fashion in the type's `class_init()` function.
    /// 
    /// Note the use of a structure member "priv" to avoid the overhead
    /// of repeatedly calling `MY_OBJECT_GET_PRIVATE()`.
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyObject        MyObject;
    /// typedef struct _MyObjectPrivate MyObjectPrivate;
    /// 
    /// struct _MyObject {
    ///  GObject parent;
    /// 
    ///  MyObjectPrivate *priv;
    /// };
    /// 
    /// struct _MyObjectPrivate {
    ///   int some_field;
    /// };
    /// 
    /// static void
    /// my_object_class_init (MyObjectClass *klass)
    /// {
    ///   g_type_class_add_private (klass, sizeof (MyObjectPrivate));
    /// }
    /// 
    /// static void
    /// my_object_init (MyObject *my_object)
    /// {
    ///   my_object->priv = G_TYPE_INSTANCE_GET_PRIVATE (my_object,
    ///                                                  MY_TYPE_OBJECT,
    ///                                                  MyObjectPrivate);
    ///   // my_object->priv->some_field will be automatically initialised to 0
    /// }
    /// 
    /// static int
    /// my_object_get_some_field (MyObject *my_object)
    /// {
    ///   MyObjectPrivate *priv;
    /// 
    ///   g_return_val_if_fail (MY_IS_OBJECT (my_object), 0);
    /// 
    ///   priv = my_object->priv;
    /// 
    ///   return priv->some_field;
    /// }
    /// ```
    /// 
    ///
    /// **add_private is deprecated:**
    /// Use the G_ADD_PRIVATE() macro with the `G_DEFINE_*`
    ///   family of macros to add instance private data to a type
    @available(*, deprecated) @inlinable func addPrivate(privateSize: Int) {
        g_type_class_add_private(_ptr, gsize(privateSize))
    
    }

    /// Gets the offset of the private data for instances of `g_class`.
    /// 
    /// This is how many bytes you should add to the instance pointer of a
    /// class in order to get the private data for the type represented by
    /// `g_class`.
    /// 
    /// You can only call this function after you have registered a private
    /// data area for `g_class` using `g_type_class_add_private()`.
    @inlinable func getInstancePrivateOffset() -> Int {
        let rv = Int(g_type_class_get_instance_private_offset(_ptr))
        return rv
    }

    @inlinable func getPrivate(privateType: GType) -> gpointer! {
        let rv = g_type_class_get_private(_ptr, privateType)
        return rv
    }

    /// This is a convenience function often needed in class initializers.
    /// It returns the class structure of the immediate parent type of the
    /// class passed in.  Since derived classes hold a reference count on
    /// their parent classes as long as they are instantiated, the returned
    /// class will always exist.
    /// 
    /// This function is essentially equivalent to:
    /// g_type_class_peek (g_type_parent (G_TYPE_FROM_CLASS (g_class)))
    @inlinable func peekParent() -> TypeClassRef! {
        guard let rv = TypeClassRef(gpointer: g_type_class_peek_parent(_ptr)) else { return nil }
        return rv
    }

    /// Decrements the reference count of the class structure being passed in.
    /// Once the last reference count of a class has been released, classes
    /// may be finalized by the type system, so further dereferencing of a
    /// class pointer after `g_type_class_unref()` are invalid.
    @inlinable func unref() {
        g_type_class_unref(_ptr)
    
    }

    /// A variant of `g_type_class_unref()` for use in `GTypeClassCacheFunc`
    /// implementations. It unreferences a class without consulting the chain
    /// of `GTypeClassCacheFuncs`, avoiding the recursion which would occur
    /// otherwise.
    @inlinable func unrefUncached() {
        g_type_class_unref_uncached(_ptr)
    
    }

    @inlinable func typeCheckClassCast(isAType: GType) -> TypeClassRef! {
        guard let rv = TypeClassRef(gconstpointer: gconstpointer(g_type_check_class_cast(_ptr, isAType))) else { return nil }
        return rv
    }

    @inlinable func typeCheckClassIsA(isAType: GType) -> Bool {
        let rv = ((g_type_check_class_is_a(_ptr, isAType)) != 0)
        return rv
    }

    /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    @inlinable func typeInterfacePeek(ifaceType: GType) -> TypeInterfaceRef! {
        let rv = TypeInterfaceRef(gpointer: g_type_interface_peek(_ptr, ifaceType))
        return rv
    }

    @inlinable func typeNameFromClass() -> String! {
        let rv = g_type_name_from_class(_ptr).map({ String(cString: $0) })
        return rv
    }
    /// Gets the offset of the private data for instances of `g_class`.
    /// 
    /// This is how many bytes you should add to the instance pointer of a
    /// class in order to get the private data for the type represented by
    /// `g_class`.
    /// 
    /// You can only call this function after you have registered a private
    /// data area for `g_class` using `g_type_class_add_private()`.
    @inlinable var instancePrivateOffset: Int {
        /// Gets the offset of the private data for instances of `g_class`.
        /// 
        /// This is how many bytes you should add to the instance pointer of a
        /// class in order to get the private data for the type represented by
        /// `g_class`.
        /// 
        /// You can only call this function after you have registered a private
        /// data area for `g_class` using `g_type_class_add_private()`.
        get {
            let rv = Int(g_type_class_get_instance_private_offset(_ptr))
            return rv
        }
    }

    // var gType is unavailable because g_type is private

}



