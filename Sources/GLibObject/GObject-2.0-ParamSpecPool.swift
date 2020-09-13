import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecPool Record

/// The `ParamSpecPoolProtocol` protocol exposes the methods and properties of an underlying `GParamSpecPool` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecPool`.
/// Alternatively, use `ParamSpecPoolRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GParamSpecPool` maintains a collection of `GParamSpecs` which can be
/// quickly accessed by owner and name. The implementation of the `GObject` property
/// system uses such a pool to store the `GParamSpecs` of the properties all object
/// types.
public protocol ParamSpecPoolProtocol {
        /// Untyped pointer to the underlying `GParamSpecPool` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecPool` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecPool>! { get }

}

/// The `ParamSpecPoolRef` type acts as a lightweight Swift reference to an underlying `GParamSpecPool` instance.
/// It exposes methods that can operate on this data type through `ParamSpecPoolProtocol` conformance.
/// Use `ParamSpecPoolRef` only as an `unowned` reference to an existing `GParamSpecPool` instance.
///
/// A `GParamSpecPool` maintains a collection of `GParamSpecs` which can be
/// quickly accessed by owner and name. The implementation of the `GObject` property
/// system uses such a pool to store the `GParamSpecs` of the properties all object
/// types.
public struct ParamSpecPoolRef: ParamSpecPoolProtocol {
        /// Untyped pointer to the underlying `GParamSpecPool` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecPoolRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecPool>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecPool>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecPoolProtocol`
    @inlinable init<T: ParamSpecPoolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecPool` type acts as an owner of an underlying `GParamSpecPool` instance.
/// It provides the methods that can operate on this data type through `ParamSpecPoolProtocol` conformance.
/// Use `ParamSpecPool` as a strong reference or owner of a `GParamSpecPool` instance.
///
/// A `GParamSpecPool` maintains a collection of `GParamSpecs` which can be
/// quickly accessed by owner and name. The implementation of the `GObject` property
/// system uses such a pool to store the `GParamSpecs` of the properties all object
/// types.
open class ParamSpecPool: ParamSpecPoolProtocol {
        /// Untyped pointer to the underlying `GParamSpecPool` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecPool>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecPool>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParamSpecPool` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParamSpecPool, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ParamSpecPoolProtocol`
    /// `GParamSpecPool` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParamSpecPoolProtocol`
    @inlinable public init<T: ParamSpecPoolProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GParamSpecPool, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GParamSpecPool`.
    deinit {
        // no reference counting for GParamSpecPool, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParamSpecPool, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParamSpecPool, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParamSpecPool, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParamSpecPool, cannot ref(_ptr)
    }



}

// MARK: no ParamSpecPool properties

// MARK: no ParamSpecPool signals


// MARK: ParamSpecPool Record: ParamSpecPoolProtocol extension (methods and fields)
public extension ParamSpecPoolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecPool` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GParamSpecPool>! { return ptr?.assumingMemoryBound(to: GParamSpecPool.self) }

    /// Inserts a `GParamSpec` in the pool.
    @inlinable func insert<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT, ownerType: GType) {
        g_param_spec_pool_insert(_ptr, pspec.param_spec_ptr, ownerType)
    
    }

    /// Gets an array of all `GParamSpecs` owned by `owner_type` in
    /// the pool.
    @inlinable func list(ownerType: GType, nPspecsP: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>! {
        let rv = g_param_spec_pool_list(_ptr, ownerType, nPspecsP)
        return rv
    }

    /// Gets an `GList` of all `GParamSpecs` owned by `owner_type` in
    /// the pool.
    @inlinable func listOwned(ownerType: GType) -> GLib.ListRef! {
        let rv = GLib.ListRef(g_param_spec_pool_list_owned(_ptr, ownerType))
        return rv
    }

    /// Looks up a `GParamSpec` in the pool.
    @inlinable func lookup(paramName: UnsafePointer<gchar>!, ownerType: GType, walkAncestors: Bool) -> ParamSpecRef! {
        let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_pool_lookup(_ptr, paramName, ownerType, gboolean((walkAncestors) ? 1 : 0))))
        return rv
    }

    /// Removes a `GParamSpec` from the pool.
    @inlinable func remove<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) {
        g_param_spec_pool_remove(_ptr, pspec.param_spec_ptr)
    
    }


}



