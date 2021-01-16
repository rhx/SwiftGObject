import CGLib
import GLib
import GObjectCHelpers

// MARK: - EnumValue Record

/// The `EnumValueProtocol` protocol exposes the methods and properties of an underlying `GEnumValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EnumValue`.
/// Alternatively, use `EnumValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure which contains a single enum value, its name, and its
/// nickname.
public protocol EnumValueProtocol {
        /// Untyped pointer to the underlying `GEnumValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEnumValue` instance.
    var _ptr: UnsafeMutablePointer<GEnumValue>! { get }

}

/// The `EnumValueRef` type acts as a lightweight Swift reference to an underlying `GEnumValue` instance.
/// It exposes methods that can operate on this data type through `EnumValueProtocol` conformance.
/// Use `EnumValueRef` only as an `unowned` reference to an existing `GEnumValue` instance.
///
/// A structure which contains a single enum value, its name, and its
/// nickname.
public struct EnumValueRef: EnumValueProtocol {
        /// Untyped pointer to the underlying `GEnumValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EnumValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GEnumValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GEnumValue>?) {
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

    /// Reference intialiser for a related type that implements `EnumValueProtocol`
    @inlinable init<T: EnumValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EnumValue` type acts as an owner of an underlying `GEnumValue` instance.
/// It provides the methods that can operate on this data type through `EnumValueProtocol` conformance.
/// Use `EnumValue` as a strong reference or owner of a `GEnumValue` instance.
///
/// A structure which contains a single enum value, its name, and its
/// nickname.
open class EnumValue: EnumValueProtocol {
        /// Untyped pointer to the underlying `GEnumValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GEnumValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GEnumValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GEnumValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GEnumValue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `EnumValueProtocol`
    /// `GEnumValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EnumValueProtocol`
    @inlinable public init<T: EnumValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GEnumValue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GEnumValue`.
    deinit {
        // no reference counting for GEnumValue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GEnumValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GEnumValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GEnumValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GEnumValue, cannot ref(_ptr)
    }



}

// MARK: no EnumValue properties

// MARK: EnumValue has no signals
// MARK: EnumValue Record: EnumValueProtocol extension (methods and fields)
public extension EnumValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEnumValue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GEnumValue>! { return ptr?.assumingMemoryBound(to: GEnumValue.self) }

    /// This function is meant to be called from the `complete_type_info`
    /// function of a `GTypePlugin` implementation, as in the following
    /// example:
    /// 
    /// (C Language Example):
    /// ```C
    /// static void
    /// my_enum_complete_type_info (GTypePlugin     *plugin,
    ///                             GType            g_type,
    ///                             GTypeInfo       *info,
    ///                             GTypeValueTable *value_table)
    /// {
    ///   static const GEnumValue values[] = {
    ///     { MY_ENUM_FOO, "MY_ENUM_FOO", "foo" },
    ///     { MY_ENUM_BAR, "MY_ENUM_BAR", "bar" },
    ///     { 0, NULL, NULL }
    ///   };
    /// 
    ///   g_enum_complete_type_info (type, info, values);
    /// }
    /// ```
    /// 
    @inlinable func enumCompleteTypeInfo<TypeInfoT: TypeInfoProtocol>(gEnumType: GType, info: TypeInfoT) {
        g_enum_complete_type_info(gEnumType, info._ptr, _ptr)
    
    }

    /// Registers a new static enumeration type with the name `name`.
    /// 
    /// It is normally more convenient to let [glib-mkenums](#glib-mkenums),
    /// generate a `my_enum_get_type()` function from a usual C enumeration
    /// definition  than to write one yourself using `g_enum_register_static()`.
    @inlinable func enumRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
        let rv = g_enum_register_static(name, _ptr)
        return rv
    }

    /// the enum value
    @inlinable var value: gint {
        /// the enum value
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// the enum value
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



// MARK: - FlagsClass Record

/// The `FlagsClassProtocol` protocol exposes the methods and properties of an underlying `GFlagsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlagsClass`.
/// Alternatively, use `FlagsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class of a flags type holds information about its
/// possible values.
public protocol FlagsClassProtocol {
        /// Untyped pointer to the underlying `GFlagsClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFlagsClass` instance.
    var _ptr: UnsafeMutablePointer<GFlagsClass>! { get }

}

/// The `FlagsClassRef` type acts as a lightweight Swift reference to an underlying `GFlagsClass` instance.
/// It exposes methods that can operate on this data type through `FlagsClassProtocol` conformance.
/// Use `FlagsClassRef` only as an `unowned` reference to an existing `GFlagsClass` instance.
///
/// The class of a flags type holds information about its
/// possible values.
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

/// The `FlagsClass` type acts as an owner of an underlying `GFlagsClass` instance.
/// It provides the methods that can operate on this data type through `FlagsClassProtocol` conformance.
/// Use `FlagsClass` as a strong reference or owner of a `GFlagsClass` instance.
///
/// The class of a flags type holds information about its
/// possible values.
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
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
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

// MARK: FlagsClass has no signals
// MARK: FlagsClass Record: FlagsClassProtocol extension (methods and fields)
public extension FlagsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFlagsClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFlagsClass>! { return ptr?.assumingMemoryBound(to: GFlagsClass.self) }

    /// Returns the first `GFlagsValue` which is set in `value`.
    @inlinable func flagsGetFirst(value: Int) -> FlagsValueRef! {
        let rv = FlagsValueRef(gconstpointer: gconstpointer(g_flags_get_first_value(_ptr, guint(value))))
        return rv
    }

    /// Looks up a `GFlagsValue` by name.
    @inlinable func flagsGetValueBy(name: UnsafePointer<gchar>!) -> FlagsValueRef! {
        let rv = FlagsValueRef(gconstpointer: gconstpointer(g_flags_get_value_by_name(_ptr, name)))
        return rv
    }

    /// Looks up a `GFlagsValue` by nickname.
    @inlinable func flagsGetValueBy(nick: UnsafePointer<gchar>!) -> FlagsValueRef! {
        let rv = FlagsValueRef(gconstpointer: gconstpointer(g_flags_get_value_by_nick(_ptr, nick)))
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



