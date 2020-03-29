import CGLib
import GLib

// MARK: - ValueArray Record

/// The `ValueArrayProtocol` protocol exposes the methods and properties of an underlying `GValueArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ValueArray`.
/// Alternatively, use `ValueArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GValueArray` contains an array of `GValue` elements.
public protocol ValueArrayProtocol {
    /// Untyped pointer to the underlying `GValueArray` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GValueArray` instance.
    var value_array_ptr: UnsafeMutablePointer<GValueArray> { get }
}

/// The `ValueArrayRef` type acts as a lightweight Swift reference to an underlying `GValueArray` instance.
/// It exposes methods that can operate on this data type through `ValueArrayProtocol` conformance.
/// Use `ValueArrayRef` only as an `unowned` reference to an existing `GValueArray` instance.
///
/// A `GValueArray` contains an array of `GValue` elements.
public struct ValueArrayRef: ValueArrayProtocol {
    /// Untyped pointer to the underlying `GValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ValueArrayRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ValueArrayProtocol`
    init<T: ValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocate and initialize a new `GValueArray`, optionally preserve space
    /// for `n_prealloced` elements. New arrays always contain 0 elements,
    /// regardless of the value of `n_prealloced`.
    ///
    /// **new is deprecated:**
    /// Use #GArray and g_array_sized_new() instead.
    @available(*, deprecated) init( n_prealloced: CUnsignedInt) {
        let rv = g_value_array_new(guint(n_prealloced))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }
}

/// The `ValueArray` type acts as an owner of an underlying `GValueArray` instance.
/// It provides the methods that can operate on this data type through `ValueArrayProtocol` conformance.
/// Use `ValueArray` as a strong reference or owner of a `GValueArray` instance.
///
/// A `GValueArray` contains an array of `GValue` elements.
open class ValueArray: ValueArrayProtocol {
    /// Untyped pointer to the underlying `GValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GValueArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GValueArray, cannot ref(cast(value_array_ptr))
    }

    /// Reference intialiser for a related type that implements `ValueArrayProtocol`
    /// `GValueArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ValueArrayProtocol`
    public init<T: ValueArrayProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other.value_array_ptr)
        // no reference counting for GValueArray, cannot ref(cast(value_array_ptr))
    }

    /// Do-nothing destructor for`GValueArray`.
    deinit {
        // no reference counting for GValueArray, cannot unref(cast(value_array_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GValueArray, cannot ref(cast(value_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GValueArray, cannot ref(cast(value_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GValueArray, cannot ref(cast(value_array_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GValueArray, cannot ref(cast(value_array_ptr))
    }

    /// Allocate and initialize a new `GValueArray`, optionally preserve space
    /// for `n_prealloced` elements. New arrays always contain 0 elements,
    /// regardless of the value of `n_prealloced`.
    ///
    /// **new is deprecated:**
    /// Use #GArray and g_array_sized_new() instead.
    @available(*, deprecated) public init( n_prealloced: CUnsignedInt) {
        let rv = g_value_array_new(guint(n_prealloced))
        ptr = UnsafeMutableRawPointer(cast(rv))
    }


}

// MARK: - no ValueArray properties

// MARK: - no signals


public extension ValueArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValueArray` instance.
    var value_array_ptr: UnsafeMutablePointer<GValueArray> { return ptr.assumingMemoryBound(to: GValueArray.self) }

    /// Insert a copy of `value` as last element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is appended.
    ///
    /// **append is deprecated:**
    /// Use #GArray and g_array_append_val() instead.
    @available(*, deprecated) func append(value: ValueProtocol) -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_append(cast(value_array_ptr), cast(value.ptr))
        return cast(rv)
    }

    /// Construct an exact copy of a `GValueArray` by duplicating all its
    /// contents.
    ///
    /// **copy is deprecated:**
    /// Use #GArray and g_array_ref() instead.
    @available(*, deprecated) func copy() -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_copy(cast(value_array_ptr))
        return cast(rv)
    }

    /// Free a `GValueArray` including its contents.
    ///
    /// **free is deprecated:**
    /// Use #GArray and g_array_unref() instead.
    @available(*, deprecated) func free() {
        g_value_array_free(cast(value_array_ptr))
    
    }

    /// Return a pointer to the value at `index_` containd in `value_array`.
    ///
    /// **get_nth is deprecated:**
    /// Use g_array_index() instead.
    @available(*, deprecated) func getNth(index_: CUnsignedInt) -> UnsafeMutablePointer<GValue>! {
        let rv = g_value_array_get_nth(cast(value_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Insert a copy of `value` at specified position into `value_array`. If `value`
    /// is `nil`, an uninitialized value is inserted.
    ///
    /// **insert is deprecated:**
    /// Use #GArray and g_array_insert_val() instead.
    @available(*, deprecated) func insert(index_: CUnsignedInt, value: ValueProtocol) -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_insert(cast(value_array_ptr), guint(index_), cast(value.ptr))
        return cast(rv)
    }

    /// Insert a copy of `value` as first element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is prepended.
    ///
    /// **prepend is deprecated:**
    /// Use #GArray and g_array_prepend_val() instead.
    @available(*, deprecated) func prepend(value: ValueProtocol) -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_prepend(cast(value_array_ptr), cast(value.ptr))
        return cast(rv)
    }

    /// Remove the value at position `index_` from `value_array`.
    ///
    /// **remove is deprecated:**
    /// Use #GArray and g_array_remove_index() instead.
    @available(*, deprecated) func remove(index_: CUnsignedInt) -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_remove(cast(value_array_ptr), guint(index_))
        return cast(rv)
    }

    /// Sort `value_array` using `compare_func` to compare the elements according to
    /// the semantics of `GCompareFunc`.
    /// 
    /// The current implementation uses the same sorting algorithm as standard
    /// C `qsort()` function.
    ///
    /// **sort is deprecated:**
    /// Use #GArray and g_array_sort().
    @available(*, deprecated) func sort(compareFunc compare_func: @escaping GCompareFunc) -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_sort(cast(value_array_ptr), compare_func)
        return cast(rv)
    }

    /// Sort `value_array` using `compare_func` to compare the elements according
    /// to the semantics of `GCompareDataFunc`.
    /// 
    /// The current implementation uses the same sorting algorithm as standard
    /// C `qsort()` function.
    ///
    /// **sort_with_data is deprecated:**
    /// Use #GArray and g_array_sort_with_data().
    @available(*, deprecated) func sortWithData(compareFunc compare_func: @escaping GCompareDataFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutablePointer<GValueArray>! {
        let rv = g_value_array_sort_with_data(cast(value_array_ptr), compare_func, cast(user_data))
        return cast(rv)
    }
}



