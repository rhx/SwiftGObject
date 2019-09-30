import CGLib
import GLib

/// A callback function used by the type system to finalize those portions
/// of a derived types class structure that were setup from the corresponding
/// GBaseInitFunc() function. Class finalization basically works the inverse
/// way in which class initialization is performed.
/// See GClassInitFunc() for a discussion of the class initialization process.
public typealias BaseFinalizeFunc = GBaseFinalizeFunc

/// A callback function used by the type system to do base initialization
/// of the class structures of derived types. It is called as part of the
/// initialization process of all derived classes and should reallocate
/// or reset all dynamic class members copied over from the parent class.
/// For example, class members (such as strings) that are not sufficiently
/// handled by a plain memory copy of the parent class into the derived class
/// have to be altered. See GClassInitFunc() for a discussion of the class
/// initialization process.
public typealias BaseInitFunc = GBaseInitFunc

/// A function to be called to transform `from_value` to `to_value`. If
/// this is the `transform_to` function of a binding, then `from_value`
/// is the `source_property` on the `source` object, and `to_value` is the
/// `target_property` on the `target` object. If this is the
/// `transform_from` function of a `G_BINDING_BIDIRECTIONAL` binding,
/// then those roles are reversed.
public typealias BindingTransformFunc = GBindingTransformFunc

/// This function is provided by the user and should produce a copy
/// of the passed in boxed structure.
public typealias BoxedCopyFunc = GBoxedCopyFunc

/// This function is provided by the user and should free the boxed
/// structure passed.
public typealias BoxedFreeFunc = GBoxedFreeFunc

/// The type used for callback functions in structure definitions and function
/// signatures. This doesn't mean that all callback functions must take no
/// parameters and return void. The required signature of a callback function
/// is determined by the context in which is used (e.g. the signal to which it
/// is connected). Use G_CALLBACK() to cast the callback function to a `GCallback`.
public typealias Callback = GCallback

/// A callback function used by the type system to finalize a class.
/// This function is rarely needed, as dynamically allocated class resources
/// should be handled by GBaseInitFunc() and GBaseFinalizeFunc().
/// Also, specification of a GClassFinalizeFunc() in the `GTypeInfo`
/// structure of a static type is invalid, because classes of static types
/// will never be finalized (they are artificially kept alive when their
/// reference count drops to zero).
public typealias ClassFinalizeFunc = GClassFinalizeFunc

/// A callback function used by the type system to initialize the class
/// of a specific type. This function should initialize all static class
/// members.
/// 
/// The initialization process of a class involves:
/// 
/// - Copying common members from the parent class over to the
///   derived class structure.
/// - Zero initialization of the remaining members not copied
///   over from the parent class.
/// - Invocation of the GBaseInitFunc() initializers of all parent
///   types and the class' type.
/// - Invocation of the class' GClassInitFunc() initializer.
/// 
/// Since derived classes are partially initialized through a memory copy
/// of the parent class, the general rule is that GBaseInitFunc() and
/// GBaseFinalizeFunc() should take care of necessary reinitialization
/// and release of those class members that were introduced by the type
/// that specified these GBaseInitFunc()/GBaseFinalizeFunc().
/// GClassInitFunc() should only care about initializing static
/// class members, while dynamic class members (such as allocated strings
/// or reference counted resources) are better handled by a GBaseInitFunc()
/// for this type, so proper initialization of the dynamic class members
/// is performed for class initialization of derived types as well.
/// 
/// An example may help to correspond the intend of the different class
/// initializers:
/// 
/// (C Language Example):
/// ```C
/// typedef struct {
///   GObjectClass parent_class;
///   gint         static_integer;
///   gchar       *dynamic_string;
/// } TypeAClass;
/// static void
/// type_a_base_class_init (TypeAClass *class)
/// {
///   class->dynamic_string = g_strdup ("some string");
/// }
/// static void
/// type_a_base_class_finalize (TypeAClass *class)
/// {
///   g_free (class->dynamic_string);
/// }
/// static void
/// type_a_class_init (TypeAClass *class)
/// {
///   class->static_integer = 42;
/// }
/// 
/// typedef struct {
///   TypeAClass   parent_class;
///   gfloat       static_float;
///   GString     *dynamic_gstring;
/// } TypeBClass;
/// static void
/// type_b_base_class_init (TypeBClass *class)
/// {
///   class->dynamic_gstring = g_string_new ("some other string");
/// }
/// static void
/// type_b_base_class_finalize (TypeBClass *class)
/// {
///   g_string_free (class->dynamic_gstring);
/// }
/// static void
/// type_b_class_init (TypeBClass *class)
/// {
///   class->static_float = 3.14159265358979323846;
/// }
/// ```
/// 
/// Initialization of TypeBClass will first cause initialization of
/// TypeAClass (derived classes reference their parent classes, see
/// g_type_class_ref() on this).
/// 
/// Initialization of TypeAClass roughly involves zero-initializing its fields,
/// then calling its GBaseInitFunc() type_a_base_class_init() to allocate
/// its dynamic members (dynamic_string), and finally calling its GClassInitFunc()
/// type_a_class_init() to initialize its static members (static_integer).
/// The first step in the initialization process of TypeBClass is then
/// a plain memory copy of the contents of TypeAClass into TypeBClass and
/// zero-initialization of the remaining fields in TypeBClass.
/// The dynamic members of TypeAClass within TypeBClass now need
/// reinitialization which is performed by calling type_a_base_class_init()
/// with an argument of TypeBClass.
/// 
/// After that, the GBaseInitFunc() of TypeBClass, type_b_base_class_init()
/// is called to allocate the dynamic members of TypeBClass (dynamic_gstring),
/// and finally the GClassInitFunc() of TypeBClass, type_b_class_init(),
/// is called to complete the initialization process with the static members
/// (static_float).
/// 
/// Corresponding finalization counter parts to the GBaseInitFunc() functions
/// have to be provided to release allocated resources at class finalization
/// time.
public typealias ClassInitFunc = GClassInitFunc

/// The type used for marshaller functions.
public typealias ClosureMarshal = GClosureMarshal

/// The type used for the various notification callbacks which can be registered
/// on closures.
public typealias ClosureNotify = GClosureNotify

/// A callback function used by the type system to initialize a new
/// instance of a type. This function initializes all instance members and
/// allocates any resources required by it.
/// 
/// Initialization of a derived instance involves calling all its parent
/// types instance initializers, so the class member of the instance
/// is altered during its initialization to always point to the class that
/// belongs to the type the current initializer was introduced for.
/// 
/// The extended members of `instance` are guaranteed to have been filled with
/// zeros before this function is called.
public typealias InstanceInitFunc = GInstanceInitFunc

/// A callback function used by the type system to finalize an interface.
/// This function should destroy any internal data and release any resources
/// allocated by the corresponding GInterfaceInitFunc() function.
public typealias InterfaceFinalizeFunc = GInterfaceFinalizeFunc

/// A callback function used by the type system to initialize a new
/// interface.  This function should initialize all internal data and
/// allocate any resources required by the interface.
/// 
/// The members of `iface_data` are guaranteed to have been filled with
/// zeros before this function is called.
public typealias InterfaceInitFunc = GInterfaceInitFunc

/// The type of the `finalize` function of `GObjectClass`.
public typealias ObjectFinalizeFunc = GObjectFinalizeFunc

/// The type of the `get_property` function of `GObjectClass`.
public typealias ObjectGetPropertyFunc = GObjectGetPropertyFunc

/// The type of the `set_property` function of `GObjectClass`.
public typealias ObjectSetPropertyFunc = GObjectSetPropertyFunc

/// The signal accumulator is a special callback function that can be used
/// to collect return values of the various callbacks that are called
/// during a signal emission. The signal accumulator is specified at signal
/// creation time, if it is left `nil`, no accumulation of callback return
/// values is performed. The return value of signal emissions is then the
/// value returned by the last callback.
public typealias SignalAccumulator = GSignalAccumulator

/// A simple function pointer to get invoked when the signal is emitted. This
/// allows you to tie a hook to the signal type, so that it will trap all
/// emissions of that signal, from any object.
/// 
/// You may not attach these to signals created with the `G_SIGNAL_NO_HOOKS` flag.
public typealias SignalEmissionHook = GSignalEmissionHook

/// A callback function used for notification when the state
/// of a toggle reference changes. See g_object_add_toggle_ref().
public typealias ToggleNotify = GToggleNotify

/// A callback function which is called when the reference count of a class
/// drops to zero. It may use g_type_class_ref() to prevent the class from
/// being freed. You should not call g_type_class_unref() from a
/// `GTypeClassCacheFunc` function to prevent infinite recursion, use
/// g_type_class_unref_uncached() instead.
/// 
/// The functions have to check the class id passed in to figure
/// whether they actually want to cache the class of this type, since all
/// classes are routed through the same `GTypeClassCacheFunc` chain.
public typealias TypeClassCacheFunc = GTypeClassCacheFunc

/// A callback called after an interface vtable is initialized.
/// See g_type_add_interface_check().
public typealias TypeInterfaceCheckFunc = GTypeInterfaceCheckFunc

/// The type of the `complete_interface_info` function of `GTypePluginClass`.
public typealias TypePluginCompleteInterfaceInfo = GTypePluginCompleteInterfaceInfo

/// The type of the `complete_type_info` function of `GTypePluginClass`.
public typealias TypePluginCompleteTypeInfo = GTypePluginCompleteTypeInfo

/// The type of the `unuse_plugin` function of `GTypePluginClass`.
public typealias TypePluginUnuse = GTypePluginUnuse

/// The type of the `use_plugin` function of `GTypePluginClass`, which gets called
/// to increase the use count of `plugin`.
public typealias TypePluginUse = GTypePluginUse

/// This is the signature of va_list marshaller functions, an optional
/// marshaller that can be used in some situations to avoid
/// marshalling the signal argument into GValues.
public typealias VaClosureMarshal = GVaClosureMarshal

/// The type of value transformation functions which can be registered with
/// g_value_register_transform_func().
/// 
/// `dest_value` will be initialized to the correct destination type.
public typealias ValueTransform = GValueTransform

/// A `GWeakNotify` function can be added to an object as a callback that gets
/// triggered when the object is finalized. Since the object is already being
/// finalized when the `GWeakNotify` is called, there's not much you could do
/// with the object, apart from e.g. using its address as hash-index or the like.
public typealias WeakNotify = GWeakNotify
