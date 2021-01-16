import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypeFundamentalInfo Record

/// The `TypeFundamentalInfoProtocol` protocol exposes the methods and properties of an underlying `GTypeFundamentalInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeFundamentalInfo`.
/// Alternatively, use `TypeFundamentalInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
public protocol TypeFundamentalInfoProtocol {
        /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeFundamentalInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeFundamentalInfo>! { get }

}

/// The `TypeFundamentalInfoRef` type acts as a lightweight Swift reference to an underlying `GTypeFundamentalInfo` instance.
/// It exposes methods that can operate on this data type through `TypeFundamentalInfoProtocol` conformance.
/// Use `TypeFundamentalInfoRef` only as an `unowned` reference to an existing `GTypeFundamentalInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
public struct TypeFundamentalInfoRef: TypeFundamentalInfoProtocol {
        /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeFundamentalInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeFundamentalInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeFundamentalInfo>?) {
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

    /// Reference intialiser for a related type that implements `TypeFundamentalInfoProtocol`
    @inlinable init<T: TypeFundamentalInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeFundamentalInfo` type acts as an owner of an underlying `GTypeFundamentalInfo` instance.
/// It provides the methods that can operate on this data type through `TypeFundamentalInfoProtocol` conformance.
/// Use `TypeFundamentalInfo` as a strong reference or owner of a `GTypeFundamentalInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
open class TypeFundamentalInfo: TypeFundamentalInfoProtocol {
        /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeFundamentalInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeFundamentalInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeFundamentalInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeFundamentalInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeFundamentalInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeFundamentalInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeFundamentalInfoProtocol`
    /// `GTypeFundamentalInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeFundamentalInfoProtocol`
    @inlinable public init<T: TypeFundamentalInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeFundamentalInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeFundamentalInfo`.
    deinit {
        // no reference counting for GTypeFundamentalInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeFundamentalInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeFundamentalInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeFundamentalInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeFundamentalInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeFundamentalInfo, cannot ref(_ptr)
    }



}

// MARK: no TypeFundamentalInfo properties

// MARK: no TypeFundamentalInfo signals

// MARK: TypeFundamentalInfo has no signals
// MARK: TypeFundamentalInfo Record: TypeFundamentalInfoProtocol extension (methods and fields)
public extension TypeFundamentalInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeFundamentalInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeFundamentalInfo>! { return ptr?.assumingMemoryBound(to: GTypeFundamentalInfo.self) }

    /// Registers `type_id` as the predefined identifier and `type_name` as the
    /// name of a fundamental type. If `type_id` is already registered, or a
    /// type named `type_name` is already registered, the behaviour is undefined.
    /// The type system uses the information contained in the `GTypeInfo` structure
    /// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
    /// `finfo` to manage the type and its instances. The value of `flags` determines
    /// additional characteristics of the fundamental type.
    @inlinable func typeRegisterFundamental<TypeInfoT: TypeInfoProtocol>(typeID: GType, typeName: UnsafePointer<gchar>!, info: TypeInfoT, flags: TypeFlags) -> GType {
        let rv = g_type_register_fundamental(typeID, typeName, info._ptr, _ptr, flags.value)
        return rv
    }

    /// `GTypeFundamentalFlags` describing the characteristics of the fundamental type
    @inlinable var typeFlags: TypeFundamentalFlags {
        /// `GTypeFundamentalFlags` describing the characteristics of the fundamental type
        get {
            let rv = TypeFundamentalFlags(_ptr.pointee.type_flags)
            return rv
        }
        /// `GTypeFundamentalFlags` describing the characteristics of the fundamental type
         set {
            _ptr.pointee.type_flags = newValue.value
        }
    }

}



// MARK: - TypeInfo Record

/// The `TypeInfoProtocol` protocol exposes the methods and properties of an underlying `GTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInfo`.
/// Alternatively, use `TypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
public protocol TypeInfoProtocol {
        /// Untyped pointer to the underlying `GTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeInfo>! { get }

}

/// The `TypeInfoRef` type acts as a lightweight Swift reference to an underlying `GTypeInfo` instance.
/// It exposes methods that can operate on this data type through `TypeInfoProtocol` conformance.
/// Use `TypeInfoRef` only as an `unowned` reference to an existing `GTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
public struct TypeInfoRef: TypeInfoProtocol {
        /// Untyped pointer to the underlying `GTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeInfo>?) {
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

    /// Reference intialiser for a related type that implements `TypeInfoProtocol`
    @inlinable init<T: TypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeInfo` type acts as an owner of an underlying `GTypeInfo` instance.
/// It provides the methods that can operate on this data type through `TypeInfoProtocol` conformance.
/// Use `TypeInfo` as a strong reference or owner of a `GTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
open class TypeInfo: TypeInfoProtocol {
        /// Untyped pointer to the underlying `GTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeInfoProtocol`
    /// `GTypeInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeInfoProtocol`
    @inlinable public init<T: TypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeInfo`.
    deinit {
        // no reference counting for GTypeInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeInfo, cannot ref(_ptr)
    }



}

// MARK: no TypeInfo properties

// MARK: no TypeInfo signals

// MARK: TypeInfo has no signals
// MARK: TypeInfo Record: TypeInfoProtocol extension (methods and fields)
public extension TypeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeInfo>! { return ptr?.assumingMemoryBound(to: GTypeInfo.self) }

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
    @inlinable func enumCompleteTypeInfo<EnumValueT: EnumValueProtocol>(gEnumType: GType, constValues: EnumValueT) {
        g_enum_complete_type_info(gEnumType, _ptr, constValues._ptr)
    
    }

    /// This function is meant to be called from the `complete_type_info()`
    /// function of a `GTypePlugin` implementation, see the example for
    /// `g_enum_complete_type_info()` above.
    @inlinable func flagsCompleteTypeInfo<FlagsValueT: FlagsValueProtocol>(gFlagsType: GType, constValues: FlagsValueT) {
        g_flags_complete_type_info(gFlagsType, _ptr, constValues._ptr)
    
    }

    /// Registers `type_id` as the predefined identifier and `type_name` as the
    /// name of a fundamental type. If `type_id` is already registered, or a
    /// type named `type_name` is already registered, the behaviour is undefined.
    /// The type system uses the information contained in the `GTypeInfo` structure
    /// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
    /// `finfo` to manage the type and its instances. The value of `flags` determines
    /// additional characteristics of the fundamental type.
    @inlinable func typeRegisterFundamental<TypeFundamentalInfoT: TypeFundamentalInfoProtocol>(typeID: GType, typeName: UnsafePointer<gchar>!, finfo: TypeFundamentalInfoT, flags: TypeFlags) -> GType {
        let rv = g_type_register_fundamental(typeID, typeName, _ptr, finfo._ptr, flags.value)
        return rv
    }

    /// Registers `type_name` as the name of a new static type derived from
    /// `parent_type`. The type system uses the information contained in the
    /// `GTypeInfo` structure pointed to by `info` to manage the type and its
    /// instances (if not abstract). The value of `flags` determines the nature
    /// (e.g. abstract or not) of the type.
    @inlinable func typeRegisterStatic(parentType: GType, typeName: UnsafePointer<gchar>!, flags: TypeFlags) -> GType {
        let rv = g_type_register_static(parentType, typeName, _ptr, flags.value)
        return rv
    }

    /// Size of the class structure (required for interface, classed and instantiatable types)
    @inlinable var classSize: guint16 {
        /// Size of the class structure (required for interface, classed and instantiatable types)
        get {
            let rv = _ptr.pointee.class_size
            return rv
        }
        /// Size of the class structure (required for interface, classed and instantiatable types)
         set {
            _ptr.pointee.class_size = newValue
        }
    }

    /// Location of the base initialization function (optional)
    @inlinable var baseInit: GBaseInitFunc! {
        /// Location of the base initialization function (optional)
        get {
            let rv = _ptr.pointee.base_init
            return rv
        }
        /// Location of the base initialization function (optional)
         set {
            _ptr.pointee.base_init = newValue
        }
    }

    /// Location of the base finalization function (optional)
    @inlinable var baseFinalize: GBaseFinalizeFunc! {
        /// Location of the base finalization function (optional)
        get {
            let rv = _ptr.pointee.base_finalize
            return rv
        }
        /// Location of the base finalization function (optional)
         set {
            _ptr.pointee.base_finalize = newValue
        }
    }

    /// Location of the class initialization function for
    ///  classed and instantiatable types. Location of the default vtable
    ///  inititalization function for interface types. (optional) This function
    ///  is used both to fill in virtual functions in the class or default vtable,
    ///  and to do type-specific setup such as registering signals and object
    ///  properties.
    @inlinable var classInit: GClassInitFunc! {
        /// Location of the class initialization function for
        ///  classed and instantiatable types. Location of the default vtable
        ///  inititalization function for interface types. (optional) This function
        ///  is used both to fill in virtual functions in the class or default vtable,
        ///  and to do type-specific setup such as registering signals and object
        ///  properties.
        get {
            let rv = _ptr.pointee.class_init
            return rv
        }
        /// Location of the class initialization function for
        ///  classed and instantiatable types. Location of the default vtable
        ///  inititalization function for interface types. (optional) This function
        ///  is used both to fill in virtual functions in the class or default vtable,
        ///  and to do type-specific setup such as registering signals and object
        ///  properties.
         set {
            _ptr.pointee.class_init = newValue
        }
    }

    /// Location of the class finalization function for
    ///  classed and instantiatable types. Location of the default vtable
    ///  finalization function for interface types. (optional)
    @inlinable var classFinalize: GClassFinalizeFunc! {
        /// Location of the class finalization function for
        ///  classed and instantiatable types. Location of the default vtable
        ///  finalization function for interface types. (optional)
        get {
            let rv = _ptr.pointee.class_finalize
            return rv
        }
        /// Location of the class finalization function for
        ///  classed and instantiatable types. Location of the default vtable
        ///  finalization function for interface types. (optional)
         set {
            _ptr.pointee.class_finalize = newValue
        }
    }

    /// User-supplied data passed to the class init/finalize functions
    @inlinable var classData: gconstpointer! {
        /// User-supplied data passed to the class init/finalize functions
        get {
            let rv = _ptr.pointee.class_data
            return rv
        }
        /// User-supplied data passed to the class init/finalize functions
         set {
            _ptr.pointee.class_data = newValue
        }
    }

    /// Size of the instance (object) structure (required for instantiatable types only)
    @inlinable var instanceSize: guint16 {
        /// Size of the instance (object) structure (required for instantiatable types only)
        get {
            let rv = _ptr.pointee.instance_size
            return rv
        }
        /// Size of the instance (object) structure (required for instantiatable types only)
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

    /// Location of the instance initialization function (optional, for instantiatable types only)
    @inlinable var instanceInit: GInstanceInitFunc! {
        /// Location of the instance initialization function (optional, for instantiatable types only)
        get {
            let rv = _ptr.pointee.instance_init
            return rv
        }
        /// Location of the instance initialization function (optional, for instantiatable types only)
         set {
            _ptr.pointee.instance_init = newValue
        }
    }

    /// A `GTypeValueTable` function table for generic handling of GValues
    ///  of this type (usually only useful for fundamental types)
    @inlinable var valueTable: TypeValueTableRef! {
        /// A `GTypeValueTable` function table for generic handling of GValues
        ///  of this type (usually only useful for fundamental types)
        get {
            let rv = TypeValueTableRef(gconstpointer: gconstpointer(_ptr.pointee.value_table))
            return rv
        }
        /// A `GTypeValueTable` function table for generic handling of GValues
        ///  of this type (usually only useful for fundamental types)
         set {
            _ptr.pointee.value_table = UnsafePointer<GTypeValueTable>(newValue._ptr)
        }
    }

}



// MARK: - TypeInstance Record

/// The `TypeInstanceProtocol` protocol exposes the methods and properties of an underlying `GTypeInstance` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInstance`.
/// Alternatively, use `TypeInstanceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used as the base of all type instances.
public protocol TypeInstanceProtocol {
        /// Untyped pointer to the underlying `GTypeInstance` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInstance` instance.
    var _ptr: UnsafeMutablePointer<GTypeInstance>! { get }

}

/// The `TypeInstanceRef` type acts as a lightweight Swift reference to an underlying `GTypeInstance` instance.
/// It exposes methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstanceRef` only as an `unowned` reference to an existing `GTypeInstance` instance.
///
/// An opaque structure used as the base of all type instances.
public struct TypeInstanceRef: TypeInstanceProtocol {
        /// Untyped pointer to the underlying `GTypeInstance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeInstanceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeInstance>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeInstance>?) {
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

    /// Reference intialiser for a related type that implements `TypeInstanceProtocol`
    @inlinable init<T: TypeInstanceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeInstance` type acts as an owner of an underlying `GTypeInstance` instance.
/// It provides the methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstance` as a strong reference or owner of a `GTypeInstance` instance.
///
/// An opaque structure used as the base of all type instances.
open class TypeInstance: TypeInstanceProtocol {
        /// Untyped pointer to the underlying `GTypeInstance` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeInstance>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeInstance>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeInstance` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeInstance` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeInstance>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeInstanceProtocol`
    /// `GTypeInstance` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeInstanceProtocol`
    @inlinable public init<T: TypeInstanceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeInstance`.
    deinit {
        // no reference counting for GTypeInstance, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInstanceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeInstance, cannot ref(_ptr)
    }



}

// MARK: no TypeInstance properties

// MARK: no TypeInstance signals

// MARK: TypeInstance has no signals
// MARK: TypeInstance Record: TypeInstanceProtocol extension (methods and fields)
public extension TypeInstanceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInstance` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeInstance>! { return ptr?.assumingMemoryBound(to: GTypeInstance.self) }

    @inlinable func getPrivate(privateType: GType) -> gpointer! {
        let rv = g_type_instance_get_private(_ptr, privateType)
        return rv
    }


    // *** signalChainFromOverriddenHandler() is not available because it has a varargs (...) parameter!


    /// This is similar to `g_signal_connect_data()`, but uses a closure which
    /// ensures that the `gobject` stays alive during the call to `c_handler`
    /// by temporarily adding a reference count to `gobject`.
    /// 
    /// When the `gobject` is destroyed the signal handler will be automatically
    /// disconnected.  Note that this is not currently threadsafe (ie:
    /// emitting a signal while `gobject` is being destroyed in another thread
    /// is not safe).
    @inlinable func signalConnectObject(detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, gobject: ObjectRef? = nil, connectFlags: ConnectFlags) -> Int {
        let rv = Int(g_signal_connect_object(_ptr, detailedSignal, cHandler, gobject?.object_ptr, connectFlags.value))
        return rv
    }
    /// This is similar to `g_signal_connect_data()`, but uses a closure which
    /// ensures that the `gobject` stays alive during the call to `c_handler`
    /// by temporarily adding a reference count to `gobject`.
    /// 
    /// When the `gobject` is destroyed the signal handler will be automatically
    /// disconnected.  Note that this is not currently threadsafe (ie:
    /// emitting a signal while `gobject` is being destroyed in another thread
    /// is not safe).
    @inlinable func signalConnectObject<ObjectT: ObjectProtocol>(detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, gobject: ObjectT?, connectFlags: ConnectFlags) -> Int {
        let rv = Int(g_signal_connect_object(_ptr, detailedSignal, cHandler, gobject?.object_ptr, connectFlags.value))
        return rv
    }

    /// Emits a signal.
    /// 
    /// Note that `g_signal_emit_valist()` resets the return value to the default
    /// if no handlers are connected, in contrast to `g_signal_emitv()`.
    @inlinable func signalEmitValist(signalID: Int, detail: GQuark, varArgs: CVaListPointer) {
        g_signal_emit_valist(_ptr, guint(signalID), detail, varArgs)
    
    }

    /// Private helper function to aid implementation of the
    /// `G_TYPE_CHECK_INSTANCE()` macro.
    @inlinable func typeCheckInstance() -> Bool {
        let rv = ((g_type_check_instance(_ptr)) != 0)
        return rv
    }

    @inlinable func typeCheckInstanceCast(ifaceType: GType) -> TypeInstanceRef! {
        guard let rv = TypeInstanceRef(gconstpointer: gconstpointer(g_type_check_instance_cast(_ptr, ifaceType))) else { return nil }
        return rv
    }

    @inlinable func typeCheckInstanceIsA(ifaceType: GType) -> Bool {
        let rv = ((g_type_check_instance_is_a(_ptr, ifaceType)) != 0)
        return rv
    }

    @inlinable func typeCheckInstanceIsFundamentallyA(fundamentalType: GType) -> Bool {
        let rv = ((g_type_check_instance_is_fundamentally_a(_ptr, fundamentalType)) != 0)
        return rv
    }

    /// Frees an instance of a type, returning it to the instance pool for
    /// the type, if there is one.
    /// 
    /// Like `g_type_create_instance()`, this function is reserved for
    /// implementors of fundamental types.
    @inlinable func typeFreeInstance() {
        g_type_free_instance(_ptr)
    
    }

    @inlinable func typeNameFromInstance() -> String! {
        let rv = g_type_name_from_instance(_ptr).map({ String(cString: $0) })
        return rv
    }

    // var gClass is unavailable because g_class is private

}



// MARK: - TypeInterface Record

/// The `TypeInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTypeInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInterface`.
/// Alternatively, use `TypeInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used as the base of all interface types.
public protocol TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInterface` instance.
    var _ptr: UnsafeMutablePointer<GTypeInterface>! { get }

}

/// The `TypeInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTypeInterface` instance.
/// It exposes methods that can operate on this data type through `TypeInterfaceProtocol` conformance.
/// Use `TypeInterfaceRef` only as an `unowned` reference to an existing `GTypeInterface` instance.
///
/// An opaque structure used as the base of all interface types.
public struct TypeInterfaceRef: TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeInterfaceRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeInterface>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeInterface>?) {
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

    /// Reference intialiser for a related type that implements `TypeInterfaceProtocol`
    @inlinable init<T: TypeInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    @inlinable static func peek<TypeClassT: TypeClassProtocol>(instanceClass: TypeClassT, ifaceType: GType) -> TypeInterfaceRef! {
        guard let rv = TypeInterfaceRef(gpointer: g_type_interface_peek(instanceClass._ptr, ifaceType)) else { return nil }
        return rv
    }
}

/// The `TypeInterface` type acts as an owner of an underlying `GTypeInterface` instance.
/// It provides the methods that can operate on this data type through `TypeInterfaceProtocol` conformance.
/// Use `TypeInterface` as a strong reference or owner of a `GTypeInterface` instance.
///
/// An opaque structure used as the base of all interface types.
open class TypeInterface: TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeInterface>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeInterface>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeInterface` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeInterface` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeInterface>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeInterface, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeInterfaceProtocol`
    /// `GTypeInterface` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeInterfaceProtocol`
    @inlinable public init<T: TypeInterfaceProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeInterface, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeInterface`.
    deinit {
        // no reference counting for GTypeInterface, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeInterface, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInterfaceProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeInterface, cannot ref(_ptr)
    }


    /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    @inlinable public static func peek<TypeClassT: TypeClassProtocol>(instanceClass: TypeClassT, ifaceType: GType) -> TypeInterface! {
        guard let rv = TypeInterface(gpointer: g_type_interface_peek(instanceClass._ptr, ifaceType)) else { return nil }
        return rv
    }

}

// MARK: no TypeInterface properties

// MARK: no TypeInterface signals

// MARK: TypeInterface has no signals
// MARK: TypeInterface Record: TypeInterfaceProtocol extension (methods and fields)
public extension TypeInterfaceProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInterface` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeInterface>! { return ptr?.assumingMemoryBound(to: GTypeInterface.self) }

    /// Returns the corresponding `GTypeInterface` structure of the parent type
    /// of the instance type to which `g_iface` belongs. This is useful when
    /// deriving the implementation of an interface from the parent type and
    /// then possibly overriding some methods.
    @inlinable func peekParent() -> TypeInterfaceRef! {
        guard let rv = TypeInterfaceRef(gpointer: g_type_interface_peek_parent(_ptr)) else { return nil }
        return rv
    }

    /// Decrements the reference count for the type corresponding to the
    /// interface default vtable `g_iface`. If the type is dynamic, then
    /// when no one is using the interface and all references have
    /// been released, the finalize function for the interface's default
    /// vtable (the `class_finalize` member of `GTypeInfo`) will be called.
    @inlinable func typeDefaultInterfaceUnref() {
        g_type_default_interface_unref(_ptr)
    
    }

    // var gType is unavailable because g_type is private

    // var gInstanceType is unavailable because g_instance_type is private

}



/// Metatype/GType declaration for TypeModule
public extension TypeModuleClassRef {
    
    /// This getter returns the GLib type identifier registered for `TypeModule`
    static var metatypeReference: GType { g_type_module_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GTypeModuleClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GTypeModuleClass.self) }
    
    static var metatype: GTypeModuleClass? { metatypePointer?.pointee } 
    
    static var wrapper: TypeModuleClassRef? { TypeModuleClassRef(metatypePointer) }
    
    
}

// MARK: - TypeModuleClass Record

/// The `TypeModuleClassProtocol` protocol exposes the methods and properties of an underlying `GTypeModuleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeModuleClass`.
/// Alternatively, use `TypeModuleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
public protocol TypeModuleClassProtocol {
        /// Untyped pointer to the underlying `GTypeModuleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeModuleClass>! { get }

}

/// The `TypeModuleClassRef` type acts as a lightweight Swift reference to an underlying `GTypeModuleClass` instance.
/// It exposes methods that can operate on this data type through `TypeModuleClassProtocol` conformance.
/// Use `TypeModuleClassRef` only as an `unowned` reference to an existing `GTypeModuleClass` instance.
///
/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
public struct TypeModuleClassRef: TypeModuleClassProtocol {
        /// Untyped pointer to the underlying `GTypeModuleClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeModuleClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeModuleClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeModuleClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeModuleClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeModuleClass>?) {
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

    /// Reference intialiser for a related type that implements `TypeModuleClassProtocol`
    @inlinable init<T: TypeModuleClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: TypeModuleClass Record: TypeModuleClassProtocol extension (methods and fields)
public extension TypeModuleClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeModuleClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeModuleClass>! { return ptr?.assumingMemoryBound(to: GTypeModuleClass.self) }


    /// the parent class
    @inlinable var parentClass: GObjectClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.parent_class
            return rv
        }
    }

    // var load is unavailable because load is void

    // var unload is unavailable because unload is void

    // var reserved1 is unavailable because reserved1 is void

    // var reserved2 is unavailable because reserved2 is void

    // var reserved3 is unavailable because reserved3 is void

    // var reserved4 is unavailable because reserved4 is void

}



// MARK: - TypePluginClass Record

/// The `TypePluginClassProtocol` protocol exposes the methods and properties of an underlying `GTypePluginClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypePluginClass`.
/// Alternatively, use `TypePluginClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
public protocol TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypePluginClass` instance.
    var _ptr: UnsafeMutablePointer<GTypePluginClass>! { get }

}

/// The `TypePluginClassRef` type acts as a lightweight Swift reference to an underlying `GTypePluginClass` instance.
/// It exposes methods that can operate on this data type through `TypePluginClassProtocol` conformance.
/// Use `TypePluginClassRef` only as an `unowned` reference to an existing `GTypePluginClass` instance.
///
/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
public struct TypePluginClassRef: TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypePluginClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypePluginClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypePluginClass>?) {
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

    /// Reference intialiser for a related type that implements `TypePluginClassProtocol`
    @inlinable init<T: TypePluginClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypePluginClass` type acts as an owner of an underlying `GTypePluginClass` instance.
/// It provides the methods that can operate on this data type through `TypePluginClassProtocol` conformance.
/// Use `TypePluginClass` as a strong reference or owner of a `GTypePluginClass` instance.
///
/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
open class TypePluginClass: TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypePluginClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypePluginClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypePluginClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypePluginClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypePluginClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypePluginClassProtocol`
    /// `GTypePluginClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypePluginClassProtocol`
    @inlinable public init<T: TypePluginClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypePluginClass`.
    deinit {
        // no reference counting for GTypePluginClass, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypePluginClass, cannot ref(_ptr)
    }



}

// MARK: no TypePluginClass properties

// MARK: no TypePluginClass signals

// MARK: TypePluginClass has no signals
// MARK: TypePluginClass Record: TypePluginClassProtocol extension (methods and fields)
public extension TypePluginClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypePluginClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypePluginClass>! { return ptr?.assumingMemoryBound(to: GTypePluginClass.self) }


    // var baseIface is unavailable because base_iface is private

    /// Increases the use count of the plugin.
    @inlinable var usePlugin: GTypePluginUse! {
        /// Increases the use count of the plugin.
        get {
            let rv = _ptr.pointee.use_plugin
            return rv
        }
        /// Increases the use count of the plugin.
         set {
            _ptr.pointee.use_plugin = newValue
        }
    }

    /// Decreases the use count of the plugin.
    @inlinable var unusePlugin: GTypePluginUnuse! {
        /// Decreases the use count of the plugin.
        get {
            let rv = _ptr.pointee.unuse_plugin
            return rv
        }
        /// Decreases the use count of the plugin.
         set {
            _ptr.pointee.unuse_plugin = newValue
        }
    }

    /// Fills in the `GTypeInfo` and
    ///  `GTypeValueTable` structs for the type. The structs are initialized
    ///  with ``memset(s, 0, sizeof (s)`)` before calling this function.
    @inlinable var completeTypeInfo: GTypePluginCompleteTypeInfo! {
        /// Fills in the `GTypeInfo` and
        ///  `GTypeValueTable` structs for the type. The structs are initialized
        ///  with ``memset(s, 0, sizeof (s)`)` before calling this function.
        get {
            let rv = _ptr.pointee.complete_type_info
            return rv
        }
        /// Fills in the `GTypeInfo` and
        ///  `GTypeValueTable` structs for the type. The structs are initialized
        ///  with ``memset(s, 0, sizeof (s)`)` before calling this function.
         set {
            _ptr.pointee.complete_type_info = newValue
        }
    }

    /// Fills in missing parts of the `GInterfaceInfo`
    ///  for the interface. The structs is initialized with
    ///  ``memset(s, 0, sizeof (s)`)` before calling this function.
    @inlinable var completeInterfaceInfo: GTypePluginCompleteInterfaceInfo! {
        /// Fills in missing parts of the `GInterfaceInfo`
        ///  for the interface. The structs is initialized with
        ///  ``memset(s, 0, sizeof (s)`)` before calling this function.
        get {
            let rv = _ptr.pointee.complete_interface_info
            return rv
        }
        /// Fills in missing parts of the `GInterfaceInfo`
        ///  for the interface. The structs is initialized with
        ///  ``memset(s, 0, sizeof (s)`)` before calling this function.
         set {
            _ptr.pointee.complete_interface_info = newValue
        }
    }

}



// MARK: - TypeQuery Record

/// The `TypeQueryProtocol` protocol exposes the methods and properties of an underlying `GTypeQuery` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeQuery`.
/// Alternatively, use `TypeQueryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure holding information for a specific type.
/// It is filled in by the `g_type_query()` function.
public protocol TypeQueryProtocol {
        /// Untyped pointer to the underlying `GTypeQuery` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeQuery` instance.
    var _ptr: UnsafeMutablePointer<GTypeQuery>! { get }

}

/// The `TypeQueryRef` type acts as a lightweight Swift reference to an underlying `GTypeQuery` instance.
/// It exposes methods that can operate on this data type through `TypeQueryProtocol` conformance.
/// Use `TypeQueryRef` only as an `unowned` reference to an existing `GTypeQuery` instance.
///
/// A structure holding information for a specific type.
/// It is filled in by the `g_type_query()` function.
public struct TypeQueryRef: TypeQueryProtocol {
        /// Untyped pointer to the underlying `GTypeQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeQueryRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeQuery>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeQuery>?) {
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

    /// Reference intialiser for a related type that implements `TypeQueryProtocol`
    @inlinable init<T: TypeQueryProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeQuery` type acts as an owner of an underlying `GTypeQuery` instance.
/// It provides the methods that can operate on this data type through `TypeQueryProtocol` conformance.
/// Use `TypeQuery` as a strong reference or owner of a `GTypeQuery` instance.
///
/// A structure holding information for a specific type.
/// It is filled in by the `g_type_query()` function.
open class TypeQuery: TypeQueryProtocol {
        /// Untyped pointer to the underlying `GTypeQuery` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeQuery>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeQuery>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeQuery` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeQuery` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeQuery>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeQuery, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeQueryProtocol`
    /// `GTypeQuery` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeQueryProtocol`
    @inlinable public init<T: TypeQueryProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeQuery, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeQuery`.
    deinit {
        // no reference counting for GTypeQuery, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeQuery, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeQuery, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeQuery, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeQueryProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeQuery, cannot ref(_ptr)
    }



}

// MARK: no TypeQuery properties

// MARK: no TypeQuery signals

// MARK: TypeQuery has no signals
// MARK: TypeQuery Record: TypeQueryProtocol extension (methods and fields)
public extension TypeQueryProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeQuery` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeQuery>! { return ptr?.assumingMemoryBound(to: GTypeQuery.self) }

    /// Queries the type system for information about a specific type.
    /// This function will fill in a user-provided structure to hold
    /// type-specific information. If an invalid `GType` is passed in, the
    /// `type` member of the `GTypeQuery` is 0. All members filled into the
    /// `GTypeQuery` structure should be considered constant and have to be
    /// left untouched.
    @inlinable func typeQuery(type: GType) {
        g_type_query(type, _ptr)
    
    }

    /// the `GType` value of the type
    @inlinable var type: GType {
        /// the `GType` value of the type
        get {
            let rv = _ptr.pointee.type
            return rv
        }
        /// the `GType` value of the type
         set {
            _ptr.pointee.type = newValue
        }
    }

    /// the name of the type
    @inlinable var typeName: UnsafePointer<gchar>! {
        /// the name of the type
        get {
            let rv = _ptr.pointee.type_name
            return rv
        }
        /// the name of the type
         set {
            _ptr.pointee.type_name = newValue
        }
    }

    /// the size of the class structure
    @inlinable var classSize: guint {
        /// the size of the class structure
        get {
            let rv = _ptr.pointee.class_size
            return rv
        }
        /// the size of the class structure
         set {
            _ptr.pointee.class_size = newValue
        }
    }

    /// the size of the instance structure
    @inlinable var instanceSize: guint {
        /// the size of the instance structure
        get {
            let rv = _ptr.pointee.instance_size
            return rv
        }
        /// the size of the instance structure
         set {
            _ptr.pointee.instance_size = newValue
        }
    }

}



// MARK: - TypeValueTable Record

/// The `TypeValueTableProtocol` protocol exposes the methods and properties of an underlying `GTypeValueTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeValueTable`.
/// Alternatively, use `TypeValueTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
public protocol TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeValueTable` instance.
    var _ptr: UnsafeMutablePointer<GTypeValueTable>! { get }

}

/// The `TypeValueTableRef` type acts as a lightweight Swift reference to an underlying `GTypeValueTable` instance.
/// It exposes methods that can operate on this data type through `TypeValueTableProtocol` conformance.
/// Use `TypeValueTableRef` only as an `unowned` reference to an existing `GTypeValueTable` instance.
///
/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
public struct TypeValueTableRef: TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeValueTableRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeValueTable>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeValueTable>?) {
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

    /// Reference intialiser for a related type that implements `TypeValueTableProtocol`
    @inlinable init<T: TypeValueTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the location of the `GTypeValueTable` associated with `type`.
    /// 
    /// Note that this function should only be used from source code
    /// that implements or has internal knowledge of the implementation of
    /// `type`.
    @inlinable static func peek(type: GType) -> TypeValueTableRef! {
        guard let rv = TypeValueTableRef(gconstpointer: gconstpointer(g_type_value_table_peek(type))) else { return nil }
        return rv
    }
}

/// The `TypeValueTable` type acts as an owner of an underlying `GTypeValueTable` instance.
/// It provides the methods that can operate on this data type through `TypeValueTableProtocol` conformance.
/// Use `TypeValueTable` as a strong reference or owner of a `GTypeValueTable` instance.
///
/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
open class TypeValueTable: TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeValueTable>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeValueTable>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeValueTable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeValueTable, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeValueTableProtocol`
    /// `GTypeValueTable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeValueTableProtocol`
    @inlinable public init<T: TypeValueTableProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeValueTable, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeValueTable`.
    deinit {
        // no reference counting for GTypeValueTable, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeValueTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeValueTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeValueTable, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeValueTable, cannot ref(_ptr)
    }


    /// Returns the location of the `GTypeValueTable` associated with `type`.
    /// 
    /// Note that this function should only be used from source code
    /// that implements or has internal knowledge of the implementation of
    /// `type`.
    @inlinable public static func peek(type: GType) -> TypeValueTable! {
        guard let rv = TypeValueTable(gconstpointer: gconstpointer(g_type_value_table_peek(type))) else { return nil }
        return rv
    }

}

// MARK: no TypeValueTable properties

// MARK: no TypeValueTable signals

// MARK: TypeValueTable has no signals
// MARK: TypeValueTable Record: TypeValueTableProtocol extension (methods and fields)
public extension TypeValueTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeValueTable` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeValueTable>! { return ptr?.assumingMemoryBound(to: GTypeValueTable.self) }


    // var valueInit is unavailable because value_init is void

    // var valueFree is unavailable because value_free is void

    // var valueCopy is unavailable because value_copy is void

    // var valuePeekPointer is unavailable because value_peek_pointer is void

    /// A string format describing how to collect the contents of
    ///  this value bit-by-bit. Each character in the format represents
    ///  an argument to be collected, and the characters themselves indicate
    ///  the type of the argument. Currently supported arguments are:
    ///  - 'i' - Integers. passed as collect_values[].v_int.
    ///  - 'l' - Longs. passed as collect_values[].v_long.
    ///  - 'd' - Doubles. passed as collect_values[].v_double.
    ///  - 'p' - Pointers. passed as collect_values[].v_pointer.
    ///  It should be noted that for variable argument list construction,
    ///  ANSI C promotes every type smaller than an integer to an int, and
    ///  floats to doubles. So for collection of short int or char, 'i'
    ///  needs to be used, and for collection of floats 'd'.
    @inlinable var collectFormat: UnsafePointer<gchar>! {
        /// A string format describing how to collect the contents of
        ///  this value bit-by-bit. Each character in the format represents
        ///  an argument to be collected, and the characters themselves indicate
        ///  the type of the argument. Currently supported arguments are:
        ///  - 'i' - Integers. passed as collect_values[].v_int.
        ///  - 'l' - Longs. passed as collect_values[].v_long.
        ///  - 'd' - Doubles. passed as collect_values[].v_double.
        ///  - 'p' - Pointers. passed as collect_values[].v_pointer.
        ///  It should be noted that for variable argument list construction,
        ///  ANSI C promotes every type smaller than an integer to an int, and
        ///  floats to doubles. So for collection of short int or char, 'i'
        ///  needs to be used, and for collection of floats 'd'.
        get {
            let rv = _ptr.pointee.collect_format
            return rv
        }
        /// A string format describing how to collect the contents of
        ///  this value bit-by-bit. Each character in the format represents
        ///  an argument to be collected, and the characters themselves indicate
        ///  the type of the argument. Currently supported arguments are:
        ///  - 'i' - Integers. passed as collect_values[].v_int.
        ///  - 'l' - Longs. passed as collect_values[].v_long.
        ///  - 'd' - Doubles. passed as collect_values[].v_double.
        ///  - 'p' - Pointers. passed as collect_values[].v_pointer.
        ///  It should be noted that for variable argument list construction,
        ///  ANSI C promotes every type smaller than an integer to an int, and
        ///  floats to doubles. So for collection of short int or char, 'i'
        ///  needs to be used, and for collection of floats 'd'.
         set {
            _ptr.pointee.collect_format = newValue
        }
    }

    // var collectValue is unavailable because collect_value is void

    /// Format description of the arguments to collect for `lcopy_value`,
    ///  analogous to `collect_format`. Usually, `lcopy_format` string consists
    ///  only of 'p's to provide `lcopy_value()` with pointers to storage locations.
    @inlinable var lcopyFormat: UnsafePointer<gchar>! {
        /// Format description of the arguments to collect for `lcopy_value`,
        ///  analogous to `collect_format`. Usually, `lcopy_format` string consists
        ///  only of 'p's to provide `lcopy_value()` with pointers to storage locations.
        get {
            let rv = _ptr.pointee.lcopy_format
            return rv
        }
        /// Format description of the arguments to collect for `lcopy_value`,
        ///  analogous to `collect_format`. Usually, `lcopy_format` string consists
        ///  only of 'p's to provide `lcopy_value()` with pointers to storage locations.
         set {
            _ptr.pointee.lcopy_format = newValue
        }
    }

    // var lcopyValue is unavailable because lcopy_value is void

}



// MARK: - Value Record

/// The `ValueProtocol` protocol exposes the methods and properties of an underlying `GValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Value`.
/// Alternatively, use `ValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used to hold different types of values.
/// The data within the structure has protected scope: it is accessible only
/// to functions within a `GTypeValueTable` structure, or implementations of
/// the g_value_*() API. That is, code portions which implement new fundamental
/// types.
/// `GValue` users cannot make any assumptions about how data is stored
/// within the 2 element `data` union, and the `g_type` member should
/// only be accessed through the `G_VALUE_TYPE()` macro.
public protocol ValueProtocol {
        /// Untyped pointer to the underlying `GValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GValue` instance.
    var value_ptr: UnsafeMutablePointer<GValue>! { get }

}

/// The `ValueRef` type acts as a lightweight Swift reference to an underlying `GValue` instance.
/// It exposes methods that can operate on this data type through `ValueProtocol` conformance.
/// Use `ValueRef` only as an `unowned` reference to an existing `GValue` instance.
///
/// An opaque structure used to hold different types of values.
/// The data within the structure has protected scope: it is accessible only
/// to functions within a `GTypeValueTable` structure, or implementations of
/// the g_value_*() API. That is, code portions which implement new fundamental
/// types.
/// `GValue` users cannot make any assumptions about how data is stored
/// within the 2 element `data` union, and the `g_type` member should
/// only be accessed through the `G_VALUE_TYPE()` macro.
public struct ValueRef: ValueProtocol {
        /// Untyped pointer to the underlying `GValue` instance.
    /// For type-safe access, use the generated, typed pointer `value_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GValue>?) {
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

    /// Reference intialiser for a related type that implements `ValueProtocol`
    @inlinable init<T: ValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Value` type acts as an owner of an underlying `GValue` instance.
/// It provides the methods that can operate on this data type through `ValueProtocol` conformance.
/// Use `Value` as a strong reference or owner of a `GValue` instance.
///
/// An opaque structure used to hold different types of values.
/// The data within the structure has protected scope: it is accessible only
/// to functions within a `GTypeValueTable` structure, or implementations of
/// the g_value_*() API. That is, code portions which implement new fundamental
/// types.
/// `GValue` users cannot make any assumptions about how data is stored
/// within the 2 element `data` union, and the `g_type` member should
/// only be accessed through the `G_VALUE_TYPE()` macro.
open class ValueBase: ValueProtocol {
        /// Untyped pointer to the underlying `GValue` instance.
    /// For type-safe access, use the generated, typed pointer `value_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `Value` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GValue, cannot ref(value_ptr)
    }

    /// Reference intialiser for a related type that implements `ValueProtocol`
    /// `GValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ValueProtocol`
    @inlinable public init<T: ValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GValue, cannot ref(value_ptr)
    }

    /// Do-nothing destructor for `GValue`.
    deinit {
        // no reference counting for GValue, cannot unref(value_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GValue, cannot ref(value_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GValue, cannot ref(value_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GValue, cannot ref(value_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GValue, cannot ref(value_ptr)
    }



}

// MARK: no Value properties

// MARK: no Value signals

// MARK: Value has no signals
// MARK: Value Record: ValueProtocol extension (methods and fields)
public extension ValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValue` instance.
    @inlinable var value_ptr: UnsafeMutablePointer<GValue>! { return ptr?.assumingMemoryBound(to: GValue.self) }

    /// Copies the value of `src_value` into `dest_value`.
    @inlinable func copy<ValueT: ValueProtocol>(destValue: ValueT) {
        g_value_copy(value_ptr, destValue.value_ptr)
    
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.  Upon getting,
    /// the boxed value is duplicated and needs to be later freed with
    /// `g_boxed_free()`, e.g. like: g_boxed_free (G_VALUE_TYPE (`value`),
    /// return_value);
    @inlinable func dupBoxed() -> gpointer! {
        let rv = g_value_dup_boxed(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`, increasing
    /// its reference count. If the contents of the `GValue` are `nil`, then
    /// `nil` will be returned.
    @inlinable func dupObject() -> ObjectRef! {
        let rv = ObjectRef(gpointer: g_value_dup_object(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue`, increasing its
    /// reference count.
    @inlinable func dupParam() -> ParamSpecRef! {
        let rv = ParamSpecRef(gconstpointer: gconstpointer(g_value_dup_param(value_ptr)))
        return rv
    }

    /// Get a copy the contents of a `G_TYPE_STRING` `GValue`.
    @inlinable func dupString() -> String! {
        let rv = g_value_dup_string(value_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Get the contents of a variant `GValue`, increasing its refcount. The returned
    /// `GVariant` is never floating.
    @inlinable func dupVariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_value_dup_variant(value_ptr))
        return rv
    }

    /// Determines if `value` will fit inside the size of a pointer value.
    /// This is an internal function introduced mainly for C marshallers.
    @inlinable func fitsPointer() -> Bool {
        let rv = ((g_value_fits_pointer(value_ptr)) != 0)
        return rv
    }

    /// Get the contents of a `G_TYPE_BOOLEAN` `GValue`.
    @inlinable func getBoolean() -> Bool {
        let rv = ((g_value_get_boolean(value_ptr)) != 0)
        return rv
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.
    @inlinable func getBoxed() -> gpointer! {
        let rv = g_value_get_boxed(value_ptr)
        return rv
    }

    /// Do not use this function; it is broken on platforms where the `char`
    /// type is unsigned, such as ARM and PowerPC.  See `g_value_get_schar()`.
    /// 
    /// Get the contents of a `G_TYPE_CHAR` `GValue`.
    ///
    /// **get_char is deprecated:**
    /// This function's return type is broken, see g_value_get_schar()
    @available(*, deprecated) @inlinable func getChar() -> gchar {
        let rv = g_value_get_char(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_DOUBLE` `GValue`.
    @inlinable func getDouble() -> Double {
        let rv = Double(g_value_get_double(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_ENUM` `GValue`.
    @inlinable func getEnum() -> Int {
        let rv = Int(g_value_get_enum(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_FLAGS` `GValue`.
    @inlinable func getFlags() -> Int {
        let rv = Int(g_value_get_flags(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_FLOAT` `GValue`.
    @inlinable func getFloat() -> Float {
        let rv = g_value_get_float(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_GTYPE` `GValue`.
    @inlinable func getGtype() -> GType {
        let rv = g_value_get_gtype(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_INT` `GValue`.
    @inlinable func getInt() -> Int {
        let rv = Int(g_value_get_int(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_INT64` `GValue`.
    @inlinable func getInt64() -> gint64 {
        let rv = g_value_get_int64(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_LONG` `GValue`.
    @inlinable func getLong() -> Int {
        let rv = Int(g_value_get_long(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`.
    @inlinable func getObject() -> ObjectRef! {
        let rv = ObjectRef(gpointer: g_value_get_object(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue`.
    @inlinable func getParam() -> ParamSpecRef! {
        let rv = ParamSpecRef(gconstpointer: gconstpointer(g_value_get_param(value_ptr)))
        return rv
    }

    /// Get the contents of a pointer `GValue`.
    @inlinable func getPointer() -> gpointer! {
        let rv = g_value_get_pointer(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_CHAR` `GValue`.
    @inlinable func getSchar() -> gint8 {
        let rv = g_value_get_schar(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_STRING` `GValue`.
    @inlinable func getString() -> String! {
        let rv = g_value_get_string(value_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Get the contents of a `G_TYPE_UCHAR` `GValue`.
    @inlinable func getUchar() -> guchar {
        let rv = g_value_get_uchar(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_UINT` `GValue`.
    @inlinable func getUint() -> Int {
        let rv = Int(g_value_get_uint(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_UINT64` `GValue`.
    @inlinable func getUint64() -> guint64 {
        let rv = g_value_get_uint64(value_ptr)
        return rv
    }

    /// Get the contents of a `G_TYPE_ULONG` `GValue`.
    @inlinable func getUlong() -> Int {
        let rv = Int(g_value_get_ulong(value_ptr))
        return rv
    }

    /// Get the contents of a variant `GValue`.
    @inlinable func getVariant() -> GLib.VariantRef! {
        let rv = GLib.VariantRef(g_value_get_variant(value_ptr))
        return rv
    }

    /// Initializes `value` with the default value of `type`.
    @inlinable func init_(gType: GType) -> ValueRef! {
        guard let rv = ValueRef(gconstpointer: gconstpointer(g_value_init(value_ptr, gType))) else { return nil }
        return rv
    }

    /// Initializes and sets `value` from an instantiatable type via the
    /// value_table's `collect_value()` function.
    /// 
    /// Note: The `value` will be initialised with the exact type of
    /// `instance`.  If you wish to set the `value`'s type to a different GType
    /// (such as a parent class GType), you need to manually call
    /// `g_value_init()` and `g_value_set_instance()`.
    @inlinable func initFrom<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT) {
        g_value_init_from_instance(value_ptr, instance._ptr)
    
    }

    /// Returns the value contents as pointer. This function asserts that
    /// `g_value_fits_pointer()` returned `true` for the passed in value.
    /// This is an internal function introduced mainly for C marshallers.
    @inlinable func peekPointer() -> gpointer! {
        let rv = g_value_peek_pointer(value_ptr)
        return rv
    }

    /// Clears the current value in `value` and resets it to the default value
    /// (as if the value had just been initialized).
    @inlinable func reset() -> ValueRef! {
        guard let rv = ValueRef(gconstpointer: gconstpointer(g_value_reset(value_ptr))) else { return nil }
        return rv
    }

    /// Set the contents of a `G_TYPE_BOOLEAN` `GValue` to `v_boolean`.
    @inlinable func setBoolean(vBoolean: Bool) {
        g_value_set_boolean(value_ptr, gboolean((vBoolean) ? 1 : 0))
    
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    @inlinable func setBoxed(vBoxed: gconstpointer! = nil) {
        g_value_set_boxed(value_ptr, vBoxed)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_boxed_take_ownership is deprecated:**
    /// Use g_value_take_boxed() instead.
    @available(*, deprecated) @inlinable func setBoxedTakeOwnership(vBoxed: gconstpointer! = nil) {
        g_value_set_boxed_take_ownership(value_ptr, vBoxed)
    
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
    ///
    /// **set_char is deprecated:**
    /// This function's input type is broken, see g_value_set_schar()
    @available(*, deprecated) @inlinable func setChar(vChar: gchar) {
        g_value_set_char(value_ptr, vChar)
    
    }

    /// Set the contents of a `G_TYPE_DOUBLE` `GValue` to `v_double`.
    @inlinable func setDouble(vDouble: Double) {
        g_value_set_double(value_ptr, gdouble(vDouble))
    
    }

    /// Set the contents of a `G_TYPE_ENUM` `GValue` to `v_enum`.
    @inlinable func setEnum(vEnum: Int) {
        g_value_set_enum(value_ptr, gint(vEnum))
    
    }

    /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags`.
    @inlinable func setFlags(vFlags: Int) {
        g_value_set_flags(value_ptr, guint(vFlags))
    
    }

    /// Set the contents of a `G_TYPE_FLOAT` `GValue` to `v_float`.
    @inlinable func setFloat(vFloat: Double) {
        g_value_set_float(value_ptr, gfloat(vFloat))
    
    }

    /// Set the contents of a `G_TYPE_GTYPE` `GValue` to `v_gtype`.
    @inlinable func setGtype(vGtype: GType) {
        g_value_set_gtype(value_ptr, vGtype)
    
    }

    /// Sets `value` from an instantiatable type via the
    /// value_table's `collect_value()` function.
    @inlinable func set(instance: gpointer! = nil) {
        g_value_set_instance(value_ptr, instance)
    
    }

    /// Set the contents of a `G_TYPE_INT` `GValue` to `v_int`.
    @inlinable func setInt(vInt: gint) {
        g_value_set_int(value_ptr, gint(vInt))
    
    }

    /// Set the contents of a `G_TYPE_INT64` `GValue` to `v_int64`.
    @inlinable func setInt64(vInt64: gint64) {
        g_value_set_int64(value_ptr, vInt64)
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.  The string is
    /// assumed to be static and interned (canonical, for example from
    /// `g_intern_string()`), and is thus not duplicated when setting the `GValue`.
    @inlinable func setInternedString(vString: UnsafePointer<gchar>? = nil) {
        g_value_set_interned_string(value_ptr, vString)
    
    }

    /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long`.
    @inlinable func setLong(vLong: Int) {
        g_value_set_long(value_ptr, glong(vLong))
    
    }

    /// Set the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`.
    /// 
    /// `g_value_set_object()` increases the reference count of `v_object`
    /// (the `GValue` holds a reference to `v_object`).  If you do not wish
    /// to increase the reference count of the object (i.e. you wish to
    /// pass your current reference to the `GValue` because you no longer
    /// need it), use `g_value_take_object()` instead.
    /// 
    /// It is important that your `GValue` holds a reference to `v_object` (either its
    /// own, or one it has taken) to ensure that the object won't be destroyed while
    /// the `GValue` still exists).
    @inlinable func setObject(vObject: ObjectRef? = nil) {
        g_value_set_object(value_ptr, vObject?.object_ptr)
    
    }
    /// Set the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`.
    /// 
    /// `g_value_set_object()` increases the reference count of `v_object`
    /// (the `GValue` holds a reference to `v_object`).  If you do not wish
    /// to increase the reference count of the object (i.e. you wish to
    /// pass your current reference to the `GValue` because you no longer
    /// need it), use `g_value_take_object()` instead.
    /// 
    /// It is important that your `GValue` holds a reference to `v_object` (either its
    /// own, or one it has taken) to ensure that the object won't be destroyed while
    /// the `GValue` still exists).
    @inlinable func setObject<ObjectT: ObjectProtocol>(vObject: ObjectT?) {
        g_value_set_object(value_ptr, vObject?.object_ptr)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_object_take_ownership is deprecated:**
    /// Use g_value_take_object() instead.
    @available(*, deprecated) @inlinable func setObjectTakeOwnership(vObject: gpointer! = nil) {
        g_value_set_object_take_ownership(value_ptr, vObject)
    
    }

    /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
    @inlinable func set(param: ParamSpecRef? = nil) {
        g_value_set_param(value_ptr, param?.param_spec_ptr)
    
    }
    /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
    @inlinable func set<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT?) {
        g_value_set_param(value_ptr, param?.param_spec_ptr)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_param_take_ownership is deprecated:**
    /// Use g_value_take_param() instead.
    @available(*, deprecated) @inlinable func setParamTakeOwnership(param: ParamSpecRef? = nil) {
        g_value_set_param_take_ownership(value_ptr, param?.param_spec_ptr)
    
    }
    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_param_take_ownership is deprecated:**
    /// Use g_value_take_param() instead.
    @available(*, deprecated) @inlinable func setParamTakeOwnership<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT?) {
        g_value_set_param_take_ownership(value_ptr, param?.param_spec_ptr)
    
    }

    /// Set the contents of a pointer `GValue` to `v_pointer`.
    @inlinable func setPointer(vPointer: gpointer! = nil) {
        g_value_set_pointer(value_ptr, vPointer)
    
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
    @inlinable func setSchar(vChar: gint8) {
        g_value_set_schar(value_ptr, vChar)
    
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    /// The boxed value is assumed to be static, and is thus not duplicated
    /// when setting the `GValue`.
    @inlinable func setStaticBoxed(vBoxed: gconstpointer! = nil) {
        g_value_set_static_boxed(value_ptr, vBoxed)
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    /// The string is assumed to be static, and is thus not duplicated
    /// when setting the `GValue`.
    /// 
    /// If the the string is a canonical string, using `g_value_set_interned_string()`
    /// is more appropriate.
    @inlinable func setStaticString(vString: UnsafePointer<gchar>? = nil) {
        g_value_set_static_string(value_ptr, vString)
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    @inlinable func setString(vString: UnsafePointer<gchar>? = nil) {
        g_value_set_string(value_ptr, vString)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_string_take_ownership is deprecated:**
    /// Use g_value_take_string() instead.
    @available(*, deprecated) @inlinable func setStringTakeOwnership(vString: UnsafeMutablePointer<gchar>? = nil) {
        g_value_set_string_take_ownership(value_ptr, vString)
    
    }

    /// Set the contents of a `G_TYPE_UCHAR` `GValue` to `v_uchar`.
    @inlinable func setUchar(vUchar: guchar) {
        g_value_set_uchar(value_ptr, vUchar)
    
    }

    /// Set the contents of a `G_TYPE_UINT` `GValue` to `v_uint`.
    @inlinable func setUint(vUint: guint) {
        g_value_set_uint(value_ptr, guint(vUint))
    
    }

    /// Set the contents of a `G_TYPE_UINT64` `GValue` to `v_uint64`.
    @inlinable func setUint64(vUint64: guint64) {
        g_value_set_uint64(value_ptr, vUint64)
    
    }

    /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong`.
    @inlinable func setUlong(vUlong: gulong) {
        g_value_set_ulong(value_ptr, gulong(vUlong))
    
    }

    /// Set the contents of a variant `GValue` to `variant`.
    /// If the variant is floating, it is consumed.
    @inlinable func set(variant: GLib.VariantRef? = nil) {
        g_value_set_variant(value_ptr, variant?.variant_ptr)
    
    }
    /// Set the contents of a variant `GValue` to `variant`.
    /// If the variant is floating, it is consumed.
    @inlinable func set<VariantT: GLib.VariantProtocol>(variant: VariantT?) {
        g_value_set_variant(value_ptr, variant?.variant_ptr)
    
    }

    /// Sets the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`
    /// and takes over the ownership of the caller’s reference to `v_boxed`;
    /// the caller doesn’t have to unref it any more.
    @inlinable func takeBoxed(vBoxed: gconstpointer! = nil) {
        g_value_take_boxed(value_ptr, vBoxed)
    
    }

    /// Sets the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`
    /// and takes over the ownership of the caller’s reference to `v_object`;
    /// the caller doesn’t have to unref it any more (i.e. the reference
    /// count of the object is not increased).
    /// 
    /// If you want the `GValue` to hold its own reference to `v_object`, use
    /// `g_value_set_object()` instead.
    @inlinable func takeObject(vObject: gpointer! = nil) {
        g_value_take_object(value_ptr, vObject)
    
    }

    /// Sets the contents of a `G_TYPE_PARAM` `GValue` to `param` and takes
    /// over the ownership of the caller’s reference to `param`; the caller
    /// doesn’t have to unref it any more.
    @inlinable func take(param: ParamSpecRef? = nil) {
        g_value_take_param(value_ptr, param?.param_spec_ptr)
    
    }
    /// Sets the contents of a `G_TYPE_PARAM` `GValue` to `param` and takes
    /// over the ownership of the caller’s reference to `param`; the caller
    /// doesn’t have to unref it any more.
    @inlinable func take<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT?) {
        g_value_take_param(value_ptr, param?.param_spec_ptr)
    
    }

    /// Sets the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    @inlinable func takeString(vString: UnsafeMutablePointer<gchar>? = nil) {
        g_value_take_string(value_ptr, vString)
    
    }

    /// Set the contents of a variant `GValue` to `variant`, and takes over
    /// the ownership of the caller's reference to `variant`;
    /// the caller doesn't have to unref it any more (i.e. the reference
    /// count of the variant is not increased).
    /// 
    /// If `variant` was floating then its floating reference is converted to
    /// a hard reference.
    /// 
    /// If you want the `GValue` to hold its own reference to `variant`, use
    /// `g_value_set_variant()` instead.
    /// 
    /// This is an internal function introduced mainly for C marshallers.
    @inlinable func take(variant: GLib.VariantRef? = nil) {
        g_value_take_variant(value_ptr, variant?.variant_ptr)
    
    }
    /// Set the contents of a variant `GValue` to `variant`, and takes over
    /// the ownership of the caller's reference to `variant`;
    /// the caller doesn't have to unref it any more (i.e. the reference
    /// count of the variant is not increased).
    /// 
    /// If `variant` was floating then its floating reference is converted to
    /// a hard reference.
    /// 
    /// If you want the `GValue` to hold its own reference to `variant`, use
    /// `g_value_set_variant()` instead.
    /// 
    /// This is an internal function introduced mainly for C marshallers.
    @inlinable func take<VariantT: GLib.VariantProtocol>(variant: VariantT?) {
        g_value_take_variant(value_ptr, variant?.variant_ptr)
    
    }

    /// Tries to cast the contents of `src_value` into a type appropriate
    /// to store in `dest_value`, e.g. to transform a `G_TYPE_INT` value
    /// into a `G_TYPE_FLOAT` value. Performing transformations between
    /// value types might incur precision lossage. Especially
    /// transformations into strings might reveal seemingly arbitrary
    /// results and shouldn't be relied upon for production code (such
    /// as rcfile value or object property serialization).
    @inlinable func transform<ValueT: ValueProtocol>(destValue: ValueT) -> Bool {
        let rv = ((g_value_transform(value_ptr, destValue.value_ptr)) != 0)
        return rv
    }

    /// Clears the current value in `value` (if any) and "unsets" the type,
    /// this releases all resources associated with this GValue. An unset
    /// value is the same as an uninitialized (zero-filled) `GValue`
    /// structure.
    @inlinable func unset() {
        g_value_unset(value_ptr)
    
    }

    /// A `GClosureMarshal` function for use with signals with handlers that
    /// take two boxed pointers as arguments and return a boolean.  If you
    /// have such a signal, you will probably also need to use an
    /// accumulator, such as `g_signal_accumulator_true_handled()`.
    @inlinable func cclosureMarshalBOOLEAN_BOXEDBOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
    /// denotes a flags type.
    @inlinable func cclosureMarshalBOOLEAN_FLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_BOOLEAN__FLAGS(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalSTRING_OBJECTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_STRING__OBJECT_POINTER(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_BOOLEAN<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__BOOLEAN(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_BOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__BOXED(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_CHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__CHAR(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_DOUBLE<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__DOUBLE(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
    @inlinable func cclosureMarshalVOID_ENUM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__ENUM(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
    @inlinable func cclosureMarshalVOID_FLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__FLAGS(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_FLOAT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__FLOAT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_INT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__INT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_LONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__LONG(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_OBJECT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__OBJECT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_PARAM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__PARAM(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_POINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__POINTER(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_STRING<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__STRING(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_UCHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__UCHAR(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_UINT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__UINT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_UINTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__UINT_POINTER(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_ULONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__ULONG(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_VARIANT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__VARIANT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_VOID<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_VOID__VOID(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// A generic marshaller function implemented via
    /// [libffi](http://sourceware.org/libffi/).
    /// 
    /// Normally this function is not passed explicitly to `g_signal_new()`,
    /// but used automatically by GLib when specifying a `nil` marshaller.
    @inlinable func cclosureMarshalGeneric<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
        g_cclosure_marshal_generic(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
    
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also `g_value_type_transformable()`, `g_value_transform()` and
    /// `g_param_value_validate()`.
    @inlinable func paramValueConvert<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, destValue: ValueT, strictValidation: Bool) -> Bool {
        let rv = ((g_param_value_convert(pspec.param_spec_ptr, value_ptr, destValue.value_ptr, gboolean((strictValidation) ? 1 : 0))) != 0)
        return rv
    }

    /// Checks whether `value` contains the default value as specified in `pspec`.
    @inlinable func paramValueDefaults<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) -> Bool {
        let rv = ((g_param_value_defaults(pspec.param_spec_ptr, value_ptr)) != 0)
        return rv
    }

    /// Sets `value` to its default value as specified in `pspec`.
    @inlinable func paramValueSetDefault<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) {
        g_param_value_set_default(pspec.param_spec_ptr, value_ptr)
    
    }

    /// Ensures that the contents of `value` comply with the specifications
    /// set out by `pspec`. For example, a `GParamSpecInt` might require
    /// that integers stored in `value` may not be smaller than -42 and not be
    /// greater than +42. If `value` contains an integer outside of this range,
    /// it is modified accordingly, so the resulting value will fit into the
    /// range -42 .. +42.
    @inlinable func paramValueValidate<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) -> Bool {
        let rv = ((g_param_value_validate(pspec.param_spec_ptr, value_ptr)) != 0)
        return rv
    }

    /// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
    /// if `value1` is found to be less than, equal to or greater than `value2`,
    /// respectively.
    @inlinable func paramValuesCmp<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, value2: ValueT) -> Int {
        let rv = Int(g_param_values_cmp(pspec.param_spec_ptr, value_ptr, value2.value_ptr))
        return rv
    }

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
    @inlinable func signalAccumulatorFirstWins<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, handlerReturn: ValueT, dummy: gpointer! = nil) -> Bool {
        let rv = ((g_signal_accumulator_first_wins(ihint._ptr, value_ptr, handlerReturn.value_ptr, dummy)) != 0)
        return rv
    }

    /// A predefined `GSignalAccumulator` for signals that return a
    /// boolean values. The behavior that this accumulator gives is
    /// that a return of `true` stops the signal emission: no further
    /// callbacks will be invoked, while a return of `false` allows
    /// the emission to continue. The idea here is that a `true` return
    /// indicates that the callback handled the signal, and no further
    /// handling is needed.
    @inlinable func signalAccumulatorTrueHandled<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, handlerReturn: ValueT, dummy: gpointer! = nil) -> Bool {
        let rv = ((g_signal_accumulator_true_handled(ihint._ptr, value_ptr, handlerReturn.value_ptr, dummy)) != 0)
        return rv
    }

    /// Calls the original class closure of a signal. This function should only
    /// be called from an overridden class closure; see
    /// `g_signal_override_class_closure()` and
    /// `g_signal_override_class_handler()`.
    @inlinable func signalChainFromOverridden(instanceAndParams: UnsafePointer<GValue>!) {
        g_signal_chain_from_overridden(instanceAndParams, value_ptr)
    
    }

    /// Emits a signal.
    /// 
    /// Note that `g_signal_emitv()` doesn't change `return_value` if no handlers are
    /// connected, in contrast to `g_signal_emit()` and `g_signal_emit_valist()`.
    @inlinable func signalEmitv(instanceAndParams: UnsafePointer<GValue>!, signalID: Int, detail: GQuark) {
        g_signal_emitv(instanceAndParams, guint(signalID), detail, value_ptr)
    
    }

    /// Return a newly allocated string, which describes the contents of a
    /// `GValue`.  The main purpose of this function is to describe `GValue`
    /// contents for debugging output, the way in which the contents are
    /// described may change between different GLib versions.
    @inlinable func strdupValueContents() -> String! {
        let rv = g_strdup_value_contents(value_ptr).map({ String(cString: $0) })
        return rv
    }

    @inlinable func typeCheckValue() -> Bool {
        let rv = ((g_type_check_value(value_ptr)) != 0)
        return rv
    }

    @inlinable func typeCheckValueHolds(type: GType) -> Bool {
        let rv = ((g_type_check_value_holds(value_ptr, type)) != 0)
        return rv
    }
    /// Get the contents of a `G_TYPE_BOOLEAN` `GValue`.
    @inlinable var boolean: Bool {
        /// Get the contents of a `G_TYPE_BOOLEAN` `GValue`.
        get {
            let rv = ((g_value_get_boolean(value_ptr)) != 0)
            return rv
        }
        /// Set the contents of a `G_TYPE_BOOLEAN` `GValue` to `v_boolean`.
        nonmutating set {
            g_value_set_boolean(value_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.
    @inlinable var boxed: gpointer! {
        /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.
        get {
            let rv = g_value_get_boxed(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
        nonmutating set {
            g_value_set_boxed(value_ptr, newValue)
        }
    }

    /// Do not use this function; it is broken on platforms where the `char`
    /// type is unsigned, such as ARM and PowerPC.  See `g_value_get_schar()`.
    /// 
    /// Get the contents of a `G_TYPE_CHAR` `GValue`.
    ///
    /// **get_char is deprecated:**
    /// This function's return type is broken, see g_value_get_schar()
    @inlinable var char: gchar {
        /// Do not use this function; it is broken on platforms where the `char`
        /// type is unsigned, such as ARM and PowerPC.  See `g_value_get_schar()`.
        /// 
        /// Get the contents of a `G_TYPE_CHAR` `GValue`.
        ///
        /// **get_char is deprecated:**
        /// This function's return type is broken, see g_value_get_schar()
        @available(*, deprecated) get {
            let rv = g_value_get_char(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
        ///
        /// **set_char is deprecated:**
        /// This function's input type is broken, see g_value_set_schar()
        @available(*, deprecated) nonmutating set {
            g_value_set_char(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_DOUBLE` `GValue`.
    @inlinable var double: Double {
        /// Get the contents of a `G_TYPE_DOUBLE` `GValue`.
        get {
            let rv = Double(g_value_get_double(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_DOUBLE` `GValue` to `v_double`.
        nonmutating set {
            g_value_set_double(value_ptr, gdouble(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_ENUM` `GValue`.
    @inlinable var `enum`: Int {
        /// Get the contents of a `G_TYPE_ENUM` `GValue`.
        get {
            let rv = Int(g_value_get_enum(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_ENUM` `GValue` to `v_enum`.
        nonmutating set {
            g_value_set_enum(value_ptr, gint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_FLAGS` `GValue`.
    @inlinable var flags: Int {
        /// Get the contents of a `G_TYPE_FLAGS` `GValue`.
        get {
            let rv = Int(g_value_get_flags(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags`.
        nonmutating set {
            g_value_set_flags(value_ptr, guint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_FLOAT` `GValue`.
    @inlinable var float: Float {
        /// Get the contents of a `G_TYPE_FLOAT` `GValue`.
        get {
            let rv = g_value_get_float(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_FLOAT` `GValue` to `v_float`.
        nonmutating set {
            g_value_set_float(value_ptr, gfloat(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_GTYPE` `GValue`.
    @inlinable var gtype: GType {
        /// Get the contents of a `G_TYPE_GTYPE` `GValue`.
        get {
            let rv = g_value_get_gtype(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_GTYPE` `GValue` to `v_gtype`.
        nonmutating set {
            g_value_set_gtype(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_INT` `GValue`.
    @inlinable var int: Int {
        /// Get the contents of a `G_TYPE_INT` `GValue`.
        get {
            let rv = Int(g_value_get_int(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_INT` `GValue` to `v_int`.
        nonmutating set {
            g_value_set_int(value_ptr, gint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_INT64` `GValue`.
    @inlinable var int64: gint64 {
        /// Get the contents of a `G_TYPE_INT64` `GValue`.
        get {
            let rv = g_value_get_int64(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_INT64` `GValue` to `v_int64`.
        nonmutating set {
            g_value_set_int64(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_LONG` `GValue`.
    @inlinable var long: Int {
        /// Get the contents of a `G_TYPE_LONG` `GValue`.
        get {
            let rv = Int(g_value_get_long(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long`.
        nonmutating set {
            g_value_set_long(value_ptr, glong(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`.
    @inlinable var object: ObjectRef! {
        /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`.
        get {
            let rv = ObjectRef(gpointer: g_value_get_object(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`.
        /// 
        /// `g_value_set_object()` increases the reference count of `v_object`
        /// (the `GValue` holds a reference to `v_object`).  If you do not wish
        /// to increase the reference count of the object (i.e. you wish to
        /// pass your current reference to the `GValue` because you no longer
        /// need it), use `g_value_take_object()` instead.
        /// 
        /// It is important that your `GValue` holds a reference to `v_object` (either its
        /// own, or one it has taken) to ensure that the object won't be destroyed while
        /// the `GValue` still exists).
        nonmutating set {
            g_value_set_object(value_ptr, gpointer(newValue?.object_ptr))
        }
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue`.
    @inlinable var param: ParamSpecRef! {
        /// Get the contents of a `G_TYPE_PARAM` `GValue`.
        get {
            let rv = ParamSpecRef(gconstpointer: gconstpointer(g_value_get_param(value_ptr)))
            return rv
        }
        /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
        nonmutating set {
            g_value_set_param(value_ptr, UnsafeMutablePointer<GParamSpec>(newValue?.param_spec_ptr))
        }
    }

    /// Get the contents of a pointer `GValue`.
    @inlinable var pointer: gpointer! {
        /// Get the contents of a pointer `GValue`.
        get {
            let rv = g_value_get_pointer(value_ptr)
            return rv
        }
        /// Set the contents of a pointer `GValue` to `v_pointer`.
        nonmutating set {
            g_value_set_pointer(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_CHAR` `GValue`.
    @inlinable var schar: gint8 {
        /// Get the contents of a `G_TYPE_CHAR` `GValue`.
        get {
            let rv = g_value_get_schar(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
        nonmutating set {
            g_value_set_schar(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_STRING` `GValue`.
    @inlinable var string: String! {
        /// Get the contents of a `G_TYPE_STRING` `GValue`.
        get {
            let rv = g_value_get_string(value_ptr).map({ String(cString: $0) })
            return rv
        }
        /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
        nonmutating set {
            g_value_set_string(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_UCHAR` `GValue`.
    @inlinable var uchar: guchar {
        /// Get the contents of a `G_TYPE_UCHAR` `GValue`.
        get {
            let rv = g_value_get_uchar(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_UCHAR` `GValue` to `v_uchar`.
        nonmutating set {
            g_value_set_uchar(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_UINT` `GValue`.
    @inlinable var uint: Int {
        /// Get the contents of a `G_TYPE_UINT` `GValue`.
        get {
            let rv = Int(g_value_get_uint(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_UINT` `GValue` to `v_uint`.
        nonmutating set {
            g_value_set_uint(value_ptr, guint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_UINT64` `GValue`.
    @inlinable var uint64: guint64 {
        /// Get the contents of a `G_TYPE_UINT64` `GValue`.
        get {
            let rv = g_value_get_uint64(value_ptr)
            return rv
        }
        /// Set the contents of a `G_TYPE_UINT64` `GValue` to `v_uint64`.
        nonmutating set {
            g_value_set_uint64(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_ULONG` `GValue`.
    @inlinable var ulong: Int {
        /// Get the contents of a `G_TYPE_ULONG` `GValue`.
        get {
            let rv = Int(g_value_get_ulong(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong`.
        nonmutating set {
            g_value_set_ulong(value_ptr, gulong(newValue))
        }
    }

    /// Get the contents of a variant `GValue`.
    @inlinable var variant: GLib.VariantRef! {
        /// Get the contents of a variant `GValue`.
        get {
            let rv = GLib.VariantRef(g_value_get_variant(value_ptr))
            return rv
        }
        /// Set the contents of a variant `GValue` to `variant`.
        /// If the variant is floating, it is consumed.
        nonmutating set {
            g_value_set_variant(value_ptr, UnsafeMutablePointer<GVariant>(newValue?.variant_ptr))
        }
    }

    // var gType is unavailable because g_type is private

    @inlinable var data: (_Value__data__union, _Value__data__union) {
        get {
            let rv = value_ptr.withMemoryRebound(to: GType.self, capacity: 2) { UnsafeRawPointer($0+1).assumingMemoryBound(to: (_Value__data__union, _Value__data__union).self).pointee }
            return rv
        }
         set {
            value_ptr.withMemoryRebound(to: GType.self, capacity: 2) { UnsafeMutableRawPointer($0+1).assumingMemoryBound(to: (_Value__data__union, _Value__data__union).self).pointee = newValue }
        }
    }

}



