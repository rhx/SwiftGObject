import CGLib
import GLib
import GObjectCHelpers

// MARK: - FlagsClass Record

/// The class of a flags type holds information about its
/// possible values.
///
/// The `FlagsClassProtocol` protocol exposes the methods and properties of an underlying `GFlagsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlagsClass`.
/// Alternatively, use `FlagsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FlagsClassProtocol {
        /// Untyped pointer to the underlying `GFlagsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFlagsClass` instance.
    var _ptr: UnsafeMutablePointer<GFlagsClass>! { get }

    /// Required Initialiser for types conforming to `FlagsClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The class of a flags type holds information about its
/// possible values.
///
/// The `FlagsClassRef` type acts as a lightweight Swift reference to an underlying `GFlagsClass` instance.
/// It exposes methods that can operate on this data type through `FlagsClassProtocol` conformance.
/// Use `FlagsClassRef` only as an `unowned` reference to an existing `GFlagsClass` instance.
///
public struct FlagsClassRef: FlagsClassProtocol {
        /// Untyped pointer to the underlying `GFlagsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlagsClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFlagsClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFlagsClass>?) {
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

    /// Reference intialiser for a related type that implements `FlagsClassProtocol`
    @inlinable init<T: FlagsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The class of a flags type holds information about its
/// possible values.
///
/// The `FlagsClass` type acts as an owner of an underlying `GFlagsClass` instance.
/// It provides the methods that can operate on this data type through `FlagsClassProtocol` conformance.
/// Use `FlagsClass` as a strong reference or owner of a `GFlagsClass` instance.
///
open class FlagsClass: FlagsClassProtocol {
        /// Untyped pointer to the underlying `GFlagsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFlagsClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFlagsClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFlagsClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FlagsClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFlagsClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FlagsClassProtocol`
    /// `GFlagsClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FlagsClassProtocol`
    @inlinable public init<T: FlagsClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GFlagsClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GFlagsClass`.
    deinit {
        // no reference counting for GFlagsClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFlagsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFlagsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFlagsClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFlagsClass, cannot ref(_ptr)
    }



}

// MARK: no FlagsClass properties

// MARK: no FlagsClass signals

// MARK: FlagsClass has no signals
// MARK: FlagsClass Record: FlagsClassProtocol extension (methods and fields)
public extension FlagsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFlagsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFlagsClass>! { return ptr?.assumingMemoryBound(to: GFlagsClass.self) }

    /// Returns the first `GFlagsValue` which is set in `value`.
    @inlinable func flagsGetFirst(value: Int) -> GLibObject.FlagsValueRef! {
        let result = g_flags_get_first_value(_ptr, guint(value))
        let rv = FlagsValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Looks up a `GFlagsValue` by name.
    @inlinable func flagsGetValueBy(name: UnsafePointer<gchar>!) -> GLibObject.FlagsValueRef! {
        let result = g_flags_get_value_by_name(_ptr, name)
        let rv = FlagsValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Looks up a `GFlagsValue` by nickname.
    @inlinable func flagsGetValueBy(nick: UnsafePointer<gchar>!) -> GLibObject.FlagsValueRef! {
        let result = g_flags_get_value_by_nick(_ptr, nick)
        let rv = FlagsValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// the parent class
    @inlinable var gTypeClass: GTypeClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.g_type_class
    return rv
        }
        /// the parent class
         set {
            _ptr.pointee.g_type_class = newValue
        }
    }

    /// a mask covering all possible values.
    @inlinable var mask: guint {
        /// a mask covering all possible values.
        get {
            let rv = _ptr.pointee.mask
    return rv
        }
        /// a mask covering all possible values.
         set {
            _ptr.pointee.mask = newValue
        }
    }

    /// the number of possible values.
    @inlinable var nValues: guint {
        /// the number of possible values.
        get {
            let rv = _ptr.pointee.n_values
    return rv
        }
        /// the number of possible values.
         set {
            _ptr.pointee.n_values = newValue
        }
    }

    /// an array of `GFlagsValue` structs describing the
    ///  individual values.
    @inlinable var values: FlagsValueRef! {
        /// an array of `GFlagsValue` structs describing the
        ///  individual values.
        get {
            let rv = FlagsValueRef(gconstpointer: gconstpointer(_ptr.pointee.values))
    return rv
        }
        /// an array of `GFlagsValue` structs describing the
        ///  individual values.
         set {
            _ptr.pointee.values = UnsafeMutablePointer<GFlagsValue>(newValue._ptr)
        }
    }

}



// MARK: - FlagsValue Record

/// A structure which contains a single flags value, its name, and its
/// nickname.
///
/// The `FlagsValueProtocol` protocol exposes the methods and properties of an underlying `GFlagsValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlagsValue`.
/// Alternatively, use `FlagsValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol FlagsValueProtocol {
        /// Untyped pointer to the underlying `GFlagsValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFlagsValue` instance.
    var _ptr: UnsafeMutablePointer<GFlagsValue>! { get }

    /// Required Initialiser for types conforming to `FlagsValueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure which contains a single flags value, its name, and its
/// nickname.
///
/// The `FlagsValueRef` type acts as a lightweight Swift reference to an underlying `GFlagsValue` instance.
/// It exposes methods that can operate on this data type through `FlagsValueProtocol` conformance.
/// Use `FlagsValueRef` only as an `unowned` reference to an existing `GFlagsValue` instance.
///
public struct FlagsValueRef: FlagsValueProtocol {
        /// Untyped pointer to the underlying `GFlagsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlagsValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFlagsValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFlagsValue>?) {
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

    /// Reference intialiser for a related type that implements `FlagsValueProtocol`
    @inlinable init<T: FlagsValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A structure which contains a single flags value, its name, and its
/// nickname.
///
/// The `FlagsValue` type acts as an owner of an underlying `GFlagsValue` instance.
/// It provides the methods that can operate on this data type through `FlagsValueProtocol` conformance.
/// Use `FlagsValue` as a strong reference or owner of a `GFlagsValue` instance.
///
open class FlagsValue: FlagsValueProtocol {
        /// Untyped pointer to the underlying `GFlagsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFlagsValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFlagsValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFlagsValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FlagsValueProtocol`
    /// `GFlagsValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FlagsValueProtocol`
    @inlinable public init<T: FlagsValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GFlagsValue`.
    deinit {
        // no reference counting for GFlagsValue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }



}

// MARK: no FlagsValue properties

// MARK: no FlagsValue signals

// MARK: FlagsValue has no signals
// MARK: FlagsValue Record: FlagsValueProtocol extension (methods and fields)
public extension FlagsValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFlagsValue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFlagsValue>! { return ptr?.assumingMemoryBound(to: GFlagsValue.self) }

    /// This function is meant to be called from the `complete_type_info()`
    /// function of a `GTypePlugin` implementation, see the example for
    /// `g_enum_complete_type_info()` above.
    @inlinable func flagsCompleteTypeInfo<TypeInfoT: TypeInfoProtocol>(gFlagsType: GType, info: TypeInfoT) {
        
        g_flags_complete_type_info(gFlagsType, info._ptr, _ptr)
        
    }

    /// Registers a new static flags type with the name `name`.
    /// 
    /// It is normally more convenient to let [glib-mkenums](#glib-mkenums)
    /// generate a `my_flags_get_type()` function from a usual C enumeration
    /// definition than to write one yourself using `g_flags_register_static()`.
    @inlinable func flagsRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
        let result = g_flags_register_static(name, _ptr)
        let rv = result
        return rv
    }

    /// the flags value
    @inlinable var value: guint {
        /// the flags value
        get {
            let rv = _ptr.pointee.value
    return rv
        }
        /// the flags value
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// the name of the value
    @inlinable var valueName: UnsafePointer<gchar>! {
        /// the name of the value
        get {
            let rv = _ptr.pointee.value_name
    return rv
        }
        /// the name of the value
         set {
            _ptr.pointee.value_name = newValue
        }
    }

    /// the nickname of the value
    @inlinable var valueNick: UnsafePointer<gchar>! {
        /// the nickname of the value
        get {
            let rv = _ptr.pointee.value_nick
    return rv
        }
        /// the nickname of the value
         set {
            _ptr.pointee.value_nick = newValue
        }
    }

}



