import CGLib
import GLib
import GObjectCHelpers

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
    @inlinable init(raw: UnsafeRawPointer) {
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
    @inlinable func enumCompleteTypeInfo<EnumValueT: EnumValueProtocol>(gEnumType g_enum_type: GType, constValues const_values: EnumValueT) {
        g_enum_complete_type_info(g_enum_type, _ptr, const_values._ptr)
    
    }

    /// This function is meant to be called from the `complete_type_info()`
    /// function of a `GTypePlugin` implementation, see the example for
    /// `g_enum_complete_type_info()` above.
    @inlinable func flagsCompleteTypeInfo<FlagsValueT: FlagsValueProtocol>(gFlagsType g_flags_type: GType, constValues const_values: FlagsValueT) {
        g_flags_complete_type_info(g_flags_type, _ptr, const_values._ptr)
    
    }

    /// Registers `type_id` as the predefined identifier and `type_name` as the
    /// name of a fundamental type. If `type_id` is already registered, or a
    /// type named `type_name` is already registered, the behaviour is undefined.
    /// The type system uses the information contained in the `GTypeInfo` structure
    /// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
    /// `finfo` to manage the type and its instances. The value of `flags` determines
    /// additional characteristics of the fundamental type.
    @inlinable func typeRegisterFundamental<TypeFundamentalInfoT: TypeFundamentalInfoProtocol>(typeID type_id: GType, typeName type_name: UnsafePointer<gchar>!, finfo: TypeFundamentalInfoT, flags: TypeFlags) -> GType {
        let rv = g_type_register_fundamental(type_id, type_name, _ptr, finfo._ptr, flags.value)
        return rv
    }

    /// Registers `type_name` as the name of a new static type derived from
    /// `parent_type`. The type system uses the information contained in the
    /// `GTypeInfo` structure pointed to by `info` to manage the type and its
    /// instances (if not abstract). The value of `flags` determines the nature
    /// (e.g. abstract or not) of the type.
    @inlinable func typeRegisterStatic(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>!, flags: TypeFlags) -> GType {
        let rv = g_type_register_static(parent_type, type_name, _ptr, flags.value)
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



