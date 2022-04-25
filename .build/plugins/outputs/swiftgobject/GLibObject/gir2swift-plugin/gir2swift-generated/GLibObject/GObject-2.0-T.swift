import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypePlugin Interface

/// An interface that handles the lifecycle of dynamically loaded types.
/// 
/// The GObject type system supports dynamic loading of types.
/// It goes as follows:
/// 
/// 1. The type is initially introduced (usually upon loading the module
///    the first time, or by your main application that knows what modules
///    introduces what types), like this:
///    
/// (C Language Example):
/// ```C
///    new_type_id = g_type_register_dynamic (parent_type_id,
///                                           "TypeName",
///                                           new_type_plugin,
///                                           type_flags);
///    
/// ```
///    where `new_type_plugin` is an implementation of the
///    `GTypePlugin` interface.
/// 
/// 2. The type's implementation is referenced, e.g. through
///    `g_type_class_ref()` or through `g_type_create_instance()` (this is
///    being called by `g_object_new()`) or through one of the above done on
///    a type derived from `new_type_id`.
/// 
/// 3. This causes the type system to load the type's implementation by
///    calling `g_type_plugin_use()` and `g_type_plugin_complete_type_info()`
///    on `new_type_plugin`.
/// 
/// 4. At some point the type's implementation isn't required anymore,
///    e.g. after `g_type_class_unref()` or `g_type_free_instance()` (called
///    when the reference count of an instance drops to zero).
/// 
/// 5. This causes the type system to throw away the information retrieved
///    from `g_type_plugin_complete_type_info()` and then it calls
///    `g_type_plugin_unuse()` on `new_type_plugin`.
/// 
/// 6. Things may repeat from the second step.
/// 
/// So basically, you need to implement a `GTypePlugin` type that
/// carries a use_count, once use_count goes from zero to one, you need
/// to load the implementation to successfully handle the upcoming
/// `g_type_plugin_complete_type_info()` call. Later, maybe after
/// succeeding use/unuse calls, once use_count drops to zero, you can
/// unload the implementation again. The type system makes sure to call
/// `g_type_plugin_use()` and `g_type_plugin_complete_type_info()` again
/// when the type is needed again.
/// 
/// `GTypeModule` is an implementation of `GTypePlugin` that already
/// implements most of this except for the actual module loading and
/// unloading. It even handles multiple registered types per module.
///
/// The `TypePluginProtocol` protocol exposes the methods and properties of an underlying `GTypePlugin` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypePlugin`.
/// Alternatively, use `TypePluginRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypePluginProtocol {
        /// Untyped pointer to the underlying `GTypePlugin` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypePlugin` instance.
    var type_plugin_ptr: UnsafeMutablePointer<GTypePlugin>! { get }

    /// Required Initialiser for types conforming to `TypePluginProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An interface that handles the lifecycle of dynamically loaded types.
/// 
/// The GObject type system supports dynamic loading of types.
/// It goes as follows:
/// 
/// 1. The type is initially introduced (usually upon loading the module
///    the first time, or by your main application that knows what modules
///    introduces what types), like this:
///    
/// (C Language Example):
/// ```C
///    new_type_id = g_type_register_dynamic (parent_type_id,
///                                           "TypeName",
///                                           new_type_plugin,
///                                           type_flags);
///    
/// ```
///    where `new_type_plugin` is an implementation of the
///    `GTypePlugin` interface.
/// 
/// 2. The type's implementation is referenced, e.g. through
///    `g_type_class_ref()` or through `g_type_create_instance()` (this is
///    being called by `g_object_new()`) or through one of the above done on
///    a type derived from `new_type_id`.
/// 
/// 3. This causes the type system to load the type's implementation by
///    calling `g_type_plugin_use()` and `g_type_plugin_complete_type_info()`
///    on `new_type_plugin`.
/// 
/// 4. At some point the type's implementation isn't required anymore,
///    e.g. after `g_type_class_unref()` or `g_type_free_instance()` (called
///    when the reference count of an instance drops to zero).
/// 
/// 5. This causes the type system to throw away the information retrieved
///    from `g_type_plugin_complete_type_info()` and then it calls
///    `g_type_plugin_unuse()` on `new_type_plugin`.
/// 
/// 6. Things may repeat from the second step.
/// 
/// So basically, you need to implement a `GTypePlugin` type that
/// carries a use_count, once use_count goes from zero to one, you need
/// to load the implementation to successfully handle the upcoming
/// `g_type_plugin_complete_type_info()` call. Later, maybe after
/// succeeding use/unuse calls, once use_count drops to zero, you can
/// unload the implementation again. The type system makes sure to call
/// `g_type_plugin_use()` and `g_type_plugin_complete_type_info()` again
/// when the type is needed again.
/// 
/// `GTypeModule` is an implementation of `GTypePlugin` that already
/// implements most of this except for the actual module loading and
/// unloading. It even handles multiple registered types per module.
///
/// The `TypePluginRef` type acts as a lightweight Swift reference to an underlying `GTypePlugin` instance.
/// It exposes methods that can operate on this data type through `TypePluginProtocol` conformance.
/// Use `TypePluginRef` only as an `unowned` reference to an existing `GTypePlugin` instance.
///
public struct TypePluginRef: TypePluginProtocol {
        /// Untyped pointer to the underlying `GTypePlugin` instance.
    /// For type-safe access, use the generated, typed pointer `type_plugin_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypePluginRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypePlugin>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypePlugin>?) {
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

    /// Reference intialiser for a related type that implements `TypePluginProtocol`
    @inlinable init<T: TypePluginProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// An interface that handles the lifecycle of dynamically loaded types.
/// 
/// The GObject type system supports dynamic loading of types.
/// It goes as follows:
/// 
/// 1. The type is initially introduced (usually upon loading the module
///    the first time, or by your main application that knows what modules
///    introduces what types), like this:
///    
/// (C Language Example):
/// ```C
///    new_type_id = g_type_register_dynamic (parent_type_id,
///                                           "TypeName",
///                                           new_type_plugin,
///                                           type_flags);
///    
/// ```
///    where `new_type_plugin` is an implementation of the
///    `GTypePlugin` interface.
/// 
/// 2. The type's implementation is referenced, e.g. through
///    `g_type_class_ref()` or through `g_type_create_instance()` (this is
///    being called by `g_object_new()`) or through one of the above done on
///    a type derived from `new_type_id`.
/// 
/// 3. This causes the type system to load the type's implementation by
///    calling `g_type_plugin_use()` and `g_type_plugin_complete_type_info()`
///    on `new_type_plugin`.
/// 
/// 4. At some point the type's implementation isn't required anymore,
///    e.g. after `g_type_class_unref()` or `g_type_free_instance()` (called
///    when the reference count of an instance drops to zero).
/// 
/// 5. This causes the type system to throw away the information retrieved
///    from `g_type_plugin_complete_type_info()` and then it calls
///    `g_type_plugin_unuse()` on `new_type_plugin`.
/// 
/// 6. Things may repeat from the second step.
/// 
/// So basically, you need to implement a `GTypePlugin` type that
/// carries a use_count, once use_count goes from zero to one, you need
/// to load the implementation to successfully handle the upcoming
/// `g_type_plugin_complete_type_info()` call. Later, maybe after
/// succeeding use/unuse calls, once use_count drops to zero, you can
/// unload the implementation again. The type system makes sure to call
/// `g_type_plugin_use()` and `g_type_plugin_complete_type_info()` again
/// when the type is needed again.
/// 
/// `GTypeModule` is an implementation of `GTypePlugin` that already
/// implements most of this except for the actual module loading and
/// unloading. It even handles multiple registered types per module.
///
/// The `TypePlugin` type acts as an owner of an underlying `GTypePlugin` instance.
/// It provides the methods that can operate on this data type through `TypePluginProtocol` conformance.
/// Use `TypePlugin` as a strong reference or owner of a `GTypePlugin` instance.
///
open class TypePlugin: TypePluginProtocol {
        /// Untyped pointer to the underlying `GTypePlugin` instance.
    /// For type-safe access, use the generated, typed pointer `type_plugin_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypePlugin>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypePlugin>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypePlugin` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypePlugin` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypePlugin>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypePlugin, cannot ref(type_plugin_ptr)
    }

    /// Reference intialiser for a related type that implements `TypePluginProtocol`
    /// `GTypePlugin` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypePluginProtocol`
    @inlinable public init<T: TypePluginProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypePlugin, cannot ref(type_plugin_ptr)
    }

    /// Do-nothing destructor for `GTypePlugin`.
    deinit {
        // no reference counting for GTypePlugin, cannot unref(type_plugin_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypePlugin, cannot ref(type_plugin_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypePlugin, cannot ref(type_plugin_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypePlugin, cannot ref(type_plugin_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypePluginProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypePlugin, cannot ref(type_plugin_ptr)
    }



}

// MARK: no TypePlugin properties

// MARK: no TypePlugin signals

// MARK: TypePlugin has no signals
// MARK: TypePlugin Interface: TypePluginProtocol extension (methods and fields)
public extension TypePluginProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypePlugin` instance.
    @inlinable var type_plugin_ptr: UnsafeMutablePointer<GTypePlugin>! { return ptr?.assumingMemoryBound(to: GTypePlugin.self) }

    /// Calls the `complete_interface_info` function from the
    /// `GTypePluginClass` of `plugin`. There should be no need to use this
    /// function outside of the GObject type system itself.
    @inlinable func completeInterfaceInfo<InterfaceInfoT: InterfaceInfoProtocol>(instanceType: GType, interfaceType: GType, info: InterfaceInfoT) {
        
        g_type_plugin_complete_interface_info(type_plugin_ptr, instanceType, interfaceType, info._ptr)
        
    }

    /// Calls the `complete_type_info` function from the `GTypePluginClass` of `plugin`.
    /// There should be no need to use this function outside of the GObject
    /// type system itself.
    @inlinable func completeTypeInfo<TypeInfoT: TypeInfoProtocol, TypeValueTableT: TypeValueTableProtocol>(gType: GType, info: TypeInfoT, valueTable: TypeValueTableT) {
        
        g_type_plugin_complete_type_info(type_plugin_ptr, gType, info._ptr, valueTable._ptr)
        
    }

    /// Calls the `unuse_plugin` function from the `GTypePluginClass` of
    /// `plugin`.  There should be no need to use this function outside of
    /// the GObject type system itself.
    @inlinable func unuse() {
        
        g_type_plugin_unuse(type_plugin_ptr)
        
    }

    /// Calls the `use_plugin` function from the `GTypePluginClass` of
    /// `plugin`.  There should be no need to use this function outside of
    /// the GObject type system itself.
    @inlinable func use() {
        
        g_type_plugin_use(type_plugin_ptr)
        
    }

    /// Adds `interface_type` to the dynamic `instance_type`. The information
    /// contained in the `GTypePlugin` structure pointed to by `plugin`
    /// is used to manage the relationship.
    @inlinable func typeAddInterfaceDynamic(instanceType: GType, interfaceType: GType) {
        
        g_type_add_interface_dynamic(instanceType, interfaceType, type_plugin_ptr)
        
    }

    /// Registers `type_name` as the name of a new dynamic type derived from
    /// `parent_type`.  The type system uses the information contained in the
    /// `GTypePlugin` structure pointed to by `plugin` to manage the type and its
    /// instances (if not abstract).  The value of `flags` determines the nature
    /// (e.g. abstract or not) of the type.
    @inlinable func typeRegisterDynamic(parentType: GType, typeName: UnsafePointer<gchar>!, flags: TypeFlags) -> GType {
        let result = g_type_register_dynamic(parentType, typeName, type_plugin_ptr, flags.value)
        let rv = result
        return rv
    }


}



// MARK: - TypeClass Record

/// An opaque structure used as the base of all classes.
///
/// The `TypeClassProtocol` protocol exposes the methods and properties of an underlying `GTypeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeClass`.
/// Alternatively, use `TypeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeClassProtocol {
        /// Untyped pointer to the underlying `GTypeClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeClass>! { get }

    /// Required Initialiser for types conforming to `TypeClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure used as the base of all classes.
///
/// The `TypeClassRef` type acts as a lightweight Swift reference to an underlying `GTypeClass` instance.
/// It exposes methods that can operate on this data type through `TypeClassProtocol` conformance.
/// Use `TypeClassRef` only as an `unowned` reference to an existing `GTypeClass` instance.
///
public struct TypeClassRef: TypeClassProtocol {
        /// Untyped pointer to the underlying `GTypeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeClass>?) {
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

    /// Reference intialiser for a related type that implements `TypeClassProtocol`
    @inlinable init<T: TypeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function is essentially the same as `g_type_class_ref()`,
    /// except that the classes reference count isn't incremented.
    /// As a consequence, this function may return `nil` if the class
    /// of the type passed in does not currently exist (hasn't been
    /// referenced before).
    @inlinable static func peek(type: GType) -> GLibObject.TypeClassRef! {
            let result = g_type_class_peek(type)
        guard let rv = TypeClassRef(gpointer: result) else { return nil }
        return rv
    }

    /// A more efficient version of `g_type_class_peek()` which works only for
    /// static types.
    @inlinable static func peekStatic(type: GType) -> GLibObject.TypeClassRef! {
            let result = g_type_class_peek_static(type)
        guard let rv = TypeClassRef(gpointer: result) else { return nil }
        return rv
    }

    /// Increments the reference count of the class structure belonging to
    /// `type`. This function will demand-create the class if it doesn't
    /// exist already.
    @inlinable static func ref(type: GType) -> GLibObject.TypeClassRef! {
            let result = g_type_class_ref(type)
        guard let rv = TypeClassRef(gpointer: result) else { return nil }
        return rv
    }
}

/// An opaque structure used as the base of all classes.
///
/// The `TypeClass` type acts as an owner of an underlying `GTypeClass` instance.
/// It provides the methods that can operate on this data type through `TypeClassProtocol` conformance.
/// Use `TypeClass` as a strong reference or owner of a `GTypeClass` instance.
///
open class TypeClass: TypeClassProtocol {
        /// Untyped pointer to the underlying `GTypeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeClass>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeClass>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeClass` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeClassProtocol`
    /// `GTypeClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeClassProtocol`
    @inlinable public init<T: TypeClassProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Releases the underlying `GTypeClass` instance using `g_type_class_unref`.
    deinit {
        g_type_class_unref(ptr.assumingMemoryBound(to: GTypeClass.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeClass, cannot ref(_ptr)
    }


    /// This function is essentially the same as `g_type_class_ref()`,
    /// except that the classes reference count isn't incremented.
    /// As a consequence, this function may return `nil` if the class
    /// of the type passed in does not currently exist (hasn't been
    /// referenced before).
    @inlinable public static func peek(type: GType) -> GLibObject.TypeClass! {
            let result = g_type_class_peek(type)
        guard let rv = TypeClass(gpointer: result) else { return nil }
        return rv
    }

    /// A more efficient version of `g_type_class_peek()` which works only for
    /// static types.
    @inlinable public static func peekStatic(type: GType) -> GLibObject.TypeClass! {
            let result = g_type_class_peek_static(type)
        guard let rv = TypeClass(gpointer: result) else { return nil }
        return rv
    }

    /// Increments the reference count of the class structure belonging to
    /// `type`. This function will demand-create the class if it doesn't
    /// exist already.
    @inlinable public static func ref(type: GType) -> GLibObject.TypeClass! {
            let result = g_type_class_ref(type)
        guard let rv = TypeClass(gpointer: result) else { return nil }
        return rv
    }

}

// MARK: no TypeClass properties

// MARK: no TypeClass signals

// MARK: TypeClass has no signals
// MARK: TypeClass Record: TypeClassProtocol extension (methods and fields)
public extension TypeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeClass>! { return ptr?.assumingMemoryBound(to: GTypeClass.self) }

    /// Registers a private structure for an instantiatable type.
    /// 
    /// When an object is allocated, the private structures for
    /// the type and all of its parent types are allocated
    /// sequentially in the same memory block as the public
    /// structures, and are zero-filled.
    /// 
    /// Note that the accumulated size of the private structures of
    /// a type and all its parent types cannot exceed 64 KiB.
    /// 
    /// This function should be called in the type's `class_init()` function.
    /// The private structure can be retrieved using the
    /// `G_TYPE_INSTANCE_GET_PRIVATE()` macro.
    /// 
    /// The following example shows attaching a private structure
    /// MyObjectPrivate to an object MyObject defined in the standard
    /// GObject fashion in the type's `class_init()` function.
    /// 
    /// Note the use of a structure member "priv" to avoid the overhead
    /// of repeatedly calling `MY_OBJECT_GET_PRIVATE()`.
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyObject        MyObject;
    /// typedef struct _MyObjectPrivate MyObjectPrivate;
    /// 
    /// struct _MyObject {
    ///  GObject parent;
    /// 
    ///  MyObjectPrivate *priv;
    /// };
    /// 
    /// struct _MyObjectPrivate {
    ///   int some_field;
    /// };
    /// 
    /// static void
    /// my_object_class_init (MyObjectClass *klass)
    /// {
    ///   g_type_class_add_private (klass, sizeof (MyObjectPrivate));
    /// }
    /// 
    /// static void
    /// my_object_init (MyObject *my_object)
    /// {
    ///   my_object->priv = G_TYPE_INSTANCE_GET_PRIVATE (my_object,
    ///                                                  MY_TYPE_OBJECT,
    ///                                                  MyObjectPrivate);
    ///   // my_object->priv->some_field will be automatically initialised to 0
    /// }
    /// 
    /// static int
    /// my_object_get_some_field (MyObject *my_object)
    /// {
    ///   MyObjectPrivate *priv;
    /// 
    ///   g_return_val_if_fail (MY_IS_OBJECT (my_object), 0);
    /// 
    ///   priv = my_object->priv;
    /// 
    ///   return priv->some_field;
    /// }
    /// ```
    /// 
    ///
    /// **add_private is deprecated:**
    /// Use the G_ADD_PRIVATE() macro with the `G_DEFINE_*`
    ///   family of macros to add instance private data to a type
    @available(*, deprecated) @inlinable func addPrivate(privateSize: Int) {
        
        g_type_class_add_private(_ptr, gsize(privateSize))
        
    }

    /// Gets the offset of the private data for instances of `g_class`.
    /// 
    /// This is how many bytes you should add to the instance pointer of a
    /// class in order to get the private data for the type represented by
    /// `g_class`.
    /// 
    /// You can only call this function after you have registered a private
    /// data area for `g_class` using `g_type_class_add_private()`.
    @inlinable func getInstancePrivateOffset() -> Int {
        let result = g_type_class_get_instance_private_offset(_ptr)
        let rv = Int(result)
        return rv
    }

    @inlinable func getPrivate(privateType: GType) -> gpointer? {
        let result = g_type_class_get_private(_ptr, privateType)
        let rv = result
        return rv
    }

    /// This is a convenience function often needed in class initializers.
    /// It returns the class structure of the immediate parent type of the
    /// class passed in.  Since derived classes hold a reference count on
    /// their parent classes as long as they are instantiated, the returned
    /// class will always exist.
    /// 
    /// This function is essentially equivalent to:
    /// g_type_class_peek (g_type_parent (G_TYPE_FROM_CLASS (g_class)))
    @inlinable func peekParent() -> GLibObject.TypeClassRef! {
        let result = g_type_class_peek_parent(_ptr)
        guard let rv = TypeClassRef(gpointer: result) else { return nil }
        return rv
    }

    /// Decrements the reference count of the class structure being passed in.
    /// Once the last reference count of a class has been released, classes
    /// may be finalized by the type system, so further dereferencing of a
    /// class pointer after `g_type_class_unref()` are invalid.
    @inlinable func unref() {
        
        g_type_class_unref(_ptr)
        
    }

    /// A variant of `g_type_class_unref()` for use in `GTypeClassCacheFunc`
    /// implementations. It unreferences a class without consulting the chain
    /// of `GTypeClassCacheFuncs`, avoiding the recursion which would occur
    /// otherwise.
    @inlinable func unrefUncached() {
        
        g_type_class_unref_uncached(_ptr)
        
    }

    @inlinable func typeCheckClassCast(isAType: GType) -> GLibObject.TypeClassRef! {
        let result = g_type_check_class_cast(_ptr, isAType)
        guard let rv = TypeClassRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    @inlinable func typeCheckClassIsA(isAType: GType) -> Bool {
        let result = g_type_check_class_is_a(_ptr, isAType)
        let rv = ((result) != 0)
        return rv
    }

    /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    @inlinable func typeInterfacePeek(ifaceType: GType) -> GLibObject.TypeInterfaceRef! {
        let result = g_type_interface_peek(_ptr, ifaceType)
        let rv = TypeInterfaceRef(gpointer: result)
        return rv
    }

    @inlinable func typeNameFromClass() -> String! {
        let result = g_type_name_from_class(_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }
    /// Gets the offset of the private data for instances of `g_class`.
    /// 
    /// This is how many bytes you should add to the instance pointer of a
    /// class in order to get the private data for the type represented by
    /// `g_class`.
    /// 
    /// You can only call this function after you have registered a private
    /// data area for `g_class` using `g_type_class_add_private()`.
    @inlinable var instancePrivateOffset: Int {
        /// Gets the offset of the private data for instances of `g_class`.
        /// 
        /// This is how many bytes you should add to the instance pointer of a
        /// class in order to get the private data for the type represented by
        /// `g_class`.
        /// 
        /// You can only call this function after you have registered a private
        /// data area for `g_class` using `g_type_class_add_private()`.
        get {
            let result = g_type_class_get_instance_private_offset(_ptr)
        let rv = Int(result)
            return rv
        }
    }

    // var gType is unavailable because g_type is private

}



// MARK: - TypeFundamentalInfo Record

/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
///
/// The `TypeFundamentalInfoProtocol` protocol exposes the methods and properties of an underlying `GTypeFundamentalInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeFundamentalInfo`.
/// Alternatively, use `TypeFundamentalInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeFundamentalInfoProtocol {
        /// Untyped pointer to the underlying `GTypeFundamentalInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeFundamentalInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeFundamentalInfo>! { get }

    /// Required Initialiser for types conforming to `TypeFundamentalInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
///
/// The `TypeFundamentalInfoRef` type acts as a lightweight Swift reference to an underlying `GTypeFundamentalInfo` instance.
/// It exposes methods that can operate on this data type through `TypeFundamentalInfoProtocol` conformance.
/// Use `TypeFundamentalInfoRef` only as an `unowned` reference to an existing `GTypeFundamentalInfo` instance.
///
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

/// A structure that provides information to the type system which is
/// used specifically for managing fundamental types.
///
/// The `TypeFundamentalInfo` type acts as an owner of an underlying `GTypeFundamentalInfo` instance.
/// It provides the methods that can operate on this data type through `TypeFundamentalInfoProtocol` conformance.
/// Use `TypeFundamentalInfo` as a strong reference or owner of a `GTypeFundamentalInfo` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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
        let result = g_type_register_fundamental(typeID, typeName, info._ptr, _ptr, flags.value)
        let rv = result
        return rv
    }

    /// `GTypeFundamentalFlags` describing the characteristics of the fundamental type
    @inlinable var typeFlags: GLibObject.TypeFundamentalFlags {
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

/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
///
/// The `TypeInfoProtocol` protocol exposes the methods and properties of an underlying `GTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInfo`.
/// Alternatively, use `TypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeInfoProtocol {
        /// Untyped pointer to the underlying `GTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeInfo>! { get }

    /// Required Initialiser for types conforming to `TypeInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
///
/// The `TypeInfoRef` type acts as a lightweight Swift reference to an underlying `GTypeInfo` instance.
/// It exposes methods that can operate on this data type through `TypeInfoProtocol` conformance.
/// Use `TypeInfoRef` only as an `unowned` reference to an existing `GTypeInfo` instance.
///
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

/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
///
/// The `TypeInfo` type acts as an owner of an underlying `GTypeInfo` instance.
/// It provides the methods that can operate on this data type through `TypeInfoProtocol` conformance.
/// Use `TypeInfo` as a strong reference or owner of a `GTypeInfo` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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
        let result = g_type_register_fundamental(typeID, typeName, _ptr, finfo._ptr, flags.value)
        let rv = result
        return rv
    }

    /// Registers `type_name` as the name of a new static type derived from
    /// `parent_type`. The type system uses the information contained in the
    /// `GTypeInfo` structure pointed to by `info` to manage the type and its
    /// instances (if not abstract). The value of `flags` determines the nature
    /// (e.g. abstract or not) of the type.
    @inlinable func typeRegisterStatic(parentType: GType, typeName: UnsafePointer<gchar>!, flags: TypeFlags) -> GType {
        let result = g_type_register_static(parentType, typeName, _ptr, flags.value)
        let rv = result
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
    @inlinable var classData: gconstpointer? {
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

/// An opaque structure used as the base of all type instances.
///
/// The `TypeInstanceProtocol` protocol exposes the methods and properties of an underlying `GTypeInstance` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInstance`.
/// Alternatively, use `TypeInstanceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeInstanceProtocol {
        /// Untyped pointer to the underlying `GTypeInstance` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInstance` instance.
    var _ptr: UnsafeMutablePointer<GTypeInstance>! { get }

    /// Required Initialiser for types conforming to `TypeInstanceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure used as the base of all type instances.
///
/// The `TypeInstanceRef` type acts as a lightweight Swift reference to an underlying `GTypeInstance` instance.
/// It exposes methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstanceRef` only as an `unowned` reference to an existing `GTypeInstance` instance.
///
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

/// An opaque structure used as the base of all type instances.
///
/// The `TypeInstance` type acts as an owner of an underlying `GTypeInstance` instance.
/// It provides the methods that can operate on this data type through `TypeInstanceProtocol` conformance.
/// Use `TypeInstance` as a strong reference or owner of a `GTypeInstance` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

    @inlinable func getPrivate(privateType: GType) -> gpointer? {
        let result = g_type_instance_get_private(_ptr, privateType)
        let rv = result
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
            let result = g_signal_connect_object(_ptr, detailedSignal, cHandler, gobject?.object_ptr, connectFlags.value)
        let rv = Int(result)
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
        let result = g_signal_connect_object(_ptr, detailedSignal, cHandler, gobject?.object_ptr, connectFlags.value)
        let rv = Int(result)
        return rv
    }

    /// Emits a signal. Signal emission is done synchronously.
    /// The method will only return control after all handlers are called or signal emission was stopped.
    /// 
    /// Note that `g_signal_emit_valist()` resets the return value to the default
    /// if no handlers are connected, in contrast to `g_signal_emitv()`.
    @inlinable func signalEmitValist(signalID: Int, detail: GQuark, varArgs: CVaListPointer) {
        
        g_signal_emit_valist(_ptr, guint(signalID), detail, varArgs)
        
    }

    /// Private helper function to aid implementation of the
    /// `G_TYPE_CHECK_INSTANCE()` macro.
    @inlinable func typeCheckInstance() -> Bool {
        let result = g_type_check_instance(_ptr)
        let rv = ((result) != 0)
        return rv
    }

    @inlinable func typeCheckInstanceCast(ifaceType: GType) -> GLibObject.TypeInstanceRef! {
        let result = g_type_check_instance_cast(_ptr, ifaceType)
        guard let rv = TypeInstanceRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    @inlinable func typeCheckInstanceIsA(ifaceType: GType) -> Bool {
        let result = g_type_check_instance_is_a(_ptr, ifaceType)
        let rv = ((result) != 0)
        return rv
    }

    @inlinable func typeCheckInstanceIsFundamentallyA(fundamentalType: GType) -> Bool {
        let result = g_type_check_instance_is_fundamentally_a(_ptr, fundamentalType)
        let rv = ((result) != 0)
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
        let result = g_type_name_from_instance(_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    // var gClass is unavailable because g_class is private

}



// MARK: - TypeInterface Record

/// An opaque structure used as the base of all interface types.
///
/// The `TypeInterfaceProtocol` protocol exposes the methods and properties of an underlying `GTypeInterface` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInterface`.
/// Alternatively, use `TypeInterfaceRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeInterfaceProtocol {
        /// Untyped pointer to the underlying `GTypeInterface` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeInterface` instance.
    var _ptr: UnsafeMutablePointer<GTypeInterface>! { get }

    /// Required Initialiser for types conforming to `TypeInterfaceProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure used as the base of all interface types.
///
/// The `TypeInterfaceRef` type acts as a lightweight Swift reference to an underlying `GTypeInterface` instance.
/// It exposes methods that can operate on this data type through `TypeInterfaceProtocol` conformance.
/// Use `TypeInterfaceRef` only as an `unowned` reference to an existing `GTypeInterface` instance.
///
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
    @inlinable static func peek<TypeClassT: TypeClassProtocol>(instanceClass: TypeClassT, ifaceType: GType) -> GLibObject.TypeInterfaceRef! {
            let result = g_type_interface_peek(instanceClass._ptr, ifaceType)
        guard let rv = TypeInterfaceRef(gpointer: result) else { return nil }
        return rv
    }
}

/// An opaque structure used as the base of all interface types.
///
/// The `TypeInterface` type acts as an owner of an underlying `GTypeInterface` instance.
/// It provides the methods that can operate on this data type through `TypeInterfaceProtocol` conformance.
/// Use `TypeInterface` as a strong reference or owner of a `GTypeInterface` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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
    @inlinable public static func peek<TypeClassT: TypeClassProtocol>(instanceClass: TypeClassT, ifaceType: GType) -> GLibObject.TypeInterface! {
            let result = g_type_interface_peek(instanceClass._ptr, ifaceType)
        guard let rv = TypeInterface(gpointer: result) else { return nil }
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
    @inlinable func peekParent() -> GLibObject.TypeInterfaceRef! {
        let result = g_type_interface_peek_parent(_ptr)
        guard let rv = TypeInterfaceRef(gpointer: result) else { return nil }
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

/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
///
/// The `TypeModuleClassProtocol` protocol exposes the methods and properties of an underlying `GTypeModuleClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeModuleClass`.
/// Alternatively, use `TypeModuleClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeModuleClassProtocol {
        /// Untyped pointer to the underlying `GTypeModuleClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeModuleClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeModuleClass>! { get }

    /// Required Initialiser for types conforming to `TypeModuleClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// In order to implement dynamic loading of types based on `GTypeModule`,
/// the `load` and `unload` functions in `GTypeModuleClass` must be implemented.
///
/// The `TypeModuleClassRef` type acts as a lightweight Swift reference to an underlying `GTypeModuleClass` instance.
/// It exposes methods that can operate on this data type through `TypeModuleClassProtocol` conformance.
/// Use `TypeModuleClassRef` only as an `unowned` reference to an existing `GTypeModuleClass` instance.
///
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

/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
///
/// The `TypePluginClassProtocol` protocol exposes the methods and properties of an underlying `GTypePluginClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypePluginClass`.
/// Alternatively, use `TypePluginClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypePluginClassProtocol {
        /// Untyped pointer to the underlying `GTypePluginClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypePluginClass` instance.
    var _ptr: UnsafeMutablePointer<GTypePluginClass>! { get }

    /// Required Initialiser for types conforming to `TypePluginClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
///
/// The `TypePluginClassRef` type acts as a lightweight Swift reference to an underlying `GTypePluginClass` instance.
/// It exposes methods that can operate on this data type through `TypePluginClassProtocol` conformance.
/// Use `TypePluginClassRef` only as an `unowned` reference to an existing `GTypePluginClass` instance.
///
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

/// The `GTypePlugin` interface is used by the type system in order to handle
/// the lifecycle of dynamically loaded types.
///
/// The `TypePluginClass` type acts as an owner of an underlying `GTypePluginClass` instance.
/// It provides the methods that can operate on this data type through `TypePluginClassProtocol` conformance.
/// Use `TypePluginClass` as a strong reference or owner of a `GTypePluginClass` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

/// A structure holding information for a specific type.
/// 
/// See also: `g_type_query()`
///
/// The `TypeQueryProtocol` protocol exposes the methods and properties of an underlying `GTypeQuery` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeQuery`.
/// Alternatively, use `TypeQueryRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeQueryProtocol {
        /// Untyped pointer to the underlying `GTypeQuery` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeQuery` instance.
    var _ptr: UnsafeMutablePointer<GTypeQuery>! { get }

    /// Required Initialiser for types conforming to `TypeQueryProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure holding information for a specific type.
/// 
/// See also: `g_type_query()`
///
/// The `TypeQueryRef` type acts as a lightweight Swift reference to an underlying `GTypeQuery` instance.
/// It exposes methods that can operate on this data type through `TypeQueryProtocol` conformance.
/// Use `TypeQueryRef` only as an `unowned` reference to an existing `GTypeQuery` instance.
///
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

/// A structure holding information for a specific type.
/// 
/// See also: `g_type_query()`
///
/// The `TypeQuery` type acts as an owner of an underlying `GTypeQuery` instance.
/// It provides the methods that can operate on this data type through `TypeQueryProtocol` conformance.
/// Use `TypeQuery` as a strong reference or owner of a `GTypeQuery` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
///
/// The `TypeValueTableProtocol` protocol exposes the methods and properties of an underlying `GTypeValueTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeValueTable`.
/// Alternatively, use `TypeValueTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeValueTable` instance.
    var _ptr: UnsafeMutablePointer<GTypeValueTable>! { get }

    /// Required Initialiser for types conforming to `TypeValueTableProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
///
/// The `TypeValueTableRef` type acts as a lightweight Swift reference to an underlying `GTypeValueTable` instance.
/// It exposes methods that can operate on this data type through `TypeValueTableProtocol` conformance.
/// Use `TypeValueTableRef` only as an `unowned` reference to an existing `GTypeValueTable` instance.
///
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
    @inlinable static func peek(type: GType) -> GLibObject.TypeValueTableRef! {
            let result = g_type_value_table_peek(type)
        guard let rv = TypeValueTableRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
///
/// The `TypeValueTable` type acts as an owner of an underlying `GTypeValueTable` instance.
/// It provides the methods that can operate on this data type through `TypeValueTableProtocol` conformance.
/// Use `TypeValueTable` as a strong reference or owner of a `GTypeValueTable` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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
    @inlinable public static func peek(type: GType) -> GLibObject.TypeValueTable! {
            let result = g_type_value_table_peek(type)
        guard let rv = TypeValueTable(gconstpointer: gconstpointer(result)) else { return nil }
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



// MARK: - TypeModule Class

/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface.
/// 
/// The model of `GTypeModule` is a dynamically loaded module which
/// implements some number of types and interface implementations.
/// 
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// reference cannot be released from within the module code, since that
/// would lead to the caller's code being unloaded before `g_object_unref()`
/// returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass`.
///
/// The `TypeModuleProtocol` protocol exposes the methods and properties of an underlying `GTypeModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeModule`.
/// Alternatively, use `TypeModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeModuleProtocol: ObjectProtocol, TypePluginProtocol {
        /// Untyped pointer to the underlying `GTypeModule` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeModule` instance.
    var type_module_ptr: UnsafeMutablePointer<GTypeModule>! { get }

    /// Required Initialiser for types conforming to `TypeModuleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface.
/// 
/// The model of `GTypeModule` is a dynamically loaded module which
/// implements some number of types and interface implementations.
/// 
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// reference cannot be released from within the module code, since that
/// would lead to the caller's code being unloaded before `g_object_unref()`
/// returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass`.
///
/// The `TypeModuleRef` type acts as a lightweight Swift reference to an underlying `GTypeModule` instance.
/// It exposes methods that can operate on this data type through `TypeModuleProtocol` conformance.
/// Use `TypeModuleRef` only as an `unowned` reference to an existing `GTypeModule` instance.
///
public struct TypeModuleRef: TypeModuleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTypeModule` instance.
    /// For type-safe access, use the generated, typed pointer `type_module_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeModuleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeModule>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeModule>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeModule>?) {
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

    /// Reference intialiser for a related type that implements `TypeModuleProtocol`
    @inlinable init<T: TypeModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TypeModuleProtocol>(_ other: T) -> TypeModuleRef { TypeModuleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface.
/// 
/// The model of `GTypeModule` is a dynamically loaded module which
/// implements some number of types and interface implementations.
/// 
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// reference cannot be released from within the module code, since that
/// would lead to the caller's code being unloaded before `g_object_unref()`
/// returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass`.
///
/// The `TypeModule` type acts as a reference-counted owner of an underlying `GTypeModule` instance.
/// It provides the methods that can operate on this data type through `TypeModuleProtocol` conformance.
/// Use `TypeModule` as a strong reference or owner of a `GTypeModule` instance.
///
open class TypeModule: Object, TypeModuleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeModule>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeModule>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeModule>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeModule>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTypeModule`.
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeModule>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TypeModuleProtocol`
    /// Will retain `GTypeModule`.
    /// - Parameter other: an instance of a related type that implements `TypeModuleProtocol`
    @inlinable public init<T: TypeModuleProtocol>(typeModule other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no TypeModule properties

public enum TypeModuleSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: TypeModule has no signals
// MARK: TypeModule Class: TypeModuleProtocol extension (methods and fields)
public extension TypeModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeModule` instance.
    @inlinable var type_module_ptr: UnsafeMutablePointer<GTypeModule>! { return ptr?.assumingMemoryBound(to: GTypeModule.self) }

    /// Registers an additional interface for a type, whose interface lives
    /// in the given type plugin. If the interface was already registered
    /// for the type in this plugin, nothing will be done.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_add_interface_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func addInterface<InterfaceInfoT: InterfaceInfoProtocol>(instanceType: GType, interfaceType: GType, interfaceInfo: InterfaceInfoT) {
        
        g_type_module_add_interface(type_module_ptr, instanceType, interfaceType, interfaceInfo._ptr)
        
    }

    /// Looks up or registers an enumeration that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func registerEnum<EnumValueT: EnumValueProtocol>(name: UnsafePointer<gchar>!, constStaticValues: EnumValueT) -> GType {
        let result = g_type_module_register_enum(type_module_ptr, name, constStaticValues._ptr)
        let rv = result
        return rv
    }

    /// Looks up or registers a flags type that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func registerFlags<FlagsValueT: FlagsValueProtocol>(name: UnsafePointer<gchar>!, constStaticValues: FlagsValueT) -> GType {
        let result = g_type_module_register_flags(type_module_ptr, name, constStaticValues._ptr)
        let rv = result
        return rv
    }

    /// Looks up or registers a type that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// When reregistering a type (typically because a module is unloaded
    /// then reloaded, and reinitialized), `module` and `parent_type` must
    /// be the same as they were previously.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func registerType<TypeInfoT: TypeInfoProtocol>(parentType: GType, typeName: UnsafePointer<gchar>!, typeInfo: TypeInfoT, flags: TypeFlags) -> GType {
        let result = g_type_module_register_type(type_module_ptr, parentType, typeName, typeInfo._ptr, flags.value)
        let rv = result
        return rv
    }

    /// Sets the name for a `GTypeModule`
    @inlinable func set(name: UnsafePointer<gchar>!) {
        
        g_type_module_set_name(type_module_ptr, name)
        
    }

    /// Decreases the use count of a `GTypeModule` by one. If the
    /// result is zero, the module will be unloaded. (However, the
    /// `GTypeModule` will not be freed, and types associated with the
    /// `GTypeModule` are not unregistered. Once a `GTypeModule` is
    /// initialized, it must exist forever.)
    @inlinable func unuse() {
        
        g_type_module_unuse(type_module_ptr)
        
    }

    /// Increases the use count of a `GTypeModule` by one. If the
    /// use count was zero before, the plugin will be loaded.
    /// If loading the plugin fails, the use count is reset to
    /// its prior value.
    @inlinable func use() -> Bool {
        let result = g_type_module_use(type_module_ptr)
        let rv = ((result) != 0)
        return rv
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = type_module_ptr.pointee.parent_instance
    return rv
        }
    }

    @inlinable var useCount: guint {
        get {
            let rv = type_module_ptr.pointee.use_count
    return rv
        }
    }

    @inlinable var typeInfos: SListRef! {
        get {
            let rv = GLib.SListRef(gconstpointer: gconstpointer(type_module_ptr.pointee.type_infos))
    return rv
        }
    }

    @inlinable var interfaceInfos: SListRef! {
        get {
            let rv = GLib.SListRef(gconstpointer: gconstpointer(type_module_ptr.pointee.interface_infos))
    return rv
        }
    }

    /// the name of the module
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// the name of the module
        get {
            let rv = type_module_ptr.pointee.name
    return rv
        }
    }

}



