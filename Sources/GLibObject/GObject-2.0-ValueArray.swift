import CGLib
import GLib
import GObjectCHelpers

// MARK: - ValueArray Record

/// The `ValueArrayProtocol` protocol exposes the methods and properties of an underlying `GValueArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ValueArray`.
/// Alternatively, use `ValueArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GValueArray` contains an array of `GValue` elements.
public protocol ValueArrayProtocol {
        /// Untyped pointer to the underlying `GValueArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GValueArray` instance.
    var value_array_ptr: UnsafeMutablePointer<GValueArray>! { get }

}

/// The `ValueArrayRef` type acts as a lightweight Swift reference to an underlying `GValueArray` instance.
/// It exposes methods that can operate on this data type through `ValueArrayProtocol` conformance.
/// Use `ValueArrayRef` only as an `unowned` reference to an existing `GValueArray` instance.
///
/// A `GValueArray` contains an array of `GValue` elements.
public struct ValueArrayRef: ValueArrayProtocol {
        /// Untyped pointer to the underlying `GValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ValueArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GValueArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GValueArray>?) {
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

    /// Reference intialiser for a related type that implements `ValueArrayProtocol`
    @inlinable init<T: ValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocate and initialize a new `GValueArray`, optionally preserve space
    /// for `n_prealloced` elements. New arrays always contain 0 elements,
    /// regardless of the value of `n_prealloced`.
    ///
    /// **new is deprecated:**
    /// Use #GArray and g_array_sized_new() instead.
    @available(*, deprecated) @inlinable init( nPrealloced: Int) {
        let rv = g_value_array_new(guint(nPrealloced))
        ptr = UnsafeMutableRawPointer(rv)
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GValueArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GValueArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GValueArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Reference intialiser for a related type that implements `ValueArrayProtocol`
    /// `GValueArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ValueArrayProtocol`
    @inlinable public init<T: ValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Do-nothing destructor for `GValueArray`.
    deinit {
        // no reference counting for GValueArray, cannot unref(value_array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Allocate and initialize a new `GValueArray`, optionally preserve space
    /// for `n_prealloced` elements. New arrays always contain 0 elements,
    /// regardless of the value of `n_prealloced`.
    ///
    /// **new is deprecated:**
    /// Use #GArray and g_array_sized_new() instead.
    @available(*, deprecated) @inlinable public init( nPrealloced: Int) {
        let rv = g_value_array_new(guint(nPrealloced))
        ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no ValueArray properties

// MARK: no ValueArray signals


// MARK: ValueArray Record: ValueArrayProtocol extension (methods and fields)
public extension ValueArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValueArray` instance.
    @inlinable var value_array_ptr: UnsafeMutablePointer<GValueArray>! { return ptr?.assumingMemoryBound(to: GValueArray.self) }

    /// Insert a copy of `value` as last element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is appended.
    ///
    /// **append is deprecated:**
    /// Use #GArray and g_array_append_val() instead.
    @available(*, deprecated) @inlinable func append(value: ValueRef? = nil) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_append(value_array_ptr, value?.value_ptr))) else { return nil }
        return rv
    }
    /// Insert a copy of `value` as last element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is appended.
    ///
    /// **append is deprecated:**
    /// Use #GArray and g_array_append_val() instead.
    @available(*, deprecated) @inlinable func append<ValueT: ValueProtocol>(value: ValueT?) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_append(value_array_ptr, value?.value_ptr))) else { return nil }
        return rv
    }

    /// Construct an exact copy of a `GValueArray` by duplicating all its
    /// contents.
    ///
    /// **copy is deprecated:**
    /// Use #GArray and g_array_ref() instead.
    @available(*, deprecated) @inlinable func copy() -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_copy(value_array_ptr))) else { return nil }
        return rv
    }

    /// Free a `GValueArray` including its contents.
    ///
    /// **free is deprecated:**
    /// Use #GArray and g_array_unref() instead.
    @available(*, deprecated) @inlinable func free() {
        g_value_array_free(value_array_ptr)
    
    }

    /// Return a pointer to the value at `index_` containd in `value_array`.
    ///
    /// **get_nth is deprecated:**
    /// Use g_array_index() instead.
    @available(*, deprecated) @inlinable func getNth(index_: Int) -> ValueRef! {
        let rv = ValueRef(gconstpointer: gconstpointer(g_value_array_get_nth(value_array_ptr, guint(index_))))
        return rv
    }

    /// Insert a copy of `value` at specified position into `value_array`. If `value`
    /// is `nil`, an uninitialized value is inserted.
    ///
    /// **insert is deprecated:**
    /// Use #GArray and g_array_insert_val() instead.
    @available(*, deprecated) @inlinable func insert(index_: Int, value: ValueRef? = nil) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_insert(value_array_ptr, guint(index_), value?.value_ptr))) else { return nil }
        return rv
    }
    /// Insert a copy of `value` at specified position into `value_array`. If `value`
    /// is `nil`, an uninitialized value is inserted.
    ///
    /// **insert is deprecated:**
    /// Use #GArray and g_array_insert_val() instead.
    @available(*, deprecated) @inlinable func insert<ValueT: ValueProtocol>(index_: Int, value: ValueT?) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_insert(value_array_ptr, guint(index_), value?.value_ptr))) else { return nil }
        return rv
    }

    /// Insert a copy of `value` as first element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is prepended.
    ///
    /// **prepend is deprecated:**
    /// Use #GArray and g_array_prepend_val() instead.
    @available(*, deprecated) @inlinable func prepend(value: ValueRef? = nil) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_prepend(value_array_ptr, value?.value_ptr))) else { return nil }
        return rv
    }
    /// Insert a copy of `value` as first element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is prepended.
    ///
    /// **prepend is deprecated:**
    /// Use #GArray and g_array_prepend_val() instead.
    @available(*, deprecated) @inlinable func prepend<ValueT: ValueProtocol>(value: ValueT?) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_prepend(value_array_ptr, value?.value_ptr))) else { return nil }
        return rv
    }

    /// Remove the value at position `index_` from `value_array`.
    ///
    /// **remove is deprecated:**
    /// Use #GArray and g_array_remove_index() instead.
    @available(*, deprecated) @inlinable func remove(index_: Int) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_remove(value_array_ptr, guint(index_)))) else { return nil }
        return rv
    }

    /// Sort `value_array` using `compare_func` to compare the elements according to
    /// the semantics of `GCompareFunc`.
    /// 
    /// The current implementation uses the same sorting algorithm as standard
    /// C `qsort()` function.
    ///
    /// **sort is deprecated:**
    /// Use #GArray and g_array_sort().
    @available(*, deprecated) @inlinable func sort(compareFunc: GCompareFunc?) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_sort(value_array_ptr, compareFunc))) else { return nil }
        return rv
    }

    /// Sort `value_array` using `compare_func` to compare the elements according
    /// to the semantics of `GCompareDataFunc`.
    /// 
    /// The current implementation uses the same sorting algorithm as standard
    /// C `qsort()` function.
    ///
    /// **sort_with_data is deprecated:**
    /// Use #GArray and g_array_sort_with_data().
    @available(*, deprecated) @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer! = nil) -> ValueArrayRef! {
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(g_value_array_sort_with_data(value_array_ptr, compareFunc, userData))) else { return nil }
        return rv
    }

    /// number of values contained in the array
    @inlinable var nValues: guint {
        /// number of values contained in the array
        get {
            let rv = value_array_ptr.pointee.n_values
            return rv
        }
        /// number of values contained in the array
         set {
            value_array_ptr.pointee.n_values = newValue
        }
    }

    /// array of values
    @inlinable var values: ValueRef! {
        /// array of values
        get {
            let rv = ValueRef(gconstpointer: gconstpointer(value_array_ptr.pointee.values))
            return rv
        }
        /// array of values
         set {
            value_array_ptr.pointee.values = UnsafeMutablePointer<GValue>(newValue.value_ptr)
        }
    }

    // var nPrealloced is unavailable because n_prealloced is private

}



