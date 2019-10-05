import CGLib
import GLib

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GObjectClass` instance.
    var _ptr: UnsafeMutablePointer<GObjectClass> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ObjectClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GObjectClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ObjectClassProtocol`
    init<T: ObjectClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ObjectClass` type acts as an owner of an underlying `GObjectClass` instance.
/// It provides the methods that can operate on this data type through `ObjectClassProtocol` conformance.
/// Use `ObjectClass` as a strong reference or owner of a `GObjectClass` instance.
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
open class ObjectClass: ObjectClassProtocol {
    /// Untyped pointer to the underlying `GObjectClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ObjectClass` instance.
    public init(_ op: UnsafeMutablePointer<GObjectClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ObjectClassProtocol`
    /// `GObjectClass` does not allow reference counting.
    public convenience init<T: ObjectClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GObjectClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GObjectClass`.
    deinit {
        // no reference counting for GObjectClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GObjectClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GObjectClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GObjectClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GObjectClass>(opaquePointer))
    }



}

// MARK: - no ObjectClass properties

// MARK: - no signals


public extension ObjectClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObjectClass` instance.
    var _ptr: UnsafeMutablePointer<GObjectClass> { return ptr.assumingMemoryBound(to: GObjectClass.self) }

    /// Looks up the `GParamSpec` for a property of a class.
    func findProperty(propertyName property_name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_object_class_find_property(cast(_ptr), property_name)
        return cast(rv)
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
    func installProperties(nPspecs n_pspecs: CUnsignedInt, pspecs: UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>) {
        g_object_class_install_properties(cast(_ptr), guint(n_pspecs), cast(pspecs))
    
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
    func installProperty(propertyID property_id: CUnsignedInt, pspec: ParamSpecProtocol) {
        g_object_class_install_property(cast(_ptr), guint(property_id), cast(pspec.ptr))
    
    }

    /// Get an array of `GParamSpec`* for all properties of a class.
    func listProperties(nProperties n_properties: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<UnsafeMutablePointer<GParamSpec>>! {
        let rv = g_object_class_list_properties(cast(_ptr), cast(n_properties))
        return cast(rv)
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
    func overrideProperty(propertyID property_id: CUnsignedInt, name: UnsafePointer<gchar>) {
        g_object_class_override_property(cast(_ptr), guint(property_id), name)
    
    }
}



