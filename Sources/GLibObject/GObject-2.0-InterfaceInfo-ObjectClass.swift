import CGLib
import GLib
import GObjectCHelpers

// MARK: - InterfaceInfo Record

/// The `InterfaceInfoProtocol` protocol exposes the methods and properties of an underlying `GInterfaceInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InterfaceInfo`.
/// Alternatively, use `InterfaceInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
public protocol InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInterfaceInfo` instance.
    var _ptr: UnsafeMutablePointer<GInterfaceInfo>! { get }

    /// Required Initialiser for types conforming to `InterfaceInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `InterfaceInfoRef` type acts as a lightweight Swift reference to an underlying `GInterfaceInfo` instance.
/// It exposes methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfoRef` only as an `unowned` reference to an existing `GInterfaceInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
public struct InterfaceInfoRef: InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InterfaceInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInterfaceInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInterfaceInfo>?) {
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

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    @inlinable init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InterfaceInfo` type acts as an owner of an underlying `GInterfaceInfo` instance.
/// It provides the methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfo` as a strong reference or owner of a `GInterfaceInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
open class InterfaceInfo: InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInterfaceInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInterfaceInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GInterfaceInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    /// `GInterfaceInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `InterfaceInfoProtocol`
    @inlinable public init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GInterfaceInfo`.
    deinit {
        // no reference counting for GInterfaceInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }



}

// MARK: no InterfaceInfo properties

// MARK: no InterfaceInfo signals

// MARK: InterfaceInfo has no signals
// MARK: InterfaceInfo Record: InterfaceInfoProtocol extension (methods and fields)
public extension InterfaceInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInterfaceInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInterfaceInfo>! { return ptr?.assumingMemoryBound(to: GInterfaceInfo.self) }

    /// Adds `interface_type` to the static `instantiable_type`.
    /// The information contained in the `GInterfaceInfo` structure
    /// pointed to by `info` is used to manage the relationship.
    @inlinable func typeAddInterfaceStatic(instanceType: GType, interfaceType: GType) {
        g_type_add_interface_static(instanceType, interfaceType, _ptr)
    
    }

    /// location of the interface initialization function
    @inlinable var interfaceInit: GInterfaceInitFunc! {
        /// location of the interface initialization function
        get {
            let rv = _ptr.pointee.interface_init
            return rv
        }
        /// location of the interface initialization function
         set {
            _ptr.pointee.interface_init = newValue
        }
    }

    /// location of the interface finalization function
    @inlinable var interfaceFinalize: GInterfaceFinalizeFunc! {
        /// location of the interface finalization function
        get {
            let rv = _ptr.pointee.interface_finalize
            return rv
        }
        /// location of the interface finalization function
         set {
            _ptr.pointee.interface_finalize = newValue
        }
    }

    /// user-supplied data passed to the interface init/finalize functions
    @inlinable var interfaceData: gpointer! {
        /// user-supplied data passed to the interface init/finalize functions
        get {
            let rv = _ptr.pointee.interface_data
            return rv
        }
        /// user-supplied data passed to the interface init/finalize functions
         set {
            _ptr.pointee.interface_data = newValue
        }
    }

}



/// Metatype/GType declaration for Object
public extension ObjectClassRef {
    
    /// This getter returns the GLib type identifier registered for `Object`
    static var metatypeReference: GType { g_object_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GObjectClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GObjectClass.self) }
    
    static var metatype: GObjectClass? { metatypePointer?.pointee } 
    
    static var wrapper: ObjectClassRef? { ObjectClassRef(metatypePointer) }
    
    
}

// MARK: - ObjectClass Record

/// The `ObjectClassProtocol` protocol exposes the methods and properties of an underlying `GObjectClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ObjectClass`.
/// Alternatively, use `ObjectClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class structure for the GObject type.
/// 
/// (C Language Example):
/// ```C
/// // Example of implementing a singleton using a constructor.
/// static MySingleton *the_singleton = NULL;
/// 
/// static GObject*
/// my_singleton_constructor (GType                  type,
///                           guint                  n_construct_params,
///                           GObjectConstructParam *construct_params)
/// {
///   GObject *object;
///   
///   if (!the_singleton)
///     {
///       object = G_OBJECT_CLASS (parent_class)->constructor (type,
///                                                            n_construct_params,
///                                                            construct_params);
///       the_singleton = MY_SINGLETON (object);
///     }
///   else
///     object = g_object_ref (G_OBJECT (the_singleton));
/// 
///   return object;
/// }
/// ```
/// 
public protocol ObjectClassProtocol {
        /// Untyped pointer to the underlying `GObjectClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GObjectClass` instance.
    var _ptr: UnsafeMutablePointer<GObjectClass>! { get }

    /// Required Initialiser for types conforming to `ObjectClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The `ObjectClassRef` type acts as a lightweight Swift reference to an underlying `GObjectClass` instance.
/// It exposes methods that can operate on this data type through `ObjectClassProtocol` conformance.
/// Use `ObjectClassRef` only as an `unowned` reference to an existing `GObjectClass` instance.
///
/// The class structure for the GObject type.
/// 
/// (C Language Example):
/// ```C
/// // Example of implementing a singleton using a constructor.
/// static MySingleton *the_singleton = NULL;
/// 
/// static GObject*
/// my_singleton_constructor (GType                  type,
///                           guint                  n_construct_params,
///                           GObjectConstructParam *construct_params)
/// {
///   GObject *object;
///   
///   if (!the_singleton)
///     {
///       object = G_OBJECT_CLASS (parent_class)->constructor (type,
///                                                            n_construct_params,
///                                                            construct_params);
///       the_singleton = MY_SINGLETON (object);
///     }
///   else
///     object = g_object_ref (G_OBJECT (the_singleton));
/// 
///   return object;
/// }
/// ```
/// 
public struct ObjectClassRef: ObjectClassProtocol {
        /// Untyped pointer to the underlying `GObjectClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ObjectClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GObjectClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GObjectClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GObjectClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GObjectClass>?) {
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

    /// Reference intialiser for a related type that implements `ObjectClassProtocol`
    @inlinable init<T: ObjectClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: ObjectClass Record: ObjectClassProtocol extension (methods and fields)
public extension ObjectClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObjectClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GObjectClass>! { return ptr?.assumingMemoryBound(to: GObjectClass.self) }

    /// Looks up the `GParamSpec` for a property of a class.
    @inlinable func findProperty(propertyName: UnsafePointer<gchar>!) -> ParamSpecRef! {
        let rv = ParamSpecRef(gconstpointer: gconstpointer(g_object_class_find_property(_ptr, propertyName)))
        return rv
    }

    /// Installs new properties from an array of `GParamSpecs`.
    /// 
    /// All properties should be installed during the class initializer.  It
    /// is possible to install properties after that, but doing so is not
    /// recommend, and specifically, is not guaranteed to be thread-safe vs.
    /// use of properties on the same type on other threads.
    /// 
    /// The property id of each property is the index of each `GParamSpec` in
    /// the `pspecs` array.
    /// 
    /// The property id of 0 is treated specially by `GObject` and it should not
    /// be used to store a `GParamSpec`.
    /// 
    /// This function should be used if you plan to use a static array of
    /// `GParamSpecs` and `g_object_notify_by_pspec()`. For instance, this
    /// class initialization:
    /// 
    /// (C Language Example):
    /// ```C
    /// enum {
    ///   PROP_0, PROP_FOO, PROP_BAR, N_PROPERTIES
    /// };
    /// 
    /// static GParamSpec *obj_properties[N_PROPERTIES] = { NULL, };
    /// 
    /// static void
    /// my_object_class_init (MyObjectClass *klass)
    /// {
    ///   GObjectClass *gobject_class = G_OBJECT_CLASS (klass);
    /// 
    ///   obj_properties[PROP_FOO] =
    ///     g_param_spec_int ("foo", "Foo", "Foo",
    ///                       -1, G_MAXINT,
    ///                       0,
    ///                       G_PARAM_READWRITE);
    /// 
    ///   obj_properties[PROP_BAR] =
    ///     g_param_spec_string ("bar", "Bar", "Bar",
    ///                          NULL,
    ///                          G_PARAM_READWRITE);
    /// 
    ///   gobject_class->set_property = my_object_set_property;
    ///   gobject_class->get_property = my_object_get_property;
    ///   g_object_class_install_properties (gobject_class,
    ///                                      N_PROPERTIES,
    ///                                      obj_properties);
    /// }
    /// ```
    /// 
    /// allows calling `g_object_notify_by_pspec()` to notify of property changes:
    /// 
    /// (C Language Example):
    /// ```C
    /// void
    /// my_object_set_foo (MyObject *self, gint foo)
    /// {
    ///   if (self->foo != foo)
    ///     {
    ///       self->foo = foo;
    ///       g_object_notify_by_pspec (G_OBJECT (self), obj_properties[PROP_FOO]);
    ///     }
    ///  }
    /// ```
    /// 
    @inlinable func installProperties(nPspecs: Int, pspecs: UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>!) {
        g_object_class_install_properties(_ptr, guint(nPspecs), pspecs)
    
    }

    /// Installs a new property.
    /// 
    /// All properties should be installed during the class initializer.  It
    /// is possible to install properties after that, but doing so is not
    /// recommend, and specifically, is not guaranteed to be thread-safe vs.
    /// use of properties on the same type on other threads.
    /// 
    /// Note that it is possible to redefine a property in a derived class,
    /// by installing a property with the same name. This can be useful at times,
    /// e.g. to change the range of allowed values or the default value.
    @inlinable func installProperty<ParamSpecT: ParamSpecProtocol>(propertyID: Int, pspec: ParamSpecT) {
        g_object_class_install_property(_ptr, guint(propertyID), pspec.param_spec_ptr)
    
    }

    /// Get an array of `GParamSpec`* for all properties of a class.
    @inlinable func listProperties(nProperties: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>?>! {
        let rv = g_object_class_list_properties(_ptr, nProperties)
        return rv
    }

    /// Registers `property_id` as referring to a property with the name
    /// `name` in a parent class or in an interface implemented by `oclass`.
    /// This allows this class to "override" a property implementation in
    /// a parent class or to provide the implementation of a property from
    /// an interface.
    /// 
    /// Internally, overriding is implemented by creating a property of type
    /// `GParamSpecOverride`; generally operations that query the properties of
    /// the object class, such as `g_object_class_find_property()` or
    /// `g_object_class_list_properties()` will return the overridden
    /// property. However, in one case, the `construct_properties` argument of
    /// the `constructor` virtual function, the `GParamSpecOverride` is passed
    /// instead, so that the `param_id` field of the `GParamSpec` will be
    /// correct.  For virtually all uses, this makes no difference. If you
    /// need to get the overridden property, you can call
    /// `g_param_spec_get_redirect_target()`.
    @inlinable func overrideProperty(propertyID: Int, name: UnsafePointer<gchar>!) {
        g_object_class_override_property(_ptr, guint(propertyID), name)
    
    }

    /// the parent class
    @inlinable var gTypeClass: GTypeClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.g_type_class
            return rv
        }
    }

    // var constructProperties is unavailable because construct_properties is private

    // var constructor is unavailable because constructor is void

    // var setProperty is unavailable because set_property is void

    // var getProperty is unavailable because get_property is void

    // var dispose is unavailable because dispose is void

    // var finalize is unavailable because finalize is void

    // var dispatchPropertiesChanged is unavailable because dispatch_properties_changed is void

    // var notify is unavailable because notify is void

    // var constructed is unavailable because constructed is void

    // var flags is unavailable because flags is private

    // var pdummy is unavailable because pdummy is private

}



