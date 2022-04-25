import CGLib
import GLib
import GObjectCHelpers

/// Metatype/GType declaration for Object
public extension ObjectClassRef {
    
    /// This getter returns the GLib type identifier registered for `Object`
    static var metatypeReference: GType { g_object_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GObjectClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GObjectClass.self) }
    
    static var metatype: GObjectClass? { metatypePointer?.pointee } 
    
    static var wrapper: ObjectClassRef? { ObjectClassRef(metatypePointer) }
    
    
}

// MARK: - ObjectClass Record

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
///
/// The `ObjectClassProtocol` protocol exposes the methods and properties of an underlying `GObjectClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ObjectClass`.
/// Alternatively, use `ObjectClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ObjectClassProtocol {
        /// Untyped pointer to the underlying `GObjectClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GObjectClass` instance.
    var _ptr: UnsafeMutablePointer<GObjectClass>! { get }

    /// Required Initialiser for types conforming to `ObjectClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

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
///
/// The `ObjectClassRef` type acts as a lightweight Swift reference to an underlying `GObjectClass` instance.
/// It exposes methods that can operate on this data type through `ObjectClassProtocol` conformance.
/// Use `ObjectClassRef` only as an `unowned` reference to an existing `GObjectClass` instance.
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
    @inlinable func findProperty(propertyName: UnsafePointer<gchar>!) -> GLibObject.ParamSpecRef! {
        let result = g_object_class_find_property(_ptr, propertyName)
        let rv = ParamSpecRef(gconstpointer: gconstpointer(result))
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
        let result = g_object_class_list_properties(_ptr, nProperties)
        let rv = result
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



// MARK: - ObjectConstructParam Record

/// The GObjectConstructParam struct is an auxiliary structure used to hand
/// `GParamSpec`/`GValue` pairs to the `constructor` of a `GObjectClass`.
///
/// The `ObjectConstructParamProtocol` protocol exposes the methods and properties of an underlying `GObjectConstructParam` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ObjectConstructParam`.
/// Alternatively, use `ObjectConstructParamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ObjectConstructParamProtocol {
        /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GObjectConstructParam` instance.
    var _ptr: UnsafeMutablePointer<GObjectConstructParam>! { get }

    /// Required Initialiser for types conforming to `ObjectConstructParamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The GObjectConstructParam struct is an auxiliary structure used to hand
/// `GParamSpec`/`GValue` pairs to the `constructor` of a `GObjectClass`.
///
/// The `ObjectConstructParamRef` type acts as a lightweight Swift reference to an underlying `GObjectConstructParam` instance.
/// It exposes methods that can operate on this data type through `ObjectConstructParamProtocol` conformance.
/// Use `ObjectConstructParamRef` only as an `unowned` reference to an existing `GObjectConstructParam` instance.
///
public struct ObjectConstructParamRef: ObjectConstructParamProtocol {
        /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ObjectConstructParamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GObjectConstructParam>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GObjectConstructParam>?) {
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

    /// Reference intialiser for a related type that implements `ObjectConstructParamProtocol`
    @inlinable init<T: ObjectConstructParamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The GObjectConstructParam struct is an auxiliary structure used to hand
/// `GParamSpec`/`GValue` pairs to the `constructor` of a `GObjectClass`.
///
/// The `ObjectConstructParam` type acts as an owner of an underlying `GObjectConstructParam` instance.
/// It provides the methods that can operate on this data type through `ObjectConstructParamProtocol` conformance.
/// Use `ObjectConstructParam` as a strong reference or owner of a `GObjectConstructParam` instance.
///
open class ObjectConstructParam: ObjectConstructParamProtocol {
        /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GObjectConstructParam>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GObjectConstructParam>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GObjectConstructParam` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ObjectConstructParamProtocol`
    /// `GObjectConstructParam` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ObjectConstructParamProtocol`
    @inlinable public init<T: ObjectConstructParamProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GObjectConstructParam`.
    deinit {
        // no reference counting for GObjectConstructParam, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }



}

// MARK: no ObjectConstructParam properties

// MARK: no ObjectConstructParam signals

// MARK: ObjectConstructParam has no signals
// MARK: ObjectConstructParam Record: ObjectConstructParamProtocol extension (methods and fields)
public extension ObjectConstructParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObjectConstructParam` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GObjectConstructParam>! { return ptr?.assumingMemoryBound(to: GObjectConstructParam.self) }


    /// the `GParamSpec` of the construct parameter
    @inlinable var pspec: ParamSpecRef! {
        /// the `GParamSpec` of the construct parameter
        get {
            let rv = ParamSpecRef(gconstpointer: gconstpointer(_ptr.pointee.pspec))
    return rv
        }
        /// the `GParamSpec` of the construct parameter
         set {
            _ptr.pointee.pspec = UnsafeMutablePointer<GParamSpec>(newValue.param_spec_ptr)
        }
    }

    /// the value to set the parameter to
    @inlinable var value: ValueRef! {
        /// the value to set the parameter to
        get {
            let rv = ValueRef(gconstpointer: gconstpointer(_ptr.pointee.value))
    return rv
        }
        /// the value to set the parameter to
         set {
            _ptr.pointee.value = UnsafeMutablePointer<GValue>(newValue.value_ptr)
        }
    }

}



// MARK: - Object Class

/// The base object type.
/// 
/// All the fields in the `GObject` structure are private to the implementation
/// and should never be accessed directly.
///
/// The `ObjectProtocol` protocol exposes the methods and properties of an underlying `GObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Object`.
/// Alternatively, use `ObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ObjectProtocol {
        /// Untyped pointer to the underlying `GObject` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GObject` instance.
    var object_ptr: UnsafeMutablePointer<GObject>! { get }

    /// Required Initialiser for types conforming to `ObjectProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The base object type.
/// 
/// All the fields in the `GObject` structure are private to the implementation
/// and should never be accessed directly.
///
/// The `ObjectRef` type acts as a lightweight Swift reference to an underlying `GObject` instance.
/// It exposes methods that can operate on this data type through `ObjectProtocol` conformance.
/// Use `ObjectRef` only as an `unowned` reference to an existing `GObject` instance.
///
public struct ObjectRef: ObjectProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GObject` instance.
    /// For type-safe access, use the generated, typed pointer `object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ObjectRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GObject>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GObject>?) {
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

    /// Reference intialiser for a related type that implements `ObjectProtocol`
    @inlinable init<T: ObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: ObjectProtocol>(_ other: T) -> ObjectRef { ObjectRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable init(valist objectType: GType, firstPropertyName: UnsafePointer<gchar>!, varArgs: CVaListPointer) {
            let result = g_object_new_valist(objectType, firstPropertyName, varArgs)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable init(properties objectType: GType, nProperties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) {
            let result = g_object_new_with_properties(objectType, guint(nProperties), names, values)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable init(objectType: GType, nParameters: Int, parameters: UnsafeMutablePointer<GParameter>!) {
            let result = g_object_newv(objectType, guint(nParameters), parameters)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable static func new(valist objectType: GType, firstPropertyName: UnsafePointer<gchar>!, varArgs: CVaListPointer) -> GLibObject.ObjectRef! {
            let result = g_object_new_valist(objectType, firstPropertyName, varArgs)
        guard let rv = ObjectRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable static func newWith(properties objectType: GType, nProperties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) -> GLibObject.ObjectRef! {
            let result = g_object_new_with_properties(objectType, guint(nProperties), names, values)
        guard let rv = ObjectRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable static func newv(objectType: GType, nParameters: Int, parameters: UnsafeMutablePointer<GParameter>!) -> GLibObject.ObjectRef! {
            let result = g_object_newv(objectType, guint(nParameters), parameters)
        guard let rv = ObjectRef(gpointer: result) else { return nil }
        return rv
    }
}

/// The base object type.
/// 
/// All the fields in the `GObject` structure are private to the implementation
/// and should never be accessed directly.
///
/// The `Object` type acts as a reference-counted owner of an underlying `GObject` instance.
/// It provides the methods that can operate on this data type through `ObjectProtocol` conformance.
/// Use `Object` as a strong reference or owner of a `GObject` instance.
///
open class Object: ObjectProtocol {
        /// Untyped pointer to the underlying `GObject` instance.
    /// For type-safe access, use the generated, typed pointer `object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GObject>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GObject>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GObject`.
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Reference intialiser for a related type that implements `ObjectProtocol`
    /// Will retain `GObject`.
    /// - Parameter other: an instance of a related type that implements `ObjectProtocol`
    @inlinable public init<T: ObjectProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Releases the underlying `GObject` instance using `g_object_unref`.
    deinit {
        g_object_unref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }


    // *** new() is not available because it has a varargs (...) parameter!



    // *** newValist() is currently not available because g_object_new_valist takes a va_list pointer!


    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable public init(properties objectType: GType, nProperties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) {
            let result = g_object_new_with_properties(objectType, guint(nProperties), names, values)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable public init(objectType: GType, nParameters: Int, parameters: UnsafeMutablePointer<GParameter>!) {
            let result = g_object_newv(objectType, guint(nParameters), parameters)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    if typeIsA(type: self.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = self.refSink() } 
    }


    // *** newValist() is currently not available because g_object_new_valist takes a va_list pointer!


    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable public static func newWith(properties objectType: GType, nProperties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) -> GLibObject.Object! {
            let result = g_object_new_with_properties(objectType, guint(nProperties), names, values)
        guard let rv = Object(gconstpointer: gconstpointer(result)) else { return nil }
            if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
return rv
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable public static func newv(objectType: GType, nParameters: Int, parameters: UnsafeMutablePointer<GParameter>!) -> GLibObject.Object! {
            let result = g_object_newv(objectType, guint(nParameters), parameters)
        guard let rv = Object(gpointer: result) else { return nil }
            if typeIsA(type: rv.type, isAType: InitiallyUnownedClassRef.metatypeReference) { _ = rv.refSink() } 
return rv
    }

}

// MARK: no Object properties

public enum ObjectSignalName: String, SignalNameProtocol {
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

// MARK: Object signals
public extension ObjectProtocol {
    /// Connect a Swift signal handler to the given, typed `ObjectSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - handler: The Swift signal handler (function or callback) to invoke on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), handler h: @escaping SignalHandler) -> Int {
        connect(s, flags: f, handler: h)
    }
    
    
    /// Connect a C signal handler to the given, typed `ObjectSignalName` signal
    /// - Parameters:
    ///   - signal: The signal to connect
    ///   - flags: The connection flags to use
    ///   - data: A pointer to user data to provide to the callback
    ///   - destroyData: A `GClosureNotify` C function to destroy the data pointed to by `userData`
    ///   - signalHandler: The C function to be called on the given signal
    /// - Returns: The signal handler ID (always greater than 0 for successful connections)
    @inlinable @discardableResult func connect(signal s: ObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), data userData: gpointer!, destroyData destructor: GClosureNotify? = nil, signalHandler h: @escaping GCallback) -> Int {
        connectSignal(s, flags: f, data: userData, destroyData: destructor, handler: h)
    }
    
    
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
    /// - Note: This represents the underlying `notify` signal
    /// - Parameter flags: Flags
    /// - Parameter unownedSelf: Reference to instance of self
    /// - Parameter pspec: the `GParamSpec` of the property which changed.
    /// - Parameter handler: The signal handler to call
    /// Run the given callback whenever the `notify` signal is emitted
    @discardableResult @inlinable func onNotify(flags: ConnectFlags = ConnectFlags(0), handler: @escaping ( _ unownedSelf: ObjectRef, _ pspec: ParamSpecRef) -> Void ) -> Int {
        typealias SwiftHandler = GLib.ClosureHolder<(ObjectRef, ParamSpecRef), Void>
        let cCallback: @convention(c) (gpointer, gpointer, gpointer) -> Void = { unownedSelf, arg1, userData in
            let holder = Unmanaged<SwiftHandler>.fromOpaque(userData).takeUnretainedValue()
            let output: Void = holder.call((ObjectRef(raw: unownedSelf), ParamSpecRef(raw: arg1)))
            return output
        }
        return connect(
            signal: .notify,
            flags: flags,
            data: Unmanaged.passRetained(SwiftHandler(handler)).toOpaque(),
            destroyData: { userData, _ in UnsafeRawPointer(userData).flatMap(Unmanaged<SwiftHandler>.fromOpaque(_:))?.release() },
            signalHandler: unsafeBitCast(cCallback, to: GCallback.self)
        )
    }
    
    /// Typed `notify` signal for using the `connect(signal:)` methods
    static var notifySignal: ObjectSignalName { .notify }
    
    
}

// MARK: Object Class: ObjectProtocol extension (methods and fields)
public extension ObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObject` instance.
    @inlinable var object_ptr: UnsafeMutablePointer<GObject>! { return ptr?.assumingMemoryBound(to: GObject.self) }

    /// Increases the reference count of the object by one and sets a
    /// callback to be called when all other references to the object are
    /// dropped, or when this is already the last reference to the object
    /// and another reference is established.
    /// 
    /// This functionality is intended for binding `object` to a proxy
    /// object managed by another memory manager. This is done with two
    /// paired references: the strong reference added by
    /// `g_object_add_toggle_ref()` and a reverse reference to the proxy
    /// object which is either a strong reference or weak reference.
    /// 
    /// The setup is that when there are no other references to `object`,
    /// only a weak reference is held in the reverse direction from `object`
    /// to the proxy object, but when there are other references held to
    /// `object`, a strong reference is held. The `notify` callback is called
    /// when the reference from `object` to the proxy object should be
    /// "toggled" from strong to weak (`is_last_ref` true) or weak to strong
    /// (`is_last_ref` false).
    /// 
    /// Since a (normal) reference must be held to the object before
    /// calling `g_object_add_toggle_ref()`, the initial state of the reverse
    /// link is always strong.
    /// 
    /// Multiple toggle references may be added to the same gobject,
    /// however if there are multiple toggle references to an object, none
    /// of them will ever be notified until all but one are removed.  For
    /// this reason, you should only ever use a toggle reference if there
    /// is important state in the proxy object.
    @inlinable func addToggleRef(notify: GToggleNotify?, data: gpointer? = nil) {
        
        g_object_add_toggle_ref(object_ptr, notify, data)
        
    }

    /// Adds a weak reference from weak_pointer to `object` to indicate that
    /// the pointer located at `weak_pointer_location` is only valid during
    /// the lifetime of `object`. When the `object` is finalized,
    /// `weak_pointer` will be set to `nil`.
    /// 
    /// Note that as with `g_object_weak_ref()`, the weak references created by
    /// this method are not thread-safe: they cannot safely be used in one
    /// thread if the object's last `g_object_unref()` might happen in another
    /// thread. Use `GWeakRef` if thread-safety is required.
    @inlinable func addWeakPointer(weakPointerLocation: UnsafeMutablePointer<gpointer?>!) {
        
        g_object_add_weak_pointer(object_ptr, weakPointerLocation)
        
    }

    /// Creates a binding between `source_property` on `source` and `target_property`
    /// on `target`.
    /// 
    /// Whenever the `source_property` is changed the `target_property` is
    /// updated using the same value. For instance:
    /// 
    /// (C Language Example):
    /// ```C
    ///   g_object_bind_property (action, "active", widget, "sensitive", 0);
    /// ```
    /// 
    /// Will result in the "sensitive" property of the widget `GObject` instance to be
    /// updated with the same value of the "active" property of the action `GObject`
    /// instance.
    /// 
    /// If `flags` contains `G_BINDING_BIDIRECTIONAL` then the binding will be mutual:
    /// if `target_property` on `target` changes then the `source_property` on `source`
    /// will be updated as well.
    /// 
    /// The binding will automatically be removed when either the `source` or the
    /// `target` instances are finalized. To remove the binding without affecting the
    /// `source` and the `target` you can just call `g_object_unref()` on the returned
    /// `GBinding` instance.
    /// 
    /// Removing the binding by calling `g_object_unref()` on it must only be done if
    /// the binding, `source` and `target` are only used from a single thread and it
    /// is clear that both `source` and `target` outlive the binding. Especially it
    /// is not safe to rely on this if the binding, `source` or `target` can be
    /// finalized from different threads. Keep another reference to the binding and
    /// use `g_binding_unbind()` instead to be on the safe side.
    /// 
    /// A `GObject` can have multiple bindings.
    @inlinable func bindProperty<ObjectT: ObjectProtocol>(sourceProperty: UnsafePointer<gchar>!, target: ObjectT, targetProperty: UnsafePointer<gchar>!, flags: BindingFlags) -> GLibObject.BindingRef! {
        let result = g_object_bind_property(object_ptr, sourceProperty, target.object_ptr, targetProperty, flags.value)
        let rv = BindingRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Complete version of `g_object_bind_property()`.
    /// 
    /// Creates a binding between `source_property` on `source` and `target_property`
    /// on `target`, allowing you to set the transformation functions to be used by
    /// the binding.
    /// 
    /// If `flags` contains `G_BINDING_BIDIRECTIONAL` then the binding will be mutual:
    /// if `target_property` on `target` changes then the `source_property` on `source`
    /// will be updated as well. The `transform_from` function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    /// 
    /// The binding will automatically be removed when either the `source` or the
    /// `target` instances are finalized. This will release the reference that is
    /// being held on the `GBinding` instance; if you want to hold on to the
    /// `GBinding` instance, you will need to hold a reference to it.
    /// 
    /// To remove the binding, call `g_binding_unbind()`.
    /// 
    /// A `GObject` can have multiple bindings.
    /// 
    /// The same `user_data` parameter will be used for both `transform_to`
    /// and `transform_from` transformation functions; the `notify` function will
    /// be called once, when the binding is removed. If you need different data
    /// for each transformation function, please use
    /// `g_object_bind_property_with_closures()` instead.
    @inlinable func bindPropertyFull<ObjectT: ObjectProtocol>(sourceProperty: UnsafePointer<gchar>!, target: ObjectT, targetProperty: UnsafePointer<gchar>!, flags: BindingFlags, transformTo: GBindingTransformFunc? = nil, transformFrom: GBindingTransformFunc? = nil, userData: gpointer? = nil, notify: GDestroyNotify? = nil) -> GLibObject.BindingRef! {
        let result = g_object_bind_property_full(object_ptr, sourceProperty, target.object_ptr, targetProperty, flags.value, transformTo, transformFrom, userData, notify)
        let rv = BindingRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Creates a binding between `source_property` on `source` and `target_property`
    /// on `target`, allowing you to set the transformation functions to be used by
    /// the binding.
    /// 
    /// This function is the language bindings friendly version of
    /// `g_object_bind_property_full()`, using `GClosures` instead of
    /// function pointers.
    @inlinable func bindPropertyWithClosures<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(sourceProperty: UnsafePointer<gchar>!, target: ObjectT, targetProperty: UnsafePointer<gchar>!, flags: BindingFlags, transformTo: ClosureT, transformFrom: ClosureT) -> GLibObject.BindingRef! {
        let result = g_object_bind_property_with_closures(object_ptr, sourceProperty, target.object_ptr, targetProperty, flags.value, transformTo.closure_ptr, transformFrom.closure_ptr)
        let rv = BindingRef(gconstpointer: gconstpointer(result))
        return rv
    }


    // *** connect() is not available because it has a varargs (...) parameter!



    // *** disconnect() is not available because it has a varargs (...) parameter!


    /// This is a variant of `g_object_get_data()` which returns
    /// a 'duplicate' of the value. `dup_func` defines the
    /// meaning of 'duplicate' in this context, it could e.g.
    /// take a reference on a ref-counted object.
    /// 
    /// If the `key` is not set on the object then `dup_func`
    /// will be called with a `nil` argument.
    /// 
    /// Note that `dup_func` is called while user data of `object`
    /// is locked.
    /// 
    /// This function can be useful to avoid races when multiple
    /// threads are using object data on the same key on the same
    /// object.
    @inlinable func dupData(key: UnsafePointer<gchar>!, dupFunc: GDuplicateFunc? = nil, userData: gpointer? = nil) -> gpointer? {
        let result = g_object_dup_data(object_ptr, key, dupFunc, userData)
        let rv = result
        return rv
    }

    /// This is a variant of `g_object_get_qdata()` which returns
    /// a 'duplicate' of the value. `dup_func` defines the
    /// meaning of 'duplicate' in this context, it could e.g.
    /// take a reference on a ref-counted object.
    /// 
    /// If the `quark` is not set on the object then `dup_func`
    /// will be called with a `nil` argument.
    /// 
    /// Note that `dup_func` is called while user data of `object`
    /// is locked.
    /// 
    /// This function can be useful to avoid races when multiple
    /// threads are using object data on the same key on the same
    /// object.
    @inlinable func dupQdata(quark: GQuark, dupFunc: GDuplicateFunc? = nil, userData: gpointer? = nil) -> gpointer? {
        let result = g_object_dup_qdata(object_ptr, quark, dupFunc, userData)
        let rv = result
        return rv
    }

    /// This function is intended for `GObject` implementations to re-enforce
    /// a [floating](#floating-ref) object reference. Doing this is seldom
    /// required: all `GInitiallyUnowneds` are created with a floating reference
    /// which usually just needs to be sunken by calling `g_object_ref_sink()`.
    @inlinable func forceFloating() {
        
        g_object_force_floating(object_ptr)
        
    }

    /// Increases the freeze count on `object`. If the freeze count is
    /// non-zero, the emission of "notify" signals on `object` is
    /// stopped. The signals are queued until the freeze count is decreased
    /// to zero. Duplicate notifications are squashed so that at most one
    /// `GObject::notify` signal is emitted for each property modified while the
    /// object is frozen.
    /// 
    /// This is necessary for accessors that modify multiple properties to prevent
    /// premature notification while the object is still being modified.
    @inlinable func freezeNotify() {
        
        g_object_freeze_notify(object_ptr)
        
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Gets a named field from the objects table of associations (see `g_object_set_data()`).
    @inlinable func getData(key: UnsafePointer<gchar>!) -> gpointer? {
        let result = g_object_get_data(object_ptr, key)
        let rv = result
        return rv
    }

    /// Gets a property of an object.
    /// 
    /// The `value` can be:
    /// 
    ///  - an empty `GValue` initialized by `G_VALUE_INIT`, which will be
    ///    automatically initialized with the expected type of the property
    ///    (since GLib 2.60)
    ///  - a `GValue` initialized with the expected type of the property
    ///  - a `GValue` initialized with a type to which the expected type
    ///    of the property can be transformed
    /// 
    /// In general, a copy is made of the property contents and the caller is
    /// responsible for freeing the memory by calling `g_value_unset()`.
    /// 
    /// Note that `g_object_get_property()` is really intended for language
    /// bindings, `g_object_get()` is much more convenient for C programming.
    @inlinable func getProperty<ValueT: ValueProtocol>(propertyName: UnsafePointer<gchar>!, value: ValueT) {
        
        g_object_get_property(object_ptr, propertyName, value.value_ptr)
        
    }

    /// This function gets back user data pointers stored via
    /// `g_object_set_qdata()`.
    @inlinable func getQdata(quark: GQuark) -> gpointer? {
        let result = g_object_get_qdata(object_ptr, quark)
        let rv = result
        return rv
    }

    /// Gets properties of an object.
    /// 
    /// In general, a copy is made of the property contents and the caller
    /// is responsible for freeing the memory in the appropriate manner for
    /// the type, for instance by calling `g_free()` or `g_object_unref()`.
    /// 
    /// See `g_object_get()`.
    @inlinable func getValist(firstPropertyName: UnsafePointer<gchar>!, varArgs: CVaListPointer) {
        
        g_object_get_valist(object_ptr, firstPropertyName, varArgs)
        
    }

    /// Gets `n_properties` properties for an `object`.
    /// Obtained properties will be set to `values`. All properties must be valid.
    /// Warnings will be emitted and undefined behaviour may result if invalid
    /// properties are passed in.
    @inlinable func getv(nProperties: Int, names: UnsafeMutablePointer<UnsafePointer<gchar>?>!, values: UnsafeMutablePointer<GValue>!) {
        
        g_object_getv(object_ptr, guint(nProperties), names, values)
        
    }

    /// Emits a "notify" signal for the property `property_name` on `object`.
    /// 
    /// When possible, eg. when signaling a property change from within the class
    /// that registered the property, you should use `g_object_notify_by_pspec()`
    /// instead.
    /// 
    /// Note that emission of the notify signal may be blocked with
    /// `g_object_freeze_notify()`. In this case, the signal emissions are queued
    /// and will be emitted (in reverse order) when `g_object_thaw_notify()` is
    /// called.
    @inlinable func notify(propertyName: UnsafePointer<gchar>!) {
        
        g_object_notify(object_ptr, propertyName)
        
    }

    /// Emits a "notify" signal for the property specified by `pspec` on `object`.
    /// 
    /// This function omits the property name lookup, hence it is faster than
    /// `g_object_notify()`.
    /// 
    /// One way to avoid using `g_object_notify()` from within the
    /// class that registered the properties, and using `g_object_notify_by_pspec()`
    /// instead, is to store the GParamSpec used with
    /// `g_object_class_install_property()` inside a static array, e.g.:
    /// 
    /// (C Language Example):
    /// ```C
    ///   enum
    ///   {
    ///     PROP_0,
    ///     PROP_FOO,
    ///     PROP_LAST
    ///   };
    /// 
    ///   static GParamSpec *properties[PROP_LAST];
    /// 
    ///   static void
    ///   my_object_class_init (MyObjectClass *klass)
    ///   {
    ///     properties[PROP_FOO] = g_param_spec_int ("foo", "Foo", "The foo",
    ///                                              0, 100,
    ///                                              50,
    ///                                              G_PARAM_READWRITE);
    ///     g_object_class_install_property (gobject_class,
    ///                                      PROP_FOO,
    ///                                      properties[PROP_FOO]);
    ///   }
    /// ```
    /// 
    /// and then notify a change on the "foo" property with:
    /// 
    /// (C Language Example):
    /// ```C
    ///   g_object_notify_by_pspec (self, properties[PROP_FOO]);
    /// ```
    /// 
    @inlinable func notifyBy<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) {
        
        g_object_notify_by_pspec(object_ptr, pspec.param_spec_ptr)
        
    }

    /// Increases the reference count of `object`.
    /// 
    /// Since GLib 2.56, if `GLIB_VERSION_MAX_ALLOWED` is 2.56 or greater, the type
    /// of `object` will be propagated to the return type (using the GCC `typeof()`
    /// extension), so any casting the caller needs to do on the return type must be
    /// explicit.
    @discardableResult @inlinable func ref() -> GLibObject.ObjectRef! {
        let result = g_object_ref(object_ptr)
        guard let rv = ObjectRef(gpointer: result) else { return nil }
        return rv
    }

    /// Increase the reference count of `object`, and possibly remove the
    /// [floating](#floating-ref) reference, if `object` has a floating reference.
    /// 
    /// In other words, if the object is floating, then this call "assumes
    /// ownership" of the floating reference, converting it to a normal
    /// reference by clearing the floating flag while leaving the reference
    /// count unchanged.  If the object is not floating, then this call
    /// adds a new normal reference increasing the reference count by one.
    /// 
    /// Since GLib 2.56, the type of `object` will be propagated to the return type
    /// under the same conditions as for `g_object_ref()`.
    @inlinable @discardableResult func refSink() -> GLibObject.ObjectRef! {
        let result = g_object_ref_sink(object_ptr)
        guard let rv = ObjectRef(gpointer: result) else { return nil }
        return rv
    }

    /// Removes a reference added with `g_object_add_toggle_ref()`. The
    /// reference count of the object is decreased by one.
    @inlinable func removeToggleRef(notify: GToggleNotify?, data: gpointer? = nil) {
        
        g_object_remove_toggle_ref(object_ptr, notify, data)
        
    }

    /// Removes a weak reference from `object` that was previously added
    /// using `g_object_add_weak_pointer()`. The `weak_pointer_location` has
    /// to match the one used with `g_object_add_weak_pointer()`.
    @inlinable func removeWeakPointer(weakPointerLocation: UnsafeMutablePointer<gpointer?>!) {
        
        g_object_remove_weak_pointer(object_ptr, weakPointerLocation)
        
    }

    /// Compares the user data for the key `key` on `object` with
    /// `oldval`, and if they are the same, replaces `oldval` with
    /// `newval`.
    /// 
    /// This is like a typical atomic compare-and-exchange
    /// operation, for user data on an object.
    /// 
    /// If the previous value was replaced then ownership of the
    /// old value (`oldval`) is passed to the caller, including
    /// the registered destroy notify for it (passed out in `old_destroy`).
    /// It’s up to the caller to free this as needed, which may
    /// or may not include using `old_destroy` as sometimes replacement
    /// should not destroy the object in the normal way.
    /// 
    /// See `g_object_set_data()` for guidance on using a small, bounded set of values
    /// for `key`.
    @inlinable func replaceData(key: UnsafePointer<gchar>!, oldval: gpointer? = nil, newval: gpointer? = nil, destroy: GDestroyNotify? = nil, oldDestroy: UnsafeMutablePointer<GDestroyNotify?>! = nil) -> Bool {
        let result = g_object_replace_data(object_ptr, key, oldval, newval, destroy, oldDestroy)
        let rv = ((result) != 0)
        return rv
    }

    /// Compares the user data for the key `quark` on `object` with
    /// `oldval`, and if they are the same, replaces `oldval` with
    /// `newval`.
    /// 
    /// This is like a typical atomic compare-and-exchange
    /// operation, for user data on an object.
    /// 
    /// If the previous value was replaced then ownership of the
    /// old value (`oldval`) is passed to the caller, including
    /// the registered destroy notify for it (passed out in `old_destroy`).
    /// It’s up to the caller to free this as needed, which may
    /// or may not include using `old_destroy` as sometimes replacement
    /// should not destroy the object in the normal way.
    @inlinable func replaceQdata(quark: GQuark, oldval: gpointer? = nil, newval: gpointer? = nil, destroy: GDestroyNotify? = nil, oldDestroy: UnsafeMutablePointer<GDestroyNotify?>! = nil) -> Bool {
        let result = g_object_replace_qdata(object_ptr, quark, oldval, newval, destroy, oldDestroy)
        let rv = ((result) != 0)
        return rv
    }

    /// Releases all references to other objects. This can be used to break
    /// reference cycles.
    /// 
    /// This function should only be called from object system implementations.
    @inlinable func runDispose() {
        
        g_object_run_dispose(object_ptr)
        
    }


    // *** set() is not available because it has a varargs (...) parameter!


    /// Each object carries around a table of associations from
    /// strings to pointers.  This function lets you set an association.
    /// 
    /// If the object already had an association with that name,
    /// the old association will be destroyed.
    /// 
    /// Internally, the `key` is converted to a `GQuark` using `g_quark_from_string()`.
    /// This means a copy of `key` is kept permanently (even after `object` has been
    /// finalized) — so it is recommended to only use a small, bounded set of values
    /// for `key` in your program, to avoid the `GQuark` storage growing unbounded.
    @inlinable func setData(key: UnsafePointer<gchar>!, data: gpointer? = nil) {
        
        g_object_set_data(object_ptr, key, data)
        
    }

    /// Like `g_object_set_data()` except it adds notification
    /// for when the association is destroyed, either by setting it
    /// to a different value or when the object is destroyed.
    /// 
    /// Note that the `destroy` callback is not called if `data` is `nil`.
    @inlinable func setDataFull(key: UnsafePointer<gchar>!, data: gpointer? = nil, destroy: GDestroyNotify? = nil) {
        
        g_object_set_data_full(object_ptr, key, data, destroy)
        
    }

    /// Sets a property on an object.
    @inlinable func setProperty<ValueT: ValueProtocol>(propertyName: UnsafePointer<gchar>!, value: ValueT) {
        
        g_object_set_property(object_ptr, propertyName, value.value_ptr)
        
    }

    /// This sets an opaque, named pointer on an object.
    /// The name is specified through a `GQuark` (retrieved e.g. via
    /// `g_quark_from_static_string()`), and the pointer
    /// can be gotten back from the `object` with `g_object_get_qdata()`
    /// until the `object` is finalized.
    /// Setting a previously set user data pointer, overrides (frees)
    /// the old pointer set, using `NULL` as pointer essentially
    /// removes the data stored.
    @inlinable func setQdata(quark: GQuark, data: gpointer? = nil) {
        
        g_object_set_qdata(object_ptr, quark, data)
        
    }

    /// This function works like `g_object_set_qdata()`, but in addition,
    /// a void (*destroy) (gpointer) function may be specified which is
    /// called with `data` as argument when the `object` is finalized, or
    /// the data is being overwritten by a call to `g_object_set_qdata()`
    /// with the same `quark`.
    @inlinable func setQdataFull(quark: GQuark, data: gpointer? = nil, destroy: GDestroyNotify? = nil) {
        
        g_object_set_qdata_full(object_ptr, quark, data, destroy)
        
    }

    /// Sets properties on an object.
    @inlinable func setValist(firstPropertyName: UnsafePointer<gchar>!, varArgs: CVaListPointer) {
        
        g_object_set_valist(object_ptr, firstPropertyName, varArgs)
        
    }

    /// Sets `n_properties` properties for an `object`.
    /// Properties to be set will be taken from `values`. All properties must be
    /// valid. Warnings will be emitted and undefined behaviour may result if invalid
    /// properties are passed in.
    @inlinable func setv(nProperties: Int, names: UnsafeMutablePointer<UnsafePointer<gchar>?>!, values: UnsafePointer<GValue>!) {
        
        g_object_setv(object_ptr, guint(nProperties), names, values)
        
    }

    /// Remove a specified datum from the object's data associations,
    /// without invoking the association's destroy handler.
    @inlinable func stealData(key: UnsafePointer<gchar>!) -> gpointer? {
        let result = g_object_steal_data(object_ptr, key)
        let rv = result
        return rv
    }

    /// This function gets back user data pointers stored via
    /// `g_object_set_qdata()` and removes the `data` from object
    /// without invoking its `destroy()` function (if any was
    /// set).
    /// Usually, calling this function is only required to update
    /// user data pointers with a destroy notifier, for example:
    /// (C Language Example):
    /// ```C
    /// void
    /// object_add_to_user_list (GObject     *object,
    ///                          const gchar *new_string)
    /// {
    ///   // the quark, naming the object data
    ///   GQuark quark_string_list = g_quark_from_static_string ("my-string-list");
    ///   // retrieve the old string list
    ///   GList *list = g_object_steal_qdata (object, quark_string_list);
    /// 
    ///   // prepend new string
    ///   list = g_list_prepend (list, g_strdup (new_string));
    ///   // this changed 'list', so we need to set it again
    ///   g_object_set_qdata_full (object, quark_string_list, list, free_string_list);
    /// }
    /// static void
    /// free_string_list (gpointer data)
    /// {
    ///   GList *node, *list = data;
    /// 
    ///   for (node = list; node; node = node->next)
    ///     g_free (node->data);
    ///   g_list_free (list);
    /// }
    /// ```
    /// Using `g_object_get_qdata()` in the above example, instead of
    /// `g_object_steal_qdata()` would have left the destroy function set,
    /// and thus the partial string list would have been freed upon
    /// `g_object_set_qdata_full()`.
    @inlinable func stealQdata(quark: GQuark) -> gpointer? {
        let result = g_object_steal_qdata(object_ptr, quark)
        let rv = result
        return rv
    }

    /// If `object` is floating, sink it.  Otherwise, do nothing.
    /// 
    /// In other words, this function will convert a floating reference (if
    /// present) into a full reference.
    /// 
    /// Typically you want to use `g_object_ref_sink()` in order to
    /// automatically do the correct thing with respect to floating or
    /// non-floating references, but there is one specific scenario where
    /// this function is helpful.
    /// 
    /// The situation where this function is helpful is when creating an API
    /// that allows the user to provide a callback function that returns a
    /// GObject. We certainly want to allow the user the flexibility to
    /// return a non-floating reference from this callback (for the case
    /// where the object that is being returned already exists).
    /// 
    /// At the same time, the API style of some popular GObject-based
    /// libraries (such as Gtk) make it likely that for newly-created GObject
    /// instances, the user can be saved some typing if they are allowed to
    /// return a floating reference.
    /// 
    /// Using this function on the return value of the user's callback allows
    /// the user to do whichever is more convenient for them. The caller will
    /// alway receives exactly one full reference to the value: either the
    /// one that was returned in the first place, or a floating reference
    /// that has been converted to a full reference.
    /// 
    /// This function has an odd interaction when combined with
    /// `g_object_ref_sink()` running at the same time in another thread on
    /// the same `GObject` instance. If `g_object_ref_sink()` runs first then
    /// the result will be that the floating reference is converted to a hard
    /// reference. If `g_object_take_ref()` runs first then the result will be
    /// that the floating reference is converted to a hard reference and an
    /// additional reference on top of that one is added. It is best to avoid
    /// this situation.
    @inlinable func takeRef() -> GLibObject.ObjectRef! {
        let result = g_object_take_ref(object_ptr)
        guard let rv = ObjectRef(gpointer: result) else { return nil }
        return rv
    }

    /// Reverts the effect of a previous call to
    /// `g_object_freeze_notify()`. The freeze count is decreased on `object`
    /// and when it reaches zero, queued "notify" signals are emitted.
    /// 
    /// Duplicate notifications for each property are squashed so that at most one
    /// `GObject::notify` signal is emitted for each property, in the reverse order
    /// in which they have been queued.
    /// 
    /// It is an error to call this function when the freeze count is zero.
    @inlinable func thawNotify() {
        
        g_object_thaw_notify(object_ptr)
        
    }

    /// Decreases the reference count of `object`. When its reference count
    /// drops to 0, the object is finalized (i.e. its memory is freed).
    /// 
    /// If the pointer to the `GObject` may be reused in future (for example, if it is
    /// an instance variable of another object), it is recommended to clear the
    /// pointer to `nil` rather than retain a dangling pointer to a potentially
    /// invalid `GObject` instance. Use `g_clear_object()` for this.
    @inlinable func unref() {
        
        g_object_unref(object_ptr)
        
    }

    /// This function essentially limits the life time of the `closure` to
    /// the life time of the object. That is, when the object is finalized,
    /// the `closure` is invalidated by calling `g_closure_invalidate()` on
    /// it, in order to prevent invocations of the closure with a finalized
    /// (nonexisting) object. Also, `g_object_ref()` and `g_object_unref()` are
    /// added as marshal guards to the `closure`, to ensure that an extra
    /// reference count is held on `object` during invocation of the
    /// `closure`.  Usually, this function will be called on closures that
    /// use this `object` as closure data.
    @inlinable func watch<ClosureT: ClosureProtocol>(closure: ClosureT) {
        
        g_object_watch_closure(object_ptr, closure.closure_ptr)
        
    }

    /// Adds a weak reference callback to an object. Weak references are
    /// used for notification when an object is disposed. They are called
    /// "weak references" because they allow you to safely hold a pointer
    /// to an object without calling `g_object_ref()` (`g_object_ref()` adds a
    /// strong reference, that is, forces the object to stay alive).
    /// 
    /// Note that the weak references created by this method are not
    /// thread-safe: they cannot safely be used in one thread if the
    /// object's last `g_object_unref()` might happen in another thread.
    /// Use `GWeakRef` if thread-safety is required.
    @inlinable func weakRef(notify: GWeakNotify?, data: gpointer? = nil) {
        
        g_object_weak_ref(object_ptr, notify, data)
        
    }

    /// Removes a weak reference callback to an object.
    @inlinable func weakUnref(notify: GWeakNotify?, data: gpointer? = nil) {
        
        g_object_weak_unref(object_ptr, notify, data)
        
    }

    /// A variant of `g_cclosure_new()` which uses `object` as `user_data` and
    /// calls `g_object_watch_closure()` on `object` and the created
    /// closure. This function is useful when you have a callback closely
    /// associated with a `GObject`, and want the callback to no longer run
    /// after the object is is freed.
    @inlinable func cclosureNewObject(callbackFunc: @escaping GCallback) -> GLibObject.ClosureRef! {
        let result = g_cclosure_new_object(callbackFunc, object_ptr)
        let rv = ClosureRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// A variant of `g_cclosure_new_swap()` which uses `object` as `user_data`
    /// and calls `g_object_watch_closure()` on `object` and the created
    /// closure. This function is useful when you have a callback closely
    /// associated with a `GObject`, and want the callback to no longer run
    /// after the object is is freed.
    @inlinable func cclosureNewObjectSwap(callbackFunc: @escaping GCallback) -> GLibObject.ClosureRef! {
        let result = g_cclosure_new_object_swap(callbackFunc, object_ptr)
        let rv = ClosureRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Disconnects a handler from `instance` so it will not be called during
    /// any future or currently ongoing emissions of the signal it has been
    /// connected to. The `handler_id_ptr` is then set to zero, which is never a valid handler ID value (see `g_signal_connect()`).
    /// 
    /// If the handler ID is 0 then this function does nothing.
    /// 
    /// There is also a macro version of this function so that the code
    /// will be inlined.
    @inlinable func clearSignalHandler(handlerIDPtr: UnsafeMutablePointer<gulong>!) {
        
        g_clear_signal_handler(handlerIDPtr, object_ptr)
        
    }

    /// Connects a closure to a signal for a particular object.
    @inlinable func signalConnectClosure<ClosureT: ClosureProtocol>(detailedSignal: UnsafePointer<gchar>!, closure: ClosureT, after: Bool) -> Int {
        let result = g_signal_connect_closure(object_ptr, detailedSignal, closure.closure_ptr, gboolean((after) ? 1 : 0))
        let rv = Int(result)
        return rv
    }

    /// Connects a closure to a signal for a particular object.
    @inlinable func signalConnectClosureByID<ClosureT: ClosureProtocol>(signalID: Int, detail: GQuark, closure: ClosureT, after: Bool) -> Int {
        let result = g_signal_connect_closure_by_id(object_ptr, guint(signalID), detail, closure.closure_ptr, gboolean((after) ? 1 : 0))
        let rv = Int(result)
        return rv
    }

    /// Connects a `GCallback` function to a signal for a particular object. Similar
    /// to `g_signal_connect()`, but allows to provide a `GClosureNotify` for the data
    /// which will be called when the signal handler is disconnected and no longer
    /// used. Specify `connect_flags` if you need ``..._after()`` or
    /// ``..._swapped()`` variants of this function.
    @inlinable func signalConnectData(detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, data: gpointer? = nil, destroyData: GClosureNotify? = nil, connectFlags: ConnectFlags) -> Int {
        let result = g_signal_connect_data(object_ptr, detailedSignal, cHandler, data, destroyData, connectFlags.value)
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
    @inlinable func signalConnectObject<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, connectFlags: ConnectFlags) -> Int {
        let result = g_signal_connect_object(instance._ptr, detailedSignal, cHandler, object_ptr, connectFlags.value)
        let rv = Int(result)
        return rv
    }


    // *** signalEmit() is not available because it has a varargs (...) parameter!



    // *** signalEmitByName() is not available because it has a varargs (...) parameter!


    /// Returns the invocation hint of the innermost signal emission of instance.
    @inlinable func signalGetInvocationHint() -> GLibObject.SignalInvocationHintRef! {
        let result = g_signal_get_invocation_hint(object_ptr)
        let rv = SignalInvocationHintRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Blocks a handler of an instance so it will not be called during any
    /// signal emissions unless it is unblocked again. Thus "blocking" a
    /// signal handler means to temporarily deactivate it, a signal handler
    /// has to be unblocked exactly the same amount of times it has been
    /// blocked before to become active again.
    /// 
    /// The `handler_id` has to be a valid signal handler id, connected to a
    /// signal of `instance`.
    @inlinable func signalHandlerBlock(handlerID: Int) {
        
        g_signal_handler_block(object_ptr, gulong(handlerID))
        
    }

    /// Disconnects a handler from an instance so it will not be called during
    /// any future or currently ongoing emissions of the signal it has been
    /// connected to. The `handler_id` becomes invalid and may be reused.
    /// 
    /// The `handler_id` has to be a valid signal handler id, connected to a
    /// signal of `instance`.
    @inlinable func signalHandlerDisconnect(handlerID: Int) {
        
        g_signal_handler_disconnect(object_ptr, gulong(handlerID))
        
    }

    /// Finds the first signal handler that matches certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// The match `mask` has to be non-0 for successful matches.
    /// If no handler was found, 0 is returned.
    @inlinable func signalHandlerFind(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
            let result = g_signal_handler_find(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
            return rv
    }
    /// Finds the first signal handler that matches certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// The match `mask` has to be non-0 for successful matches.
    /// If no handler was found, 0 is returned.
    @inlinable func signalHandlerFind<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handler_find(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Returns whether `handler_id` is the ID of a handler connected to `instance`.
    @inlinable func signalHandlerIsConnected(handlerID: Int) -> Bool {
        let result = g_signal_handler_is_connected(object_ptr, gulong(handlerID))
        let rv = ((result) != 0)
        return rv
    }

    /// Undoes the effect of a previous `g_signal_handler_block()` call.  A
    /// blocked handler is skipped during signal emissions and will not be
    /// invoked, unblocking it (for exactly the amount of times it has been
    /// blocked before) reverts its "blocked" state, so the handler will be
    /// recognized by the signal system and is called upon future or
    /// currently ongoing signal emissions (since the order in which
    /// handlers are called during signal emissions is deterministic,
    /// whether the unblocked handler in question is called as part of a
    /// currently ongoing emission depends on how far that emission has
    /// proceeded yet).
    /// 
    /// The `handler_id` has to be a valid id of a signal handler that is
    /// connected to a signal of `instance` and is currently blocked.
    @inlinable func signalHandlerUnblock(handlerID: Int) {
        
        g_signal_handler_unblock(object_ptr, gulong(handlerID))
        
    }

    /// Blocks all handlers on an instance that match a certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of blocked handlers
    /// otherwise.
    @inlinable func signalHandlersBlockMatched(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
            let result = g_signal_handlers_block_matched(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
            return rv
    }
    /// Blocks all handlers on an instance that match a certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of blocked handlers
    /// otherwise.
    @inlinable func signalHandlersBlockMatched<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handlers_block_matched(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Destroy all signal handlers of a type instance. This function is
    /// an implementation detail of the `GObject` dispose implementation,
    /// and should not be used outside of the type system.
    @inlinable func signalHandlersDestroy() {
        
        g_signal_handlers_destroy(object_ptr)
        
    }

    /// Disconnects all handlers on an instance that match a certain
    /// selection criteria. The criteria mask is passed as an OR-ed
    /// combination of `GSignalMatchType` flags, and the criteria values are
    /// passed as arguments.  Passing at least one of the
    /// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
    /// `G_SIGNAL_MATCH_DATA` match flags is required for successful
    /// matches.  If no handlers were found, 0 is returned, the number of
    /// disconnected handlers otherwise.
    @inlinable func signalHandlersDisconnectMatched(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
            let result = g_signal_handlers_disconnect_matched(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
            return rv
    }
    /// Disconnects all handlers on an instance that match a certain
    /// selection criteria. The criteria mask is passed as an OR-ed
    /// combination of `GSignalMatchType` flags, and the criteria values are
    /// passed as arguments.  Passing at least one of the
    /// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
    /// `G_SIGNAL_MATCH_DATA` match flags is required for successful
    /// matches.  If no handlers were found, 0 is returned, the number of
    /// disconnected handlers otherwise.
    @inlinable func signalHandlersDisconnectMatched<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handlers_disconnect_matched(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Unblocks all handlers on an instance that match a certain selection
    /// criteria. The criteria mask is passed as an OR-ed combination of
    /// `GSignalMatchType` flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of unblocked handlers
    /// otherwise. The match criteria should not apply to any handlers that are
    /// not currently blocked.
    @inlinable func signalHandlersUnblockMatched(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
            let result = g_signal_handlers_unblock_matched(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
            return rv
    }
    /// Unblocks all handlers on an instance that match a certain selection
    /// criteria. The criteria mask is passed as an OR-ed combination of
    /// `GSignalMatchType` flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of unblocked handlers
    /// otherwise. The match criteria should not apply to any handlers that are
    /// not currently blocked.
    @inlinable func signalHandlersUnblockMatched<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handlers_unblock_matched(object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Returns whether there are any handlers connected to `instance` for the
    /// given signal id and detail.
    /// 
    /// If `detail` is 0 then it will only match handlers that were connected
    /// without detail.  If `detail` is non-zero then it will match handlers
    /// connected both without detail and with the given detail.  This is
    /// consistent with how a signal emitted with `detail` would be delivered
    /// to those handlers.
    /// 
    /// Since 2.46 this also checks for a non-default class closure being
    /// installed, as this is basically always what you want.
    /// 
    /// One example of when you might use this is when the arguments to the
    /// signal are difficult to compute. A class implementor may opt to not
    /// emit the signal if no one is attached anyway, thus saving the cost
    /// of building the arguments.
    @inlinable func signalHasHandlerPending(signalID: Int, detail: GQuark, mayBeBlocked: Bool) -> Bool {
        let result = g_signal_has_handler_pending(object_ptr, guint(signalID), detail, gboolean((mayBeBlocked) ? 1 : 0))
        let rv = ((result) != 0)
        return rv
    }

    /// Stops a signal's current emission.
    /// 
    /// This will prevent the default method from running, if the signal was
    /// `G_SIGNAL_RUN_LAST` and you connected normally (i.e. without the "after"
    /// flag).
    /// 
    /// Prints a warning if used on a signal which isn't being emitted.
    @inlinable func signalStopEmission(signalID: Int, detail: GQuark) {
        
        g_signal_stop_emission(object_ptr, guint(signalID), detail)
        
    }

    /// Stops a signal's current emission.
    /// 
    /// This is just like `g_signal_stop_emission()` except it will look up the
    /// signal id for you.
    @inlinable func signalStopEmissionByName(detailedSignal: UnsafePointer<gchar>!) {
        
        g_signal_stop_emission_by_name(object_ptr, detailedSignal)
        
    }
    /// Checks whether `object` has a [floating](#floating-ref) reference.
    @inlinable var isFloating: Bool {
        /// Checks whether `object` has a [floating](#floating-ref) reference.
        get {
            let result = g_object_is_floating(object_ptr)
        let rv = ((result) != 0)
            return rv
        }
    }

    @inlinable var gTypeInstance: GTypeInstance {
        get {
            let rv = object_ptr.pointee.g_type_instance
    return rv
        }
    }

    // var refCount is unavailable because ref_count is private

    // var qdata is unavailable because qdata is private

}



