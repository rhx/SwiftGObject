import CGLib
import GLib

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecPool` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecPool> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecPoolRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecPoolProtocol`
    init<T: ParamSpecPoolProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GParamSpecPool` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ParamSpecPool` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GParamSpecPool>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GParamSpecPool, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `ParamSpecPoolProtocol`
    /// `GParamSpecPool` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ParamSpecPoolProtocol`
    public init<T: ParamSpecPoolProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GParamSpecPool, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GParamSpecPool`.
    deinit {
        // no reference counting for GParamSpecPool, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GParamSpecPool, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GParamSpecPool, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GParamSpecPool, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPoolProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GParamSpecPool, cannot ref(cast(_ptr))
    }



}

// MARK: - no ParamSpecPool properties

// MARK: - no signals


public extension ParamSpecPoolProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecPool` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecPool> { return ptr.assumingMemoryBound(to: GParamSpecPool.self) }

    /// Inserts a `GParamSpec` in the pool.
    func insert(pspec: ParamSpecProtocol, ownerType owner_type: GType) {
        g_param_spec_pool_insert(cast(_ptr), cast(pspec.ptr), owner_type)
    
    }

    /// Gets an array of all `GParamSpecs` owned by `owner_type` in
    /// the pool.
    func list(ownerType owner_type: GType, nPspecsP n_pspecs_p: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>! {
        let rv = g_param_spec_pool_list(cast(_ptr), owner_type, cast(n_pspecs_p))
        return cast(rv)
    }

    /// Gets an `GList` of all `GParamSpecs` owned by `owner_type` in
    /// the pool.
    func listOwned(ownerType owner_type: GType) -> UnsafeMutablePointer<GList>! {
        let rv = g_param_spec_pool_list_owned(cast(_ptr), owner_type)
        return cast(rv)
    }

    /// Looks up a `GParamSpec` in the pool.
    func lookup(paramName param_name: UnsafePointer<gchar>, ownerType owner_type: GType, walkAncestors walk_ancestors: Bool) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_param_spec_pool_lookup(cast(_ptr), param_name, owner_type, gboolean(walk_ancestors ? 1 : 0))
        return cast(rv)
    }

    /// Removes a `GParamSpec` from the pool.
    func remove(pspec: ParamSpecProtocol) {
        g_param_spec_pool_remove(cast(_ptr), cast(pspec.ptr))
    
    }
}



