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

    /// Required Initialiser for types conforming to `ParamSpecPoolProtocol`
    init(raw: UnsafeMutableRawPointer)
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



// MARK: - ParamSpecTypeInfo Record

/// The `ParamSpecTypeInfoProtocol` protocol exposes the methods and properties of an underlying `GParamSpecTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecTypeInfo`.
/// Alternatively, use `ParamSpecTypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
public protocol ParamSpecTypeInfoProtocol {
        /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo>! { get }

    /// Required Initialiser for types conforming to `ParamSpecTypeInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ParamSpecTypeInfoRef` type acts as a lightweight Swift reference to an underlying `GParamSpecTypeInfo` instance.
/// It exposes methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfoRef` only as an `unowned` reference to an existing `GParamSpecTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
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

/// The `ParamSpecTypeInfo` type acts as an owner of an underlying `GParamSpecTypeInfo` instance.
/// It provides the methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfo` as a strong reference or owner of a `GParamSpecTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
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

    /// Registers `name` as the name of a new static type derived from
    /// `G_TYPE_PARAM`. The type system uses the information contained in
    /// the `GParamSpecTypeInfo` structure pointed to by `info` to manage the
    /// `GParamSpec` type and its instances.
    @inlinable func paramTypeRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
        let rv = g_param_type_register_static(name, _ptr)
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

/// The `ParameterProtocol` protocol exposes the methods and properties of an underlying `GParameter` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Parameter`.
/// Alternatively, use `ParameterRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
public protocol ParameterProtocol {
        /// Untyped pointer to the underlying `GParameter` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParameter` instance.
    var _ptr: UnsafeMutablePointer<GParameter>! { get }

    /// Required Initialiser for types conforming to `ParameterProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ParameterRef` type acts as a lightweight Swift reference to an underlying `GParameter` instance.
/// It exposes methods that can operate on this data type through `ParameterProtocol` conformance.
/// Use `ParameterRef` only as an `unowned` reference to an existing `GParameter` instance.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
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

/// The `Parameter` type acts as an owner of an underlying `GParameter` instance.
/// It provides the methods that can operate on this data type through `ParameterProtocol` conformance.
/// Use `Parameter` as a strong reference or owner of a `GParameter` instance.
///
/// The GParameter struct is an auxiliary structure used
/// to hand parameter name/value pairs to `g_object_newv()`.
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



// MARK: - SignalInvocationHint Record

/// The `SignalInvocationHintProtocol` protocol exposes the methods and properties of an underlying `GSignalInvocationHint` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `SignalInvocationHint`.
/// Alternatively, use `SignalInvocationHintRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GSignalInvocationHint` structure is used to pass on additional information
/// to callbacks during a signal emission.
public protocol SignalInvocationHintProtocol {
        /// Untyped pointer to the underlying `GSignalInvocationHint` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GSignalInvocationHint` instance.
    var _ptr: UnsafeMutablePointer<GSignalInvocationHint>! { get }

    /// Required Initialiser for types conforming to `SignalInvocationHintProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `SignalInvocationHintRef` type acts as a lightweight Swift reference to an underlying `GSignalInvocationHint` instance.
/// It exposes methods that can operate on this data type through `SignalInvocationHintProtocol` conformance.
/// Use `SignalInvocationHintRef` only as an `unowned` reference to an existing `GSignalInvocationHint` instance.
///
/// The `GSignalInvocationHint` structure is used to pass on additional information
/// to callbacks during a signal emission.
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

/// The `SignalInvocationHint` type acts as an owner of an underlying `GSignalInvocationHint` instance.
/// It provides the methods that can operate on this data type through `SignalInvocationHintProtocol` conformance.
/// Use `SignalInvocationHint` as a strong reference or owner of a `GSignalInvocationHint` instance.
///
/// The `GSignalInvocationHint` structure is used to pass on additional information
/// to callbacks during a signal emission.
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
    @inlinable func signalAccumulatorFirstWins<ValueT: ValueProtocol>(returnAccu: ValueT, handlerReturn: ValueT, dummy: gpointer! = nil) -> Bool {
        let rv = ((g_signal_accumulator_first_wins(_ptr, returnAccu.value_ptr, handlerReturn.value_ptr, dummy)) != 0)
        return rv
    }

    /// A predefined `GSignalAccumulator` for signals that return a
    /// boolean values. The behavior that this accumulator gives is
    /// that a return of `true` stops the signal emission: no further
    /// callbacks will be invoked, while a return of `false` allows
    /// the emission to continue. The idea here is that a `true` return
    /// indicates that the callback handled the signal, and no further
    /// handling is needed.
    @inlinable func signalAccumulatorTrueHandled<ValueT: ValueProtocol>(returnAccu: ValueT, handlerReturn: ValueT, dummy: gpointer! = nil) -> Bool {
        let rv = ((g_signal_accumulator_true_handled(_ptr, returnAccu.value_ptr, handlerReturn.value_ptr, dummy)) != 0)
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
    ///  `G_SIGNAL_RUN_LAST` or `G_SIGNAL_RUN_CLEANUP`.
    @inlinable var runType: SignalFlags {
        /// The stage the signal emission is currently in, this
        ///  field will contain one of `G_SIGNAL_RUN_FIRST`,
        ///  `G_SIGNAL_RUN_LAST` or `G_SIGNAL_RUN_CLEANUP`.
        get {
            let rv = SignalFlags(_ptr.pointee.run_type)
            return rv
        }
        /// The stage the signal emission is currently in, this
        ///  field will contain one of `G_SIGNAL_RUN_FIRST`,
        ///  `G_SIGNAL_RUN_LAST` or `G_SIGNAL_RUN_CLEANUP`.
         set {
            _ptr.pointee.run_type = newValue.value
        }
    }

}



