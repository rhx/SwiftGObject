import CGLib
import GLib
import GObjectCHelpers

// MARK: - EnumClass Record

/// The class of an enumeration type holds information about its
/// possible values.
///
/// The `EnumClassProtocol` protocol exposes the methods and properties of an underlying `GEnumClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EnumClass`.
/// Alternatively, use `EnumClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol EnumClassProtocol {
        /// Untyped pointer to the underlying `GEnumClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEnumClass` instance.
    var _ptr: UnsafeMutablePointer<GEnumClass>! { get }

    /// Required Initialiser for types conforming to `EnumClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The class of an enumeration type holds information about its
/// possible values.
///
/// The `EnumClassRef` type acts as a lightweight Swift reference to an underlying `GEnumClass` instance.
/// It exposes methods that can operate on this data type through `EnumClassProtocol` conformance.
/// Use `EnumClassRef` only as an `unowned` reference to an existing `GEnumClass` instance.
///
public struct EnumClassRef: EnumClassProtocol {
        /// Untyped pointer to the underlying `GEnumClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension EnumClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GEnumClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GEnumClass>?) {
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

    /// Reference intialiser for a related type that implements `EnumClassProtocol`
    @inlinable init<T: EnumClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The class of an enumeration type holds information about its
/// possible values.
///
/// The `EnumClass` type acts as an owner of an underlying `GEnumClass` instance.
/// It provides the methods that can operate on this data type through `EnumClassProtocol` conformance.
/// Use `EnumClass` as a strong reference or owner of a `GEnumClass` instance.
///
open class EnumClass: EnumClassProtocol {
        /// Untyped pointer to the underlying `GEnumClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GEnumClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GEnumClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GEnumClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GEnumClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `EnumClassProtocol`
    /// `GEnumClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EnumClassProtocol`
    @inlinable public init<T: EnumClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GEnumClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GEnumClass`.
    deinit {
        // no reference counting for GEnumClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GEnumClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GEnumClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GEnumClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GEnumClass, cannot ref(_ptr)
    }



}

// MARK: no EnumClass properties

// MARK: no EnumClass signals

// MARK: EnumClass has no signals
// MARK: EnumClass Record: EnumClassProtocol extension (methods and fields)
public extension EnumClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEnumClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GEnumClass>! { return ptr?.assumingMemoryBound(to: GEnumClass.self) }

    /// Returns the `GEnumValue` for a value.
    @inlinable func enumGet(value: Int) -> GLibObject.EnumValueRef! {
        let result = g_enum_get_value(_ptr, gint(value))
        let rv = EnumValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Looks up a `GEnumValue` by name.
    @inlinable func enumGetValueBy(name: UnsafePointer<gchar>!) -> GLibObject.EnumValueRef! {
        let result = g_enum_get_value_by_name(_ptr, name)
        let rv = EnumValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Looks up a `GEnumValue` by nickname.
    @inlinable func enumGetValueBy(nick: UnsafePointer<gchar>!) -> GLibObject.EnumValueRef! {
        let result = g_enum_get_value_by_nick(_ptr, nick)
        let rv = EnumValueRef(gconstpointer: gconstpointer(result))
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

    /// the smallest possible value.
    @inlinable var minimum: gint {
        /// the smallest possible value.
        get {
            let rv = _ptr.pointee.minimum
    return rv
        }
        /// the smallest possible value.
         set {
            _ptr.pointee.minimum = newValue
        }
    }

    /// the largest possible value.
    @inlinable var maximum: gint {
        /// the largest possible value.
        get {
            let rv = _ptr.pointee.maximum
    return rv
        }
        /// the largest possible value.
         set {
            _ptr.pointee.maximum = newValue
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

    /// an array of `GEnumValue` structs describing the
    ///  individual values.
    @inlinable var values: EnumValueRef! {
        /// an array of `GEnumValue` structs describing the
        ///  individual values.
        get {
            let rv = EnumValueRef(gconstpointer: gconstpointer(_ptr.pointee.values))
    return rv
        }
        /// an array of `GEnumValue` structs describing the
        ///  individual values.
         set {
            _ptr.pointee.values = UnsafeMutablePointer<GEnumValue>(newValue._ptr)
        }
    }

}



// MARK: - EnumValue Record

/// A structure which contains a single enum value, its name, and its
/// nickname.
///
/// The `EnumValueProtocol` protocol exposes the methods and properties of an underlying `GEnumValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EnumValue`.
/// Alternatively, use `EnumValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol EnumValueProtocol {
        /// Untyped pointer to the underlying `GEnumValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GEnumValue` instance.
    var _ptr: UnsafeMutablePointer<GEnumValue>! { get }

    /// Required Initialiser for types conforming to `EnumValueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure which contains a single enum value, its name, and its
/// nickname.
///
/// The `EnumValueRef` type acts as a lightweight Swift reference to an underlying `GEnumValue` instance.
/// It exposes methods that can operate on this data type through `EnumValueProtocol` conformance.
/// Use `EnumValueRef` only as an `unowned` reference to an existing `GEnumValue` instance.
///
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

/// A structure which contains a single enum value, its name, and its
/// nickname.
///
/// The `EnumValue` type acts as an owner of an underlying `GEnumValue` instance.
/// It provides the methods that can operate on this data type through `EnumValueProtocol` conformance.
/// Use `EnumValue` as a strong reference or owner of a `GEnumValue` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: no EnumValue signals

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
        let result = g_enum_register_static(name, _ptr)
        let rv = result
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



