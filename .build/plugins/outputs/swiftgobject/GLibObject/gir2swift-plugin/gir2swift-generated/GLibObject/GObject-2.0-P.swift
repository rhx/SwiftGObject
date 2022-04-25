import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecClass Record

/// The class structure for the GParamSpec type.
/// Normally, GParamSpec classes are filled by
/// `g_param_type_register_static()`.
///
/// The `ParamSpecClassProtocol` protocol exposes the methods and properties of an underlying `GParamSpecClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecClass`.
/// Alternatively, use `ParamSpecClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecClassProtocol {
        /// Untyped pointer to the underlying `GParamSpecClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecClass` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecClass>! { get }

    /// Required Initialiser for types conforming to `ParamSpecClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The class structure for the GParamSpec type.
/// Normally, GParamSpec classes are filled by
/// `g_param_type_register_static()`.
///
/// The `ParamSpecClassRef` type acts as a lightweight Swift reference to an underlying `GParamSpecClass` instance.
/// It exposes methods that can operate on this data type through `ParamSpecClassProtocol` conformance.
/// Use `ParamSpecClassRef` only as an `unowned` reference to an existing `GParamSpecClass` instance.
///
public struct ParamSpecClassRef: ParamSpecClassProtocol {
        /// Untyped pointer to the underlying `GParamSpecClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecClass>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecClassProtocol`
    @inlinable init<T: ParamSpecClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The class structure for the GParamSpec type.
/// Normally, GParamSpec classes are filled by
/// `g_param_type_register_static()`.
///
/// The `ParamSpecClass` type acts as an owner of an underlying `GParamSpecClass` instance.
/// It provides the methods that can operate on this data type through `ParamSpecClassProtocol` conformance.
/// Use `ParamSpecClass` as a strong reference or owner of a `GParamSpecClass` instance.
///
open class ParamSpecClass: ParamSpecClassProtocol {
        /// Untyped pointer to the underlying `GParamSpecClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParamSpecClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ParamSpecClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParamSpecClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ParamSpecClassProtocol`
    /// `GParamSpecClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParamSpecClassProtocol`
    @inlinable public init<T: ParamSpecClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GParamSpecClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GParamSpecClass`.
    deinit {
        // no reference counting for GParamSpecClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParamSpecClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParamSpecClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParamSpecClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParamSpecClass, cannot ref(_ptr)
    }



}

// MARK: no ParamSpecClass properties

// MARK: no ParamSpecClass signals

// MARK: ParamSpecClass has no signals
// MARK: ParamSpecClass Record: ParamSpecClassProtocol extension (methods and fields)
public extension ParamSpecClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GParamSpecClass>! { return ptr?.assumingMemoryBound(to: GParamSpecClass.self) }


    /// the parent class
    @inlinable var gTypeClass: GTypeClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.g_type_class
    return rv
        }
    }

    /// the `GValue` type for this parameter
    @inlinable var valueType: GType {
        /// the `GValue` type for this parameter
        get {
            let rv = _ptr.pointee.value_type
    return rv
        }
    }

    // var finalize is unavailable because finalize is void

    // var valueSetDefault is unavailable because value_set_default is void

    // var valueValidate is unavailable because value_validate is void

    // var valuesCmp is unavailable because values_cmp is void

    // var dummy is unavailable because dummy is private

}



// MARK: - ParamSpecPool Record

/// A `GParamSpecPool` maintains a collection of `GParamSpecs` which can be
/// quickly accessed by owner and name.
/// 
/// The implementation of the `GObject` property system uses such a pool to
/// store the `GParamSpecs` of the properties all object types.
///
/// The `ParamSpecPoolProtocol` protocol exposes the methods and properties of an underlying `GParamSpecPool` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecPool`.
/// Alternatively, use `ParamSpecPoolRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecPoolProtocol {
        /// Untyped pointer to the underlying `GParamSpecPool` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecPool` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecPool>! { get }

    /// Required Initialiser for types conforming to `ParamSpecPoolProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpecPool` maintains a collection of `GParamSpecs` which can be
/// quickly accessed by owner and name.
/// 
/// The implementation of the `GObject` property system uses such a pool to
/// store the `GParamSpecs` of the properties all object types.
///
/// The `ParamSpecPoolRef` type acts as a lightweight Swift reference to an underlying `GParamSpecPool` instance.
/// It exposes methods that can operate on this data type through `ParamSpecPoolProtocol` conformance.
/// Use `ParamSpecPoolRef` only as an `unowned` reference to an existing `GParamSpecPool` instance.
///
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

/// A `GParamSpecPool` maintains a collection of `GParamSpecs` which can be
/// quickly accessed by owner and name.
/// 
/// The implementation of the `GObject` property system uses such a pool to
/// store the `GParamSpecs` of the properties all object types.
///
/// The `ParamSpecPool` type acts as an owner of an underlying `GParamSpecPool` instance.
/// It provides the methods that can operate on this data type through `ParamSpecPoolProtocol` conformance.
/// Use `ParamSpecPool` as a strong reference or owner of a `GParamSpecPool` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: ParamSpecPool has no signals
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
        let result = g_param_spec_pool_list(_ptr, ownerType, nPspecsP)
        let rv = result
        return rv
    }

    /// Gets an `GList` of all `GParamSpecs` owned by `owner_type` in
    /// the pool.
    @inlinable func listOwned(ownerType: GType) -> GLib.ListRef! {
        let result = g_param_spec_pool_list_owned(_ptr, ownerType)
        let rv = GLib.ListRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Looks up a `GParamSpec` in the pool.
    @inlinable func lookup(paramName: UnsafePointer<gchar>!, ownerType: GType, walkAncestors: Bool) -> GLibObject.ParamSpecRef! {
        let result = g_param_spec_pool_lookup(_ptr, paramName, ownerType, gboolean((walkAncestors) ? 1 : 0))
        let rv = ParamSpecRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Removes a `GParamSpec` from the pool.
    @inlinable func remove<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) {
        
        g_param_spec_pool_remove(_ptr, pspec.param_spec_ptr)
        
    }


}



// MARK: - ParamSpecTypeInfo Record

/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// 
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
///
/// The `ParamSpecTypeInfoProtocol` protocol exposes the methods and properties of an underlying `GParamSpecTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecTypeInfo`.
/// Alternatively, use `ParamSpecTypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo>! { get }

    /// Required Initialiser for types conforming to `ParamSpecTypeInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// 
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
///
/// The `ParamSpecTypeInfoRef` type acts as a lightweight Swift reference to an underlying `GParamSpecTypeInfo` instance.
/// It exposes methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfoRef` only as an `unowned` reference to an existing `GParamSpecTypeInfo` instance.
///
public struct ParamSpecTypeInfoRef: ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecTypeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecTypeInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecTypeInfo>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecTypeInfoProtocol`
    @inlinable init<T: ParamSpecTypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// 
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
///
/// The `ParamSpecTypeInfo` type acts as an owner of an underlying `GParamSpecTypeInfo` instance.
/// It provides the methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfo` as a strong reference or owner of a `GParamSpecTypeInfo` instance.
///
open class ParamSpecTypeInfo: ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecTypeInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecTypeInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParamSpecTypeInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ParamSpecTypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ParamSpecTypeInfoProtocol`
    /// `GParamSpecTypeInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParamSpecTypeInfoProtocol`
    @inlinable public init<T: ParamSpecTypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GParamSpecTypeInfo`.
    deinit {
        // no reference counting for GParamSpecTypeInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParamSpecTypeInfo, cannot ref(_ptr)
    }



}

// MARK: no ParamSpecTypeInfo properties

// MARK: no ParamSpecTypeInfo signals

// MARK: ParamSpecTypeInfo has no signals
// MARK: ParamSpecTypeInfo Record: ParamSpecTypeInfoProtocol extension (methods and fields)
public extension ParamSpecTypeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecTypeInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo>! { return ptr?.assumingMemoryBound(to: GParamSpecTypeInfo.self) }

    /// Registers `name` as the name of a new static type derived
    /// from `G_TYPE_PARAM`.
    /// 
    /// The type system uses the information contained in the `GParamSpecTypeInfo`
    /// structure pointed to by `info` to manage the `GParamSpec` type and its
    /// instances.
    @inlinable func paramTypeRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
        let result = g_param_type_register_static(name, _ptr)
        let rv = result
        return rv
    }

    /// Size of the instance (object) structure.
    @inlinable var instanceSize: guint16 {
        /// Size of the instance (object) structure.
        get {
            let rv = _ptr.pointee.instance_size
    return rv
        }
        /// Size of the instance (object) structure.
         set {
            _ptr.pointee.instance_size = newValue
        }
    }

    /// Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator](#glib-Memory-Slices) now.
    @inlinable var nPreallocs: guint16 {
        /// Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator](#glib-Memory-Slices) now.
        get {
            let rv = _ptr.pointee.n_preallocs
    return rv
        }
        /// Prior to GLib 2.10, it specified the number of pre-allocated (cached) instances to reserve memory for (0 indicates no caching). Since GLib 2.10, it is ignored, since instances are allocated with the [slice allocator](#glib-Memory-Slices) now.
         set {
            _ptr.pointee.n_preallocs = newValue
        }
    }

    // var instanceInit is unavailable because instance_init is void

    /// The `GType` of values conforming to this `GParamSpec`
    @inlinable var valueType: GType {
        /// The `GType` of values conforming to this `GParamSpec`
        get {
            let rv = _ptr.pointee.value_type
    return rv
        }
        /// The `GType` of values conforming to this `GParamSpec`
         set {
            _ptr.pointee.value_type = newValue
        }
    }

    // var finalize is unavailable because finalize is void

    // var valueSetDefault is unavailable because value_set_default is void

    // var valueValidate is unavailable because value_validate is void

    // var valuesCmp is unavailable because values_cmp is void

}



// MARK: - Parameter Record

/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
///
/// The `ParameterProtocol` protocol exposes the methods and properties of an underlying `GParameter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Parameter`.
/// Alternatively, use `ParameterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParameterProtocol {
        /// Untyped pointer to the underlying `GParameter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParameter` instance.
    var _ptr: UnsafeMutablePointer<GParameter>! { get }

    /// Required Initialiser for types conforming to `ParameterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
///
/// The `ParameterRef` type acts as a lightweight Swift reference to an underlying `GParameter` instance.
/// It exposes methods that can operate on this data type through `ParameterProtocol` conformance.
/// Use `ParameterRef` only as an `unowned` reference to an existing `GParameter` instance.
///
public struct ParameterRef: ParameterProtocol {
        /// Untyped pointer to the underlying `GParameter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParameterRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParameter>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParameter>?) {
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

    /// Reference intialiser for a related type that implements `ParameterProtocol`
    @inlinable init<T: ParameterProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
///
/// The `Parameter` type acts as an owner of an underlying `GParameter` instance.
/// It provides the methods that can operate on this data type through `ParameterProtocol` conformance.
/// Use `Parameter` as a strong reference or owner of a `GParameter` instance.
///
open class Parameter: ParameterProtocol {
        /// Untyped pointer to the underlying `GParameter` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParameter>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParameter>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParameter` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Parameter` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParameter>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParameter, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ParameterProtocol`
    /// `GParameter` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParameterProtocol`
    @inlinable public init<T: ParameterProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GParameter, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GParameter`.
    deinit {
        // no reference counting for GParameter, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParameter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParameter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParameter, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParameterProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParameter, cannot ref(_ptr)
    }



}

// MARK: no Parameter properties

// MARK: no Parameter signals

// MARK: Parameter has no signals
// MARK: Parameter Record: ParameterProtocol extension (methods and fields)
public extension ParameterProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParameter` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GParameter>! { return ptr?.assumingMemoryBound(to: GParameter.self) }


    /// the parameter name
    @inlinable var name: UnsafePointer<gchar>! {
        /// the parameter name
        get {
            let rv = _ptr.pointee.name
    return rv
        }
        /// the parameter name
         set {
            _ptr.pointee.name = newValue
        }
    }

    /// the parameter value
    @inlinable var value: GValue {
        /// the parameter value
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// the parameter value
         set {
            _ptr.pointee.value = newValue
        }
    }

}



// MARK: - ParamSpec Class

/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ## Parameter names # <a name="canonical-parameter-names"></a>
/// 
/// A property name consists of one or more segments consisting of ASCII letters
/// and digits, separated by either the `-` or `_` character. The first
/// character of a property name must be a letter. These are the same rules as
/// for signal naming (see `g_signal_new()`).
/// 
/// When creating and looking up a `GParamSpec`, either separator can be
/// used, but they cannot be mixed. Using `-` is considerably more
/// efficient, and is the ‘canonical form’. Using `_` is discouraged.
///
/// The `ParamSpecProtocol` protocol exposes the methods and properties of an underlying `GParamSpec` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpec`.
/// Alternatively, use `ParamSpecRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpec` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpec` instance.
    var param_spec_ptr: UnsafeMutablePointer<GParamSpec>! { get }

    /// Required Initialiser for types conforming to `ParamSpecProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ## Parameter names # <a name="canonical-parameter-names"></a>
/// 
/// A property name consists of one or more segments consisting of ASCII letters
/// and digits, separated by either the `-` or `_` character. The first
/// character of a property name must be a letter. These are the same rules as
/// for signal naming (see `g_signal_new()`).
/// 
/// When creating and looking up a `GParamSpec`, either separator can be
/// used, but they cannot be mixed. Using `-` is considerably more
/// efficient, and is the ‘canonical form’. Using `_` is discouraged.
///
/// The `ParamSpecRef` type acts as a lightweight Swift reference to an underlying `GParamSpec` instance.
/// It exposes methods that can operate on this data type through `ParamSpecProtocol` conformance.
/// Use `ParamSpecRef` only as an `unowned` reference to an existing `GParamSpec` instance.
///
public struct ParamSpecRef: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpec` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpec>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpec>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecProtocol`
    @inlinable init<T: ParamSpecProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GParamSpec` instance.
    /// 
    /// See [canonical parameter names](#canonical-parameter-names) for details of
    /// the rules for `name`. Names which violate these rules lead to undefined
    /// behaviour.
    /// 
    /// Beyond the name, `GParamSpecs` have two more descriptive
    /// strings associated with them, the `nick`, which should be suitable
    /// for use as a label for the property in a property editor, and the
    /// `blurb`, which should be a somewhat longer description, suitable for
    /// e.g. a tooltip. The `nick` and `blurb` should ideally be localized.
    @inlinable static func internal_(paramType: GType, name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> GLibObject.ParamSpecRef! {
            let result = g_param_spec_internal(paramType, name, nick, blurb, flags.value)
        guard let rv = ParamSpecRef(gpointer: result) else { return nil }
        return rv
    }
}

/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ## Parameter names # <a name="canonical-parameter-names"></a>
/// 
/// A property name consists of one or more segments consisting of ASCII letters
/// and digits, separated by either the `-` or `_` character. The first
/// character of a property name must be a letter. These are the same rules as
/// for signal naming (see `g_signal_new()`).
/// 
/// When creating and looking up a `GParamSpec`, either separator can be
/// used, but they cannot be mixed. Using `-` is considerably more
/// efficient, and is the ‘canonical form’. Using `_` is discouraged.
///
/// The `ParamSpec` type acts as a reference-counted owner of an underlying `GParamSpec` instance.
/// It provides the methods that can operate on this data type through `ParamSpecProtocol` conformance.
/// Use `ParamSpec` as a strong reference or owner of a `GParamSpec` instance.
///
open class ParamSpec: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpec` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpec>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpec>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpec`.
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(op)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Reference intialiser for a related type that implements `ParamSpecProtocol`
    /// Will retain `GParamSpec`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecProtocol`
    @inlinable public init<T: ParamSpecProtocol>(_ other: T) {
        ptr = other.ptr
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Releases the underlying `GParamSpec` instance using `g_param_spec_unref`.
    deinit {
        g_param_spec_unref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }


    /// Creates a new `GParamSpec` instance.
    /// 
    /// See [canonical parameter names](#canonical-parameter-names) for details of
    /// the rules for `name`. Names which violate these rules lead to undefined
    /// behaviour.
    /// 
    /// Beyond the name, `GParamSpecs` have two more descriptive
    /// strings associated with them, the `nick`, which should be suitable
    /// for use as a label for the property in a property editor, and the
    /// `blurb`, which should be a somewhat longer description, suitable for
    /// e.g. a tooltip. The `nick` and `blurb` should ideally be localized.
    @inlinable public static func internal_(paramType: GType, name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> GLibObject.ParamSpec! {
            let result = g_param_spec_internal(paramType, name, nick, blurb, flags.value)
        guard let rv = ParamSpec(gpointer: result) else { return nil }
        return rv
    }

}

// MARK: no ParamSpec properties

// MARK: no ParamSpec signals

// MARK: ParamSpec has no signals
// MARK: ParamSpec Class: ParamSpecProtocol extension (methods and fields)
public extension ParamSpecProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpec` instance.
    @inlinable var param_spec_ptr: UnsafeMutablePointer<GParamSpec>! { return ptr?.assumingMemoryBound(to: GParamSpec.self) }

    /// Get the short description of a `GParamSpec`.
    @inlinable func getBlurb() -> String! {
        let result = g_param_spec_get_blurb(param_spec_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the default value of `pspec` as a pointer to a `GValue`.
    /// 
    /// The `GValue` will remain valid for the life of `pspec`.
    @inlinable func getDefaultValue() -> GLibObject.ValueRef! {
        let result = g_param_spec_get_default_value(param_spec_ptr)
        let rv = ValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Get the name of a `GParamSpec`.
    /// 
    /// The name is always an "interned" string (as per `g_intern_string()`).
    /// This allows for pointer-value comparisons.
    @inlinable func getName() -> String! {
        let result = g_param_spec_get_name(param_spec_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets the GQuark for the name.
    @inlinable func getNameQuark() -> GQuark {
        let result = g_param_spec_get_name_quark(param_spec_ptr)
        let rv = result
        return rv
    }

    /// Get the nickname of a `GParamSpec`.
    @inlinable func getNick() -> String! {
        let result = g_param_spec_get_nick(param_spec_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Gets back user data pointers stored via `g_param_spec_set_qdata()`.
    @inlinable func getQdata(quark: GQuark) -> gpointer? {
        let result = g_param_spec_get_qdata(param_spec_ptr, quark)
        let rv = result
        return rv
    }

    /// If the paramspec redirects operations to another paramspec,
    /// returns that paramspec. Redirect is used typically for
    /// providing a new implementation of a property in a derived
    /// type while preserving all the properties from the parent
    /// type. Redirection is established by creating a property
    /// of type `GParamSpecOverride`. See `g_object_class_override_property()`
    /// for an example of the use of this capability.
    @inlinable func getRedirectTarget() -> GLibObject.ParamSpecRef! {
        let result = g_param_spec_get_redirect_target(param_spec_ptr)
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Increments the reference count of `pspec`.
    @discardableResult @inlinable func ref() -> GLibObject.ParamSpecRef! {
        let result = g_param_spec_ref(param_spec_ptr)
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Convenience function to ref and sink a `GParamSpec`.
    @inlinable @discardableResult func refSink() -> GLibObject.ParamSpecRef! {
        let result = g_param_spec_ref_sink(param_spec_ptr)
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sets an opaque, named pointer on a `GParamSpec`. The name is
    /// specified through a `GQuark` (retrieved e.g. via
    /// `g_quark_from_static_string()`), and the pointer can be gotten back
    /// from the `pspec` with `g_param_spec_get_qdata()`.  Setting a
    /// previously set user data pointer, overrides (frees) the old pointer
    /// set, using `nil` as pointer essentially removes the data stored.
    @inlinable func setQdata(quark: GQuark, data: gpointer? = nil) {
        
        g_param_spec_set_qdata(param_spec_ptr, quark, data)
        
    }

    /// This function works like `g_param_spec_set_qdata()`, but in addition,
    /// a `void (*destroy) (gpointer)` function may be
    /// specified which is called with `data` as argument when the `pspec` is
    /// finalized, or the data is being overwritten by a call to
    /// `g_param_spec_set_qdata()` with the same `quark`.
    @inlinable func setQdataFull(quark: GQuark, data: gpointer? = nil, destroy: GDestroyNotify? = nil) {
        
        g_param_spec_set_qdata_full(param_spec_ptr, quark, data, destroy)
        
    }

    /// The initial reference count of a newly created `GParamSpec` is 1,
    /// even though no one has explicitly called `g_param_spec_ref()` on it
    /// yet. So the initial reference count is flagged as "floating", until
    /// someone calls `g_param_spec_ref (pspec); g_param_spec_sink
    /// (pspec);` in sequence on it, taking over the initial
    /// reference count (thus ending up with a `pspec` that has a reference
    /// count of 1 still, but is not flagged "floating" anymore).
    @inlinable func sink() {
        
        g_param_spec_sink(param_spec_ptr)
        
    }

    /// Gets back user data pointers stored via `g_param_spec_set_qdata()`
    /// and removes the `data` from `pspec` without invoking its `destroy()`
    /// function (if any was set).  Usually, calling this function is only
    /// required to update user data pointers with a destroy notifier.
    @inlinable func stealQdata(quark: GQuark) -> gpointer? {
        let result = g_param_spec_steal_qdata(param_spec_ptr, quark)
        let rv = result
        return rv
    }

    /// Decrements the reference count of a `pspec`.
    @inlinable func unref() {
        
        g_param_spec_unref(param_spec_ptr)
        
    }

    /// Creates a new property of type `GParamSpecOverride`. This is used
    /// to direct operations to another paramspec, and will not be directly
    /// useful unless you are implementing a new base type similar to GObject.
    @inlinable func paramSpecOverride(name: UnsafePointer<gchar>!) -> GLibObject.ParamSpecRef! {
        let result = g_param_spec_override(name, param_spec_ptr)
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new `GParamSpecValueArray` instance specifying a
    /// `G_TYPE_VALUE_ARRAY` property. `G_TYPE_VALUE_ARRAY` is a
    /// `G_TYPE_BOXED` type, as such, `GValue` structures for this property
    /// can be accessed with `g_value_set_boxed()` and `g_value_get_boxed()`.
    /// 
    /// See `g_param_spec_internal()` for details on property names.
    @inlinable func paramSpecValueArray(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> GLibObject.ParamSpecRef! {
        let result = g_param_spec_value_array(name, nick, blurb, param_spec_ptr, flags.value)
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also `g_value_type_transformable()`, `g_value_transform()` and
    /// `g_param_value_validate()`.
    @inlinable func paramValueConvert<ValueT: ValueProtocol>(srcValue: ValueT, destValue: ValueT, strictValidation: Bool) -> Bool {
        let result = g_param_value_convert(param_spec_ptr, srcValue.value_ptr, destValue.value_ptr, gboolean((strictValidation) ? 1 : 0))
        let rv = ((result) != 0)
        return rv
    }

    /// Checks whether `value` contains the default value as specified in `pspec`.
    @inlinable func paramValueDefaults<ValueT: ValueProtocol>(value: ValueT) -> Bool {
        let result = g_param_value_defaults(param_spec_ptr, value.value_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Sets `value` to its default value as specified in `pspec`.
    @inlinable func paramValueSetDefault<ValueT: ValueProtocol>(value: ValueT) {
        
        g_param_value_set_default(param_spec_ptr, value.value_ptr)
        
    }

    /// Ensures that the contents of `value` comply with the specifications
    /// set out by `pspec`. For example, a `GParamSpecInt` might require
    /// that integers stored in `value` may not be smaller than -42 and not be
    /// greater than +42. If `value` contains an integer outside of this range,
    /// it is modified accordingly, so the resulting value will fit into the
    /// range -42 .. +42.
    @inlinable func paramValueValidate<ValueT: ValueProtocol>(value: ValueT) -> Bool {
        let result = g_param_value_validate(param_spec_ptr, value.value_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
    /// if `value1` is found to be less than, equal to or greater than `value2`,
    /// respectively.
    @inlinable func paramValuesCmp<ValueT: ValueProtocol>(value1: ValueT, value2: ValueT) -> Int {
        let result = g_param_values_cmp(param_spec_ptr, value1.value_ptr, value2.value_ptr)
        let rv = Int(result)
        return rv
    }
    /// Get the short description of a `GParamSpec`.
    @inlinable var blurb: String! {
        /// Get the short description of a `GParamSpec`.
        get {
            let result = g_param_spec_get_blurb(param_spec_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the default value of `pspec` as a pointer to a `GValue`.
    /// 
    /// The `GValue` will remain valid for the life of `pspec`.
    @inlinable var defaultValue: GLibObject.ValueRef! {
        /// Gets the default value of `pspec` as a pointer to a `GValue`.
        /// 
        /// The `GValue` will remain valid for the life of `pspec`.
        get {
            let result = g_param_spec_get_default_value(param_spec_ptr)
        let rv = ValueRef(gconstpointer: gconstpointer(result))
            return rv
        }
    }

    /// Get the name of a `GParamSpec`.
    /// 
    /// The name is always an "interned" string (as per `g_intern_string()`).
    /// This allows for pointer-value comparisons.
    @inlinable var name: String! {
        /// Get the name of a `GParamSpec`.
        /// 
        /// The name is always an "interned" string (as per `g_intern_string()`).
        /// This allows for pointer-value comparisons.
        get {
            let result = g_param_spec_get_name(param_spec_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the GQuark for the name.
    @inlinable var nameQuark: GQuark {
        /// Gets the GQuark for the name.
        get {
            let result = g_param_spec_get_name_quark(param_spec_ptr)
        let rv = result
            return rv
        }
    }

    /// Get the nickname of a `GParamSpec`.
    @inlinable var nick: String! {
        /// Get the nickname of a `GParamSpec`.
        get {
            let result = g_param_spec_get_nick(param_spec_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
    }

    /// If the paramspec redirects operations to another paramspec,
    /// returns that paramspec. Redirect is used typically for
    /// providing a new implementation of a property in a derived
    /// type while preserving all the properties from the parent
    /// type. Redirection is established by creating a property
    /// of type `GParamSpecOverride`. See `g_object_class_override_property()`
    /// for an example of the use of this capability.
    @inlinable var redirectTarget: GLibObject.ParamSpecRef! {
        /// If the paramspec redirects operations to another paramspec,
        /// returns that paramspec. Redirect is used typically for
        /// providing a new implementation of a property in a derived
        /// type while preserving all the properties from the parent
        /// type. Redirection is established by creating a property
        /// of type `GParamSpecOverride`. See `g_object_class_override_property()`
        /// for an example of the use of this capability.
        get {
            let result = g_param_spec_get_redirect_target(param_spec_ptr)
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(result)) else { return nil }
            return rv
        }
    }

    /// private `GTypeInstance` portion
    @inlinable var gTypeInstance: GTypeInstance {
        /// private `GTypeInstance` portion
        get {
            let rv = param_spec_ptr.pointee.g_type_instance
    return rv
        }
    }

    /// name of this parameter: always an interned string
    @inlinable var _name: UnsafePointer<gchar>! {
        /// name of this parameter: always an interned string
        get {
            let rv = param_spec_ptr.pointee.name
    return rv
        }
    }

    /// `GParamFlags` flags for this parameter
    @inlinable var flags: GLibObject.ParamFlags {
        /// `GParamFlags` flags for this parameter
        get {
            let rv = ParamFlags(param_spec_ptr.pointee.flags)
    return rv
        }
    }

    /// the `GValue` type for this parameter
    @inlinable var valueType: GType {
        /// the `GValue` type for this parameter
        get {
            let rv = param_spec_ptr.pointee.value_type
    return rv
        }
    }

    /// `GType` type that uses (introduces) this parameter
    @inlinable var ownerType: GType {
        /// `GType` type that uses (introduces) this parameter
        get {
            let rv = param_spec_ptr.pointee.owner_type
    return rv
        }
    }

    // var Nick is unavailable because _nick is private

    // var Blurb is unavailable because _blurb is private

    // var qdata is unavailable because qdata is private

    // var refCount is unavailable because ref_count is private

    // var paramID is unavailable because param_id is private

}



// MARK: - ParamSpecBoolean Class

/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
///
/// The `ParamSpecBooleanProtocol` protocol exposes the methods and properties of an underlying `GParamSpecBoolean` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecBoolean`.
/// Alternatively, use `ParamSpecBooleanRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecBooleanProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoolean` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecBoolean` instance.
    var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean>! { get }

    /// Required Initialiser for types conforming to `ParamSpecBooleanProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
///
/// The `ParamSpecBooleanRef` type acts as a lightweight Swift reference to an underlying `GParamSpecBoolean` instance.
/// It exposes methods that can operate on this data type through `ParamSpecBooleanProtocol` conformance.
/// Use `ParamSpecBooleanRef` only as an `unowned` reference to an existing `GParamSpecBoolean` instance.
///
public struct ParamSpecBooleanRef: ParamSpecBooleanProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoolean` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_boolean_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecBooleanRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecBoolean>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecBoolean>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecBoolean>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecBoolean>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecBooleanProtocol`
    @inlinable init<T: ParamSpecBooleanProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
///
/// The `ParamSpecBoolean` type acts as a reference-counted owner of an underlying `GParamSpecBoolean` instance.
/// It provides the methods that can operate on this data type through `ParamSpecBooleanProtocol` conformance.
/// Use `ParamSpecBoolean` as a strong reference or owner of a `GParamSpecBoolean` instance.
///
open class ParamSpecBoolean: ParamSpec, ParamSpecBooleanProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecBoolean>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecBoolean>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecBoolean>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecBoolean`.
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecBooleanProtocol`
    /// Will retain `GParamSpecBoolean`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecBooleanProtocol`
    @inlinable public init<T: ParamSpecBooleanProtocol>(paramSpecBoolean other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecBoolean properties

// MARK: no ParamSpecBoolean signals

// MARK: ParamSpecBoolean has no signals
// MARK: ParamSpecBoolean Class: ParamSpecBooleanProtocol extension (methods and fields)
public extension ParamSpecBooleanProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoolean` instance.
    @inlinable var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean>! { return ptr?.assumingMemoryBound(to: GParamSpecBoolean.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_boolean_ptr.pointee.parent_instance
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gboolean {
        /// default value for the property specified
        get {
            let rv = param_spec_boolean_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecBoxed Class

/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
///
/// The `ParamSpecBoxedProtocol` protocol exposes the methods and properties of an underlying `GParamSpecBoxed` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecBoxed`.
/// Alternatively, use `ParamSpecBoxedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecBoxedProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoxed` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecBoxed` instance.
    var param_spec_boxed_ptr: UnsafeMutablePointer<GParamSpecBoxed>! { get }

    /// Required Initialiser for types conforming to `ParamSpecBoxedProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
///
/// The `ParamSpecBoxedRef` type acts as a lightweight Swift reference to an underlying `GParamSpecBoxed` instance.
/// It exposes methods that can operate on this data type through `ParamSpecBoxedProtocol` conformance.
/// Use `ParamSpecBoxedRef` only as an `unowned` reference to an existing `GParamSpecBoxed` instance.
///
public struct ParamSpecBoxedRef: ParamSpecBoxedProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoxed` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_boxed_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecBoxedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecBoxed>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecBoxed>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecBoxed>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecBoxed>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecBoxedProtocol`
    @inlinable init<T: ParamSpecBoxedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
///
/// The `ParamSpecBoxed` type acts as a reference-counted owner of an underlying `GParamSpecBoxed` instance.
/// It provides the methods that can operate on this data type through `ParamSpecBoxedProtocol` conformance.
/// Use `ParamSpecBoxed` as a strong reference or owner of a `GParamSpecBoxed` instance.
///
open class ParamSpecBoxed: ParamSpec, ParamSpecBoxedProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecBoxed>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecBoxed>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecBoxed>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecBoxed>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecBoxed`.
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecBoxed>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecBoxedProtocol`
    /// Will retain `GParamSpecBoxed`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecBoxedProtocol`
    @inlinable public init<T: ParamSpecBoxedProtocol>(paramSpecBoxed other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecBoxed properties

// MARK: no ParamSpecBoxed signals

// MARK: ParamSpecBoxed has no signals
// MARK: ParamSpecBoxed Class: ParamSpecBoxedProtocol extension (methods and fields)
public extension ParamSpecBoxedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoxed` instance.
    @inlinable var param_spec_boxed_ptr: UnsafeMutablePointer<GParamSpecBoxed>! { return ptr?.assumingMemoryBound(to: GParamSpecBoxed.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_boxed_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - ParamSpecChar Class

/// A `GParamSpec` derived structure that contains the meta data for character properties.
///
/// The `ParamSpecCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecChar`.
/// Alternatively, use `ParamSpecCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecCharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecChar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecChar` instance.
    var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar>! { get }

    /// Required Initialiser for types conforming to `ParamSpecCharProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for character properties.
///
/// The `ParamSpecCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecCharRef` only as an `unowned` reference to an existing `GParamSpecChar` instance.
///
public struct ParamSpecCharRef: ParamSpecCharProtocol {
        /// Untyped pointer to the underlying `GParamSpecChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_char_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecCharRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecChar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecChar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecChar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecChar>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    @inlinable init<T: ParamSpecCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for character properties.
///
/// The `ParamSpecChar` type acts as a reference-counted owner of an underlying `GParamSpecChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecChar` as a strong reference or owner of a `GParamSpecChar` instance.
///
open class ParamSpecChar: ParamSpec, ParamSpecCharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecChar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecChar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecChar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecChar`.
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    /// Will retain `GParamSpecChar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecCharProtocol`
    @inlinable public init<T: ParamSpecCharProtocol>(paramSpecChar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecChar properties

// MARK: no ParamSpecChar signals

// MARK: ParamSpecChar has no signals
// MARK: ParamSpecChar Class: ParamSpecCharProtocol extension (methods and fields)
public extension ParamSpecCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecChar` instance.
    @inlinable var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar>! { return ptr?.assumingMemoryBound(to: GParamSpecChar.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_char_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gint8 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_char_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gint8 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_char_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint8 {
        /// default value for the property specified
        get {
            let rv = param_spec_char_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecDouble Class

/// A `GParamSpec` derived structure that contains the meta data for double properties.
///
/// The `ParamSpecDoubleProtocol` protocol exposes the methods and properties of an underlying `GParamSpecDouble` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecDouble`.
/// Alternatively, use `ParamSpecDoubleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecDoubleProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecDouble` instance.
    var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble>! { get }

    /// Required Initialiser for types conforming to `ParamSpecDoubleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for double properties.
///
/// The `ParamSpecDoubleRef` type acts as a lightweight Swift reference to an underlying `GParamSpecDouble` instance.
/// It exposes methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDoubleRef` only as an `unowned` reference to an existing `GParamSpecDouble` instance.
///
public struct ParamSpecDoubleRef: ParamSpecDoubleProtocol {
        /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_double_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecDoubleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecDouble>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecDouble>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecDouble>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecDouble>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    @inlinable init<T: ParamSpecDoubleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for double properties.
///
/// The `ParamSpecDouble` type acts as a reference-counted owner of an underlying `GParamSpecDouble` instance.
/// It provides the methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDouble` as a strong reference or owner of a `GParamSpecDouble` instance.
///
open class ParamSpecDouble: ParamSpec, ParamSpecDoubleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecDouble>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecDouble>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecDouble>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecDouble`.
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    /// Will retain `GParamSpecDouble`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecDoubleProtocol`
    @inlinable public init<T: ParamSpecDoubleProtocol>(paramSpecDouble other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecDouble properties

// MARK: no ParamSpecDouble signals

// MARK: ParamSpecDouble has no signals
// MARK: ParamSpecDouble Class: ParamSpecDoubleProtocol extension (methods and fields)
public extension ParamSpecDoubleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecDouble` instance.
    @inlinable var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble>! { return ptr?.assumingMemoryBound(to: GParamSpecDouble.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_double_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gdouble {
        /// minimum value for the property specified
        get {
            let rv = param_spec_double_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gdouble {
        /// maximum value for the property specified
        get {
            let rv = param_spec_double_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gdouble {
        /// default value for the property specified
        get {
            let rv = param_spec_double_ptr.pointee.default_value
    return rv
        }
    }

    /// values closer than `epsilon` will be considered identical
    ///  by `g_param_values_cmp()`; the default value is 1e-90.
    @inlinable var epsilon: gdouble {
        /// values closer than `epsilon` will be considered identical
        ///  by `g_param_values_cmp()`; the default value is 1e-90.
        get {
            let rv = param_spec_double_ptr.pointee.epsilon
    return rv
        }
    }

}



// MARK: - ParamSpecEnum Class

/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
///
/// The `ParamSpecEnumProtocol` protocol exposes the methods and properties of an underlying `GParamSpecEnum` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecEnum`.
/// Alternatively, use `ParamSpecEnumRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecEnumProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecEnum` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecEnum` instance.
    var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum>! { get }

    /// Required Initialiser for types conforming to `ParamSpecEnumProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
///
/// The `ParamSpecEnumRef` type acts as a lightweight Swift reference to an underlying `GParamSpecEnum` instance.
/// It exposes methods that can operate on this data type through `ParamSpecEnumProtocol` conformance.
/// Use `ParamSpecEnumRef` only as an `unowned` reference to an existing `GParamSpecEnum` instance.
///
public struct ParamSpecEnumRef: ParamSpecEnumProtocol {
        /// Untyped pointer to the underlying `GParamSpecEnum` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_enum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecEnumRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecEnum>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecEnum>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecEnum>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecEnum>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecEnumProtocol`
    @inlinable init<T: ParamSpecEnumProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
///
/// The `ParamSpecEnum` type acts as a reference-counted owner of an underlying `GParamSpecEnum` instance.
/// It provides the methods that can operate on this data type through `ParamSpecEnumProtocol` conformance.
/// Use `ParamSpecEnum` as a strong reference or owner of a `GParamSpecEnum` instance.
///
open class ParamSpecEnum: ParamSpec, ParamSpecEnumProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecEnum>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecEnum>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecEnum>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecEnum`.
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecEnumProtocol`
    /// Will retain `GParamSpecEnum`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecEnumProtocol`
    @inlinable public init<T: ParamSpecEnumProtocol>(paramSpecEnum other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecEnum properties

// MARK: no ParamSpecEnum signals

// MARK: ParamSpecEnum has no signals
// MARK: ParamSpecEnum Class: ParamSpecEnumProtocol extension (methods and fields)
public extension ParamSpecEnumProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecEnum` instance.
    @inlinable var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum>! { return ptr?.assumingMemoryBound(to: GParamSpecEnum.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_enum_ptr.pointee.parent_instance
    return rv
        }
    }

    /// the `GEnumClass` for the enum
    @inlinable var enumClass: EnumClassRef! {
        /// the `GEnumClass` for the enum
        get {
            let rv = EnumClassRef(gconstpointer: gconstpointer(param_spec_enum_ptr.pointee.enum_class))
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint {
        /// default value for the property specified
        get {
            let rv = param_spec_enum_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecFlags Class

/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
///
/// The `ParamSpecFlagsProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFlags` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFlags`.
/// Alternatively, use `ParamSpecFlagsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecFlagsProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecFlags` instance.
    var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags>! { get }

    /// Required Initialiser for types conforming to `ParamSpecFlagsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
///
/// The `ParamSpecFlagsRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFlags` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlagsRef` only as an `unowned` reference to an existing `GParamSpecFlags` instance.
///
public struct ParamSpecFlagsRef: ParamSpecFlagsProtocol {
        /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_flags_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecFlagsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecFlags>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecFlags>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecFlags>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecFlags>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    @inlinable init<T: ParamSpecFlagsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
///
/// The `ParamSpecFlags` type acts as a reference-counted owner of an underlying `GParamSpecFlags` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlags` as a strong reference or owner of a `GParamSpecFlags` instance.
///
open class ParamSpecFlags: ParamSpec, ParamSpecFlagsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecFlags>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecFlags>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecFlags>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecFlags`.
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    /// Will retain `GParamSpecFlags`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecFlagsProtocol`
    @inlinable public init<T: ParamSpecFlagsProtocol>(paramSpecFlags other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecFlags properties

// MARK: no ParamSpecFlags signals

// MARK: ParamSpecFlags has no signals
// MARK: ParamSpecFlags Class: ParamSpecFlagsProtocol extension (methods and fields)
public extension ParamSpecFlagsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFlags` instance.
    @inlinable var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags>! { return ptr?.assumingMemoryBound(to: GParamSpecFlags.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_flags_ptr.pointee.parent_instance
    return rv
        }
    }

    /// the `GFlagsClass` for the flags
    @inlinable var flagsClass: FlagsClassRef! {
        /// the `GFlagsClass` for the flags
        get {
            let rv = FlagsClassRef(gconstpointer: gconstpointer(param_spec_flags_ptr.pointee.flags_class))
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint {
        /// default value for the property specified
        get {
            let rv = param_spec_flags_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecFloat Class

/// A `GParamSpec` derived structure that contains the meta data for float properties.
///
/// The `ParamSpecFloatProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFloat`.
/// Alternatively, use `ParamSpecFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecFloatProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecFloat` instance.
    var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat>! { get }

    /// Required Initialiser for types conforming to `ParamSpecFloatProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for float properties.
///
/// The `ParamSpecFloatRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFloat` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloatRef` only as an `unowned` reference to an existing `GParamSpecFloat` instance.
///
public struct ParamSpecFloatRef: ParamSpecFloatProtocol {
        /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_float_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecFloatRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecFloat>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecFloat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecFloat>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecFloat>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    @inlinable init<T: ParamSpecFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for float properties.
///
/// The `ParamSpecFloat` type acts as a reference-counted owner of an underlying `GParamSpecFloat` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloat` as a strong reference or owner of a `GParamSpecFloat` instance.
///
open class ParamSpecFloat: ParamSpec, ParamSpecFloatProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecFloat>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecFloat>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecFloat>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecFloat`.
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    /// Will retain `GParamSpecFloat`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecFloatProtocol`
    @inlinable public init<T: ParamSpecFloatProtocol>(paramSpecFloat other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecFloat properties

// MARK: no ParamSpecFloat signals

// MARK: ParamSpecFloat has no signals
// MARK: ParamSpecFloat Class: ParamSpecFloatProtocol extension (methods and fields)
public extension ParamSpecFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFloat` instance.
    @inlinable var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat>! { return ptr?.assumingMemoryBound(to: GParamSpecFloat.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_float_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gfloat {
        /// minimum value for the property specified
        get {
            let rv = param_spec_float_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gfloat {
        /// maximum value for the property specified
        get {
            let rv = param_spec_float_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gfloat {
        /// default value for the property specified
        get {
            let rv = param_spec_float_ptr.pointee.default_value
    return rv
        }
    }

    /// values closer than `epsilon` will be considered identical
    ///  by `g_param_values_cmp()`; the default value is 1e-30.
    @inlinable var epsilon: gfloat {
        /// values closer than `epsilon` will be considered identical
        ///  by `g_param_values_cmp()`; the default value is 1e-30.
        get {
            let rv = param_spec_float_ptr.pointee.epsilon
    return rv
        }
    }

}



// MARK: - ParamSpecGType Class

/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
///
/// The `ParamSpecGTypeProtocol` protocol exposes the methods and properties of an underlying `GParamSpecGType` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecGType`.
/// Alternatively, use `ParamSpecGTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecGTypeProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecGType` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecGType` instance.
    var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType>! { get }

    /// Required Initialiser for types conforming to `ParamSpecGTypeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
///
/// The `ParamSpecGTypeRef` type acts as a lightweight Swift reference to an underlying `GParamSpecGType` instance.
/// It exposes methods that can operate on this data type through `ParamSpecGTypeProtocol` conformance.
/// Use `ParamSpecGTypeRef` only as an `unowned` reference to an existing `GParamSpecGType` instance.
///
public struct ParamSpecGTypeRef: ParamSpecGTypeProtocol {
        /// Untyped pointer to the underlying `GParamSpecGType` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_gtype_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecGTypeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecGType>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecGType>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecGType>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecGType>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecGTypeProtocol`
    @inlinable init<T: ParamSpecGTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
///
/// The `ParamSpecGType` type acts as a reference-counted owner of an underlying `GParamSpecGType` instance.
/// It provides the methods that can operate on this data type through `ParamSpecGTypeProtocol` conformance.
/// Use `ParamSpecGType` as a strong reference or owner of a `GParamSpecGType` instance.
///
open class ParamSpecGType: ParamSpec, ParamSpecGTypeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecGType>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecGType>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecGType>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecGType`.
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecGTypeProtocol`
    /// Will retain `GParamSpecGType`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecGTypeProtocol`
    @inlinable public init<T: ParamSpecGTypeProtocol>(paramSpecGType other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecGType properties

// MARK: no ParamSpecGType signals

// MARK: ParamSpecGType has no signals
// MARK: ParamSpecGType Class: ParamSpecGTypeProtocol extension (methods and fields)
public extension ParamSpecGTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecGType` instance.
    @inlinable var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType>! { return ptr?.assumingMemoryBound(to: GParamSpecGType.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_gtype_ptr.pointee.parent_instance
    return rv
        }
    }

    /// a `GType` whose subtypes can occur as values
    @inlinable var isAType: GType {
        /// a `GType` whose subtypes can occur as values
        get {
            let rv = param_spec_gtype_ptr.pointee.is_a_type
    return rv
        }
    }

}



// MARK: - ParamSpecInt Class

/// A `GParamSpec` derived structure that contains the meta data for integer properties.
///
/// The `ParamSpecIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt`.
/// Alternatively, use `ParamSpecIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecIntProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecInt` instance.
    var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt>! { get }

    /// Required Initialiser for types conforming to `ParamSpecIntProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for integer properties.
///
/// The `ParamSpecIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecIntRef` only as an `unowned` reference to an existing `GParamSpecInt` instance.
///
public struct ParamSpecIntRef: ParamSpecIntProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecIntRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecInt>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecInt>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecInt>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    @inlinable init<T: ParamSpecIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for integer properties.
///
/// The `ParamSpecInt` type acts as a reference-counted owner of an underlying `GParamSpecInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecInt` as a strong reference or owner of a `GParamSpecInt` instance.
///
open class ParamSpecInt: ParamSpec, ParamSpecIntProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecInt>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecInt>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecInt>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecInt`.
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    /// Will retain `GParamSpecInt`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecIntProtocol`
    @inlinable public init<T: ParamSpecIntProtocol>(paramSpecInt other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecInt properties

// MARK: no ParamSpecInt signals

// MARK: ParamSpecInt has no signals
// MARK: ParamSpecInt Class: ParamSpecIntProtocol extension (methods and fields)
public extension ParamSpecIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt` instance.
    @inlinable var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt>! { return ptr?.assumingMemoryBound(to: GParamSpecInt.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_int_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gint {
        /// minimum value for the property specified
        get {
            let rv = param_spec_int_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gint {
        /// maximum value for the property specified
        get {
            let rv = param_spec_int_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint {
        /// default value for the property specified
        get {
            let rv = param_spec_int_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecInt64 Class

/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
///
/// The `ParamSpecInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt64`.
/// Alternatively, use `ParamSpecInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecInt64Protocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecInt64` instance.
    var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64>! { get }

    /// Required Initialiser for types conforming to `ParamSpecInt64Protocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
///
/// The `ParamSpecInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64Ref` only as an `unowned` reference to an existing `GParamSpecInt64` instance.
///
public struct ParamSpecInt64Ref: ParamSpecInt64Protocol {
        /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecInt64>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecInt64>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecInt64>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecInt64>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    @inlinable init<T: ParamSpecInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
///
/// The `ParamSpecInt64` type acts as a reference-counted owner of an underlying `GParamSpecInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64` as a strong reference or owner of a `GParamSpecInt64` instance.
///
open class ParamSpecInt64: ParamSpec, ParamSpecInt64Protocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecInt64>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecInt64>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecInt64>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecInt64`.
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    /// Will retain `GParamSpecInt64`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecInt64Protocol`
    @inlinable public init<T: ParamSpecInt64Protocol>(paramSpecInt64 other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecInt64 properties

// MARK: no ParamSpecInt64 signals

// MARK: ParamSpecInt64 has no signals
// MARK: ParamSpecInt64 Class: ParamSpecInt64Protocol extension (methods and fields)
public extension ParamSpecInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt64` instance.
    @inlinable var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64>! { return ptr?.assumingMemoryBound(to: GParamSpecInt64.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_int64_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gint64 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_int64_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gint64 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_int64_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint64 {
        /// default value for the property specified
        get {
            let rv = param_spec_int64_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecLong Class

/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
///
/// The `ParamSpecLongProtocol` protocol exposes the methods and properties of an underlying `GParamSpecLong` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecLong`.
/// Alternatively, use `ParamSpecLongRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecLongProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecLong` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecLong` instance.
    var param_spec_long_ptr: UnsafeMutablePointer<GParamSpecLong>! { get }

    /// Required Initialiser for types conforming to `ParamSpecLongProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
///
/// The `ParamSpecLongRef` type acts as a lightweight Swift reference to an underlying `GParamSpecLong` instance.
/// It exposes methods that can operate on this data type through `ParamSpecLongProtocol` conformance.
/// Use `ParamSpecLongRef` only as an `unowned` reference to an existing `GParamSpecLong` instance.
///
public struct ParamSpecLongRef: ParamSpecLongProtocol {
        /// Untyped pointer to the underlying `GParamSpecLong` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_long_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecLongRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecLong>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecLong>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecLong>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecLong>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecLongProtocol`
    @inlinable init<T: ParamSpecLongProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
///
/// The `ParamSpecLong` type acts as a reference-counted owner of an underlying `GParamSpecLong` instance.
/// It provides the methods that can operate on this data type through `ParamSpecLongProtocol` conformance.
/// Use `ParamSpecLong` as a strong reference or owner of a `GParamSpecLong` instance.
///
open class ParamSpecLong: ParamSpec, ParamSpecLongProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecLong>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecLong>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecLong>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecLong>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecLong`.
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecLong>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecLongProtocol`
    /// Will retain `GParamSpecLong`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecLongProtocol`
    @inlinable public init<T: ParamSpecLongProtocol>(paramSpecLong other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecLong properties

// MARK: no ParamSpecLong signals

// MARK: ParamSpecLong has no signals
// MARK: ParamSpecLong Class: ParamSpecLongProtocol extension (methods and fields)
public extension ParamSpecLongProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecLong` instance.
    @inlinable var param_spec_long_ptr: UnsafeMutablePointer<GParamSpecLong>! { return ptr?.assumingMemoryBound(to: GParamSpecLong.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_long_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: glong {
        /// minimum value for the property specified
        get {
            let rv = param_spec_long_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: glong {
        /// maximum value for the property specified
        get {
            let rv = param_spec_long_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: glong {
        /// default value for the property specified
        get {
            let rv = param_spec_long_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecObject Class

/// A `GParamSpec` derived structure that contains the meta data for object properties.
///
/// The `ParamSpecObjectProtocol` protocol exposes the methods and properties of an underlying `GParamSpecObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecObject`.
/// Alternatively, use `ParamSpecObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecObjectProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecObject` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecObject` instance.
    var param_spec_object_ptr: UnsafeMutablePointer<GParamSpecObject>! { get }

    /// Required Initialiser for types conforming to `ParamSpecObjectProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for object properties.
///
/// The `ParamSpecObjectRef` type acts as a lightweight Swift reference to an underlying `GParamSpecObject` instance.
/// It exposes methods that can operate on this data type through `ParamSpecObjectProtocol` conformance.
/// Use `ParamSpecObjectRef` only as an `unowned` reference to an existing `GParamSpecObject` instance.
///
public struct ParamSpecObjectRef: ParamSpecObjectProtocol {
        /// Untyped pointer to the underlying `GParamSpecObject` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecObjectRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecObject>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecObject>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecObject>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecObjectProtocol`
    @inlinable init<T: ParamSpecObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for object properties.
///
/// The `ParamSpecObject` type acts as a reference-counted owner of an underlying `GParamSpecObject` instance.
/// It provides the methods that can operate on this data type through `ParamSpecObjectProtocol` conformance.
/// Use `ParamSpecObject` as a strong reference or owner of a `GParamSpecObject` instance.
///
open class ParamSpecObject: ParamSpec, ParamSpecObjectProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecObject>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecObject>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecObject>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecObject>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecObject`.
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecObject>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecObjectProtocol`
    /// Will retain `GParamSpecObject`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecObjectProtocol`
    @inlinable public init<T: ParamSpecObjectProtocol>(paramSpecObject other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecObject properties

// MARK: no ParamSpecObject signals

// MARK: ParamSpecObject has no signals
// MARK: ParamSpecObject Class: ParamSpecObjectProtocol extension (methods and fields)
public extension ParamSpecObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecObject` instance.
    @inlinable var param_spec_object_ptr: UnsafeMutablePointer<GParamSpecObject>! { return ptr?.assumingMemoryBound(to: GParamSpecObject.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_object_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - ParamSpecOverride Class

/// A `GParamSpec` derived structure that redirects operations to
/// other types of `GParamSpec`.
/// 
/// All operations other than getting or setting the value are redirected,
/// including accessing the nick and blurb, validating a value, and so
/// forth.
/// 
/// See `g_param_spec_get_redirect_target()` for retrieving the overridden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
///
/// The `ParamSpecOverrideProtocol` protocol exposes the methods and properties of an underlying `GParamSpecOverride` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecOverride`.
/// Alternatively, use `ParamSpecOverrideRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecOverrideProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecOverride` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecOverride` instance.
    var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride>! { get }

    /// Required Initialiser for types conforming to `ParamSpecOverrideProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that redirects operations to
/// other types of `GParamSpec`.
/// 
/// All operations other than getting or setting the value are redirected,
/// including accessing the nick and blurb, validating a value, and so
/// forth.
/// 
/// See `g_param_spec_get_redirect_target()` for retrieving the overridden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
///
/// The `ParamSpecOverrideRef` type acts as a lightweight Swift reference to an underlying `GParamSpecOverride` instance.
/// It exposes methods that can operate on this data type through `ParamSpecOverrideProtocol` conformance.
/// Use `ParamSpecOverrideRef` only as an `unowned` reference to an existing `GParamSpecOverride` instance.
///
public struct ParamSpecOverrideRef: ParamSpecOverrideProtocol {
        /// Untyped pointer to the underlying `GParamSpecOverride` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_override_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecOverrideRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecOverride>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecOverride>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    @inlinable init<T: ParamSpecOverrideProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that redirects operations to
/// other types of `GParamSpec`.
/// 
/// All operations other than getting or setting the value are redirected,
/// including accessing the nick and blurb, validating a value, and so
/// forth.
/// 
/// See `g_param_spec_get_redirect_target()` for retrieving the overridden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
///
/// The `ParamSpecOverride` type acts as a reference-counted owner of an underlying `GParamSpecOverride` instance.
/// It provides the methods that can operate on this data type through `ParamSpecOverrideProtocol` conformance.
/// Use `ParamSpecOverride` as a strong reference or owner of a `GParamSpecOverride` instance.
///
open class ParamSpecOverride: ParamSpec, ParamSpecOverrideProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecOverride>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecOverride>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecOverride>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecOverride`.
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    /// Will retain `GParamSpecOverride`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecOverrideProtocol`
    @inlinable public init<T: ParamSpecOverrideProtocol>(paramSpecOverride other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecOverride properties

// MARK: no ParamSpecOverride signals

// MARK: ParamSpecOverride has no signals
// MARK: ParamSpecOverride Class: ParamSpecOverrideProtocol extension (methods and fields)
public extension ParamSpecOverrideProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecOverride` instance.
    @inlinable var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride>! { return ptr?.assumingMemoryBound(to: GParamSpecOverride.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var overridden is unavailable because overridden is private

}



// MARK: - ParamSpecParam Class

/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
///
/// The `ParamSpecParamProtocol` protocol exposes the methods and properties of an underlying `GParamSpecParam` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecParam`.
/// Alternatively, use `ParamSpecParamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecParamProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecParam` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecParam` instance.
    var param_spec_param_ptr: UnsafeMutablePointer<GParamSpecParam>! { get }

    /// Required Initialiser for types conforming to `ParamSpecParamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
///
/// The `ParamSpecParamRef` type acts as a lightweight Swift reference to an underlying `GParamSpecParam` instance.
/// It exposes methods that can operate on this data type through `ParamSpecParamProtocol` conformance.
/// Use `ParamSpecParamRef` only as an `unowned` reference to an existing `GParamSpecParam` instance.
///
public struct ParamSpecParamRef: ParamSpecParamProtocol {
        /// Untyped pointer to the underlying `GParamSpecParam` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_param_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecParamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecParam>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecParam>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecParam>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecParam>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecParamProtocol`
    @inlinable init<T: ParamSpecParamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
///
/// The `ParamSpecParam` type acts as a reference-counted owner of an underlying `GParamSpecParam` instance.
/// It provides the methods that can operate on this data type through `ParamSpecParamProtocol` conformance.
/// Use `ParamSpecParam` as a strong reference or owner of a `GParamSpecParam` instance.
///
open class ParamSpecParam: ParamSpec, ParamSpecParamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecParam>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecParam>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecParam>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecParam>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecParam`.
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecParam>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecParamProtocol`
    /// Will retain `GParamSpecParam`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecParamProtocol`
    @inlinable public init<T: ParamSpecParamProtocol>(paramSpecParam other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecParam properties

// MARK: no ParamSpecParam signals

// MARK: ParamSpecParam has no signals
// MARK: ParamSpecParam Class: ParamSpecParamProtocol extension (methods and fields)
public extension ParamSpecParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecParam` instance.
    @inlinable var param_spec_param_ptr: UnsafeMutablePointer<GParamSpecParam>! { return ptr?.assumingMemoryBound(to: GParamSpecParam.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_param_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - ParamSpecPointer Class

/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
///
/// The `ParamSpecPointerProtocol` protocol exposes the methods and properties of an underlying `GParamSpecPointer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecPointer`.
/// Alternatively, use `ParamSpecPointerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecPointerProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecPointer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecPointer` instance.
    var param_spec_pointer_ptr: UnsafeMutablePointer<GParamSpecPointer>! { get }

    /// Required Initialiser for types conforming to `ParamSpecPointerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
///
/// The `ParamSpecPointerRef` type acts as a lightweight Swift reference to an underlying `GParamSpecPointer` instance.
/// It exposes methods that can operate on this data type through `ParamSpecPointerProtocol` conformance.
/// Use `ParamSpecPointerRef` only as an `unowned` reference to an existing `GParamSpecPointer` instance.
///
public struct ParamSpecPointerRef: ParamSpecPointerProtocol {
        /// Untyped pointer to the underlying `GParamSpecPointer` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_pointer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecPointerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecPointer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecPointer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecPointer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecPointer>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecPointerProtocol`
    @inlinable init<T: ParamSpecPointerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
///
/// The `ParamSpecPointer` type acts as a reference-counted owner of an underlying `GParamSpecPointer` instance.
/// It provides the methods that can operate on this data type through `ParamSpecPointerProtocol` conformance.
/// Use `ParamSpecPointer` as a strong reference or owner of a `GParamSpecPointer` instance.
///
open class ParamSpecPointer: ParamSpec, ParamSpecPointerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecPointer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecPointer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecPointer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecPointer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecPointer`.
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecPointer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecPointerProtocol`
    /// Will retain `GParamSpecPointer`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecPointerProtocol`
    @inlinable public init<T: ParamSpecPointerProtocol>(paramSpecPointer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecPointer properties

// MARK: no ParamSpecPointer signals

// MARK: ParamSpecPointer has no signals
// MARK: ParamSpecPointer Class: ParamSpecPointerProtocol extension (methods and fields)
public extension ParamSpecPointerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecPointer` instance.
    @inlinable var param_spec_pointer_ptr: UnsafeMutablePointer<GParamSpecPointer>! { return ptr?.assumingMemoryBound(to: GParamSpecPointer.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_pointer_ptr.pointee.parent_instance
    return rv
        }
    }

}



// MARK: - ParamSpecString Class

/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
///
/// The `ParamSpecStringProtocol` protocol exposes the methods and properties of an underlying `GParamSpecString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecString`.
/// Alternatively, use `ParamSpecStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecStringProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecString` instance.
    var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString>! { get }

    /// Required Initialiser for types conforming to `ParamSpecStringProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
///
/// The `ParamSpecStringRef` type acts as a lightweight Swift reference to an underlying `GParamSpecString` instance.
/// It exposes methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecStringRef` only as an `unowned` reference to an existing `GParamSpecString` instance.
///
public struct ParamSpecStringRef: ParamSpecStringProtocol {
        /// Untyped pointer to the underlying `GParamSpecString` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecStringRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecString>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecString>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecString>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    @inlinable init<T: ParamSpecStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
///
/// The `ParamSpecString` type acts as a reference-counted owner of an underlying `GParamSpecString` instance.
/// It provides the methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecString` as a strong reference or owner of a `GParamSpecString` instance.
///
open class ParamSpecString: ParamSpec, ParamSpecStringProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecString>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecString>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecString>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecString`.
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    /// Will retain `GParamSpecString`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecStringProtocol`
    @inlinable public init<T: ParamSpecStringProtocol>(paramSpecString other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecString properties

// MARK: no ParamSpecString signals

// MARK: ParamSpecString has no signals
// MARK: ParamSpecString Class: ParamSpecStringProtocol extension (methods and fields)
public extension ParamSpecStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecString` instance.
    @inlinable var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString>! { return ptr?.assumingMemoryBound(to: GParamSpecString.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_string_ptr.pointee.parent_instance
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: UnsafeMutablePointer<gchar>! {
        /// default value for the property specified
        get {
            let rv = param_spec_string_ptr.pointee.default_value
    return rv
        }
    }

    /// a string containing the allowed values for the first byte
    @inlinable var csetFirst: UnsafeMutablePointer<gchar>! {
        /// a string containing the allowed values for the first byte
        get {
            let rv = param_spec_string_ptr.pointee.cset_first
    return rv
        }
    }

    /// a string containing the allowed values for the subsequent bytes
    @inlinable var csetNth: UnsafeMutablePointer<gchar>! {
        /// a string containing the allowed values for the subsequent bytes
        get {
            let rv = param_spec_string_ptr.pointee.cset_nth
    return rv
        }
    }

    /// the replacement byte for bytes which don't match `cset_first` or `cset_nth`.
    @inlinable var substitutor: gchar {
        /// the replacement byte for bytes which don't match `cset_first` or `cset_nth`.
        get {
            let rv = param_spec_string_ptr.pointee.substitutor
    return rv
        }
    }

    /// replace empty string by `nil`
    @inlinable var nullFoldIfEmpty: guint {
        /// replace empty string by `nil`
        get {
            let rv = param_spec_string_ptr.pointee.null_fold_if_empty
    return rv
        }
    }

    /// replace `nil` strings by an empty string
    @inlinable var ensureNonNull: guint {
        /// replace `nil` strings by an empty string
        get {
            let rv = param_spec_string_ptr.pointee.ensure_non_null
    return rv
        }
    }

}



// MARK: - ParamSpecUChar Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
///
/// The `ParamSpecUCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUChar`.
/// Alternatively, use `ParamSpecUCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUCharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUChar` instance.
    var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUCharProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
///
/// The `ParamSpecUCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUCharRef` only as an `unowned` reference to an existing `GParamSpecUChar` instance.
///
public struct ParamSpecUCharRef: ParamSpecUCharProtocol {
        /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uchar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUCharRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUChar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUChar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUChar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUChar>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    @inlinable init<T: ParamSpecUCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
///
/// The `ParamSpecUChar` type acts as a reference-counted owner of an underlying `GParamSpecUChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUChar` as a strong reference or owner of a `GParamSpecUChar` instance.
///
open class ParamSpecUChar: ParamSpec, ParamSpecUCharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUChar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUChar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUChar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUChar`.
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    /// Will retain `GParamSpecUChar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUCharProtocol`
    @inlinable public init<T: ParamSpecUCharProtocol>(paramSpecUChar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUChar properties

// MARK: no ParamSpecUChar signals

// MARK: ParamSpecUChar has no signals
// MARK: ParamSpecUChar Class: ParamSpecUCharProtocol extension (methods and fields)
public extension ParamSpecUCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUChar` instance.
    @inlinable var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar>! { return ptr?.assumingMemoryBound(to: GParamSpecUChar.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_uchar_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: guint8 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_uchar_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: guint8 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_uchar_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint8 {
        /// default value for the property specified
        get {
            let rv = param_spec_uchar_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecUInt Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
///
/// The `ParamSpecUIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUInt`.
/// Alternatively, use `ParamSpecUIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUIntProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUInt` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUInt` instance.
    var param_spec_uint_ptr: UnsafeMutablePointer<GParamSpecUInt>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUIntProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
///
/// The `ParamSpecUIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUIntProtocol` conformance.
/// Use `ParamSpecUIntRef` only as an `unowned` reference to an existing `GParamSpecUInt` instance.
///
public struct ParamSpecUIntRef: ParamSpecUIntProtocol {
        /// Untyped pointer to the underlying `GParamSpecUInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uint_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUIntRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUInt>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUInt>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUInt>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUIntProtocol`
    @inlinable init<T: ParamSpecUIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
///
/// The `ParamSpecUInt` type acts as a reference-counted owner of an underlying `GParamSpecUInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUIntProtocol` conformance.
/// Use `ParamSpecUInt` as a strong reference or owner of a `GParamSpecUInt` instance.
///
open class ParamSpecUInt: ParamSpec, ParamSpecUIntProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUInt>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUInt>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUInt>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUInt>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUInt`.
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUInt>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUIntProtocol`
    /// Will retain `GParamSpecUInt`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUIntProtocol`
    @inlinable public init<T: ParamSpecUIntProtocol>(paramSpecUInt other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUInt properties

// MARK: no ParamSpecUInt signals

// MARK: ParamSpecUInt has no signals
// MARK: ParamSpecUInt Class: ParamSpecUIntProtocol extension (methods and fields)
public extension ParamSpecUIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUInt` instance.
    @inlinable var param_spec_uint_ptr: UnsafeMutablePointer<GParamSpecUInt>! { return ptr?.assumingMemoryBound(to: GParamSpecUInt.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_uint_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: guint {
        /// minimum value for the property specified
        get {
            let rv = param_spec_uint_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: guint {
        /// maximum value for the property specified
        get {
            let rv = param_spec_uint_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint {
        /// default value for the property specified
        get {
            let rv = param_spec_uint_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecUInt64 Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
///
/// The `ParamSpecUInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecUInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUInt64`.
/// Alternatively, use `ParamSpecUInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUInt64Protocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUInt64` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUInt64` instance.
    var param_spec_uint64_ptr: UnsafeMutablePointer<GParamSpecUInt64>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUInt64Protocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
///
/// The `ParamSpecUInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecUInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUInt64Protocol` conformance.
/// Use `ParamSpecUInt64Ref` only as an `unowned` reference to an existing `GParamSpecUInt64` instance.
///
public struct ParamSpecUInt64Ref: ParamSpecUInt64Protocol {
        /// Untyped pointer to the underlying `GParamSpecUInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uint64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUInt64>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUInt64>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUInt64>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUInt64>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUInt64Protocol`
    @inlinable init<T: ParamSpecUInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
///
/// The `ParamSpecUInt64` type acts as a reference-counted owner of an underlying `GParamSpecUInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUInt64Protocol` conformance.
/// Use `ParamSpecUInt64` as a strong reference or owner of a `GParamSpecUInt64` instance.
///
open class ParamSpecUInt64: ParamSpec, ParamSpecUInt64Protocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUInt64>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUInt64>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUInt64>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUInt64>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUInt64`.
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUInt64>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUInt64Protocol`
    /// Will retain `GParamSpecUInt64`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUInt64Protocol`
    @inlinable public init<T: ParamSpecUInt64Protocol>(paramSpecUInt64 other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUInt64 properties

// MARK: no ParamSpecUInt64 signals

// MARK: ParamSpecUInt64 has no signals
// MARK: ParamSpecUInt64 Class: ParamSpecUInt64Protocol extension (methods and fields)
public extension ParamSpecUInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUInt64` instance.
    @inlinable var param_spec_uint64_ptr: UnsafeMutablePointer<GParamSpecUInt64>! { return ptr?.assumingMemoryBound(to: GParamSpecUInt64.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_uint64_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: guint64 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_uint64_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: guint64 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_uint64_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint64 {
        /// default value for the property specified
        get {
            let rv = param_spec_uint64_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecULong Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
///
/// The `ParamSpecULongProtocol` protocol exposes the methods and properties of an underlying `GParamSpecULong` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecULong`.
/// Alternatively, use `ParamSpecULongRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecULongProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecULong` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecULong` instance.
    var param_spec_ulong_ptr: UnsafeMutablePointer<GParamSpecULong>! { get }

    /// Required Initialiser for types conforming to `ParamSpecULongProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
///
/// The `ParamSpecULongRef` type acts as a lightweight Swift reference to an underlying `GParamSpecULong` instance.
/// It exposes methods that can operate on this data type through `ParamSpecULongProtocol` conformance.
/// Use `ParamSpecULongRef` only as an `unowned` reference to an existing `GParamSpecULong` instance.
///
public struct ParamSpecULongRef: ParamSpecULongProtocol {
        /// Untyped pointer to the underlying `GParamSpecULong` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ulong_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecULongRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecULong>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecULong>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecULong>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecULong>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecULongProtocol`
    @inlinable init<T: ParamSpecULongProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
///
/// The `ParamSpecULong` type acts as a reference-counted owner of an underlying `GParamSpecULong` instance.
/// It provides the methods that can operate on this data type through `ParamSpecULongProtocol` conformance.
/// Use `ParamSpecULong` as a strong reference or owner of a `GParamSpecULong` instance.
///
open class ParamSpecULong: ParamSpec, ParamSpecULongProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecULong>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecULong>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecULong>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecULong>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecULong`.
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecULong>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecULongProtocol`
    /// Will retain `GParamSpecULong`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecULongProtocol`
    @inlinable public init<T: ParamSpecULongProtocol>(paramSpecULong other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecULong properties

// MARK: no ParamSpecULong signals

// MARK: ParamSpecULong has no signals
// MARK: ParamSpecULong Class: ParamSpecULongProtocol extension (methods and fields)
public extension ParamSpecULongProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecULong` instance.
    @inlinable var param_spec_ulong_ptr: UnsafeMutablePointer<GParamSpecULong>! { return ptr?.assumingMemoryBound(to: GParamSpecULong.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_ulong_ptr.pointee.parent_instance
    return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gulong {
        /// minimum value for the property specified
        get {
            let rv = param_spec_ulong_ptr.pointee.minimum
    return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gulong {
        /// maximum value for the property specified
        get {
            let rv = param_spec_ulong_ptr.pointee.maximum
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gulong {
        /// default value for the property specified
        get {
            let rv = param_spec_ulong_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecUnichar Class

/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
///
/// The `ParamSpecUnicharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUnichar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUnichar`.
/// Alternatively, use `ParamSpecUnicharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUnicharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUnichar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUnichar` instance.
    var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUnicharProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
///
/// The `ParamSpecUnicharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUnichar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUnicharProtocol` conformance.
/// Use `ParamSpecUnicharRef` only as an `unowned` reference to an existing `GParamSpecUnichar` instance.
///
public struct ParamSpecUnicharRef: ParamSpecUnicharProtocol {
        /// Untyped pointer to the underlying `GParamSpecUnichar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_unichar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUnicharRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUnichar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUnichar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUnichar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUnichar>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUnicharProtocol`
    @inlinable init<T: ParamSpecUnicharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
///
/// The `ParamSpecUnichar` type acts as a reference-counted owner of an underlying `GParamSpecUnichar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUnicharProtocol` conformance.
/// Use `ParamSpecUnichar` as a strong reference or owner of a `GParamSpecUnichar` instance.
///
open class ParamSpecUnichar: ParamSpec, ParamSpecUnicharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUnichar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUnichar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUnichar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUnichar`.
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUnicharProtocol`
    /// Will retain `GParamSpecUnichar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUnicharProtocol`
    @inlinable public init<T: ParamSpecUnicharProtocol>(paramSpecUnichar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUnichar properties

// MARK: no ParamSpecUnichar signals

// MARK: ParamSpecUnichar has no signals
// MARK: ParamSpecUnichar Class: ParamSpecUnicharProtocol extension (methods and fields)
public extension ParamSpecUnicharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUnichar` instance.
    @inlinable var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar>! { return ptr?.assumingMemoryBound(to: GParamSpecUnichar.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_unichar_ptr.pointee.parent_instance
    return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gunichar {
        /// default value for the property specified
        get {
            let rv = param_spec_unichar_ptr.pointee.default_value
    return rv
        }
    }

}



// MARK: - ParamSpecValueArray Class

/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
///
/// The `ParamSpecValueArrayProtocol` protocol exposes the methods and properties of an underlying `GParamSpecValueArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecValueArray`.
/// Alternatively, use `ParamSpecValueArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecValueArrayProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecValueArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecValueArray` instance.
    var param_spec_value_array_ptr: UnsafeMutablePointer<GParamSpecValueArray>! { get }

    /// Required Initialiser for types conforming to `ParamSpecValueArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
///
/// The `ParamSpecValueArrayRef` type acts as a lightweight Swift reference to an underlying `GParamSpecValueArray` instance.
/// It exposes methods that can operate on this data type through `ParamSpecValueArrayProtocol` conformance.
/// Use `ParamSpecValueArrayRef` only as an `unowned` reference to an existing `GParamSpecValueArray` instance.
///
public struct ParamSpecValueArrayRef: ParamSpecValueArrayProtocol {
        /// Untyped pointer to the underlying `GParamSpecValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecValueArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecValueArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecValueArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecValueArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecValueArray>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecValueArrayProtocol`
    @inlinable init<T: ParamSpecValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
///
/// The `ParamSpecValueArray` type acts as a reference-counted owner of an underlying `GParamSpecValueArray` instance.
/// It provides the methods that can operate on this data type through `ParamSpecValueArrayProtocol` conformance.
/// Use `ParamSpecValueArray` as a strong reference or owner of a `GParamSpecValueArray` instance.
///
open class ParamSpecValueArray: ParamSpec, ParamSpecValueArrayProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecValueArray>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecValueArray>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecValueArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecValueArray>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecValueArray`.
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecValueArray>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecValueArrayProtocol`
    /// Will retain `GParamSpecValueArray`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecValueArrayProtocol`
    @inlinable public init<T: ParamSpecValueArrayProtocol>(paramSpecValueArray other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecValueArray properties

// MARK: no ParamSpecValueArray signals

// MARK: ParamSpecValueArray has no signals
// MARK: ParamSpecValueArray Class: ParamSpecValueArrayProtocol extension (methods and fields)
public extension ParamSpecValueArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecValueArray` instance.
    @inlinable var param_spec_value_array_ptr: UnsafeMutablePointer<GParamSpecValueArray>! { return ptr?.assumingMemoryBound(to: GParamSpecValueArray.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_value_array_ptr.pointee.parent_instance
    return rv
        }
    }

    /// a `GParamSpec` describing the elements contained in arrays of this property, may be `nil`
    @inlinable var elementSpec: ParamSpecRef! {
        /// a `GParamSpec` describing the elements contained in arrays of this property, may be `nil`
        get {
            let rv = ParamSpecRef(gconstpointer: gconstpointer(param_spec_value_array_ptr.pointee.element_spec))
    return rv
        }
    }

    /// if greater than 0, arrays of this property will always have this many elements
    @inlinable var fixedNElements: guint {
        /// if greater than 0, arrays of this property will always have this many elements
        get {
            let rv = param_spec_value_array_ptr.pointee.fixed_n_elements
    return rv
        }
    }

}



// MARK: - ParamSpecVariant Class

/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
///
/// The `ParamSpecVariantProtocol` protocol exposes the methods and properties of an underlying `GParamSpecVariant` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecVariant`.
/// Alternatively, use `ParamSpecVariantRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecVariantProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecVariant` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecVariant` instance.
    var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant>! { get }

    /// Required Initialiser for types conforming to `ParamSpecVariantProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
///
/// The `ParamSpecVariantRef` type acts as a lightweight Swift reference to an underlying `GParamSpecVariant` instance.
/// It exposes methods that can operate on this data type through `ParamSpecVariantProtocol` conformance.
/// Use `ParamSpecVariantRef` only as an `unowned` reference to an existing `GParamSpecVariant` instance.
///
public struct ParamSpecVariantRef: ParamSpecVariantProtocol {
        /// Untyped pointer to the underlying `GParamSpecVariant` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecVariantRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecVariant>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecVariant>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    @inlinable init<T: ParamSpecVariantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
///
/// The `ParamSpecVariant` type acts as a reference-counted owner of an underlying `GParamSpecVariant` instance.
/// It provides the methods that can operate on this data type through `ParamSpecVariantProtocol` conformance.
/// Use `ParamSpecVariant` as a strong reference or owner of a `GParamSpecVariant` instance.
///
open class ParamSpecVariant: ParamSpec, ParamSpecVariantProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecVariant>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecVariant>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecVariant>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecVariant`.
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    /// Will retain `GParamSpecVariant`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecVariantProtocol`
    @inlinable public init<T: ParamSpecVariantProtocol>(paramSpecVariant other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecVariant properties

// MARK: no ParamSpecVariant signals

// MARK: ParamSpecVariant has no signals
// MARK: ParamSpecVariant Class: ParamSpecVariantProtocol extension (methods and fields)
public extension ParamSpecVariantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecVariant` instance.
    @inlinable var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant>! { return ptr?.assumingMemoryBound(to: GParamSpecVariant.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_variant_ptr.pointee.parent_instance
    return rv
        }
    }

    /// a `GVariantType`, or `nil`
    @inlinable var type: VariantTypeRef! {
        /// a `GVariantType`, or `nil`
        get {
            let rv = GLib.VariantTypeRef(gconstpointer: gconstpointer(param_spec_variant_ptr.pointee.type))
    return rv
        }
    }

    /// a `GVariant`, or `nil`
    @inlinable var defaultValue: VariantRef! {
        /// a `GVariant`, or `nil`
        get {
            let rv = GLib.VariantRef(gconstpointer: gconstpointer(param_spec_variant_ptr.pointee.default_value))
    return rv
        }
    }

    // var padding is unavailable because padding is private

}



