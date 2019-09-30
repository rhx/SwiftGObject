import CGLib
import GLib

/// Provide a copy of a boxed structure `src_boxed` which is of type `boxed_type`.
public func boxedCopy(boxedType boxed_type: GType, srcBoxed src_boxed: gconstpointer) -> UnsafeMutableRawPointer! {
    let rv = g_boxed_copy(boxed_type, cast(src_boxed))
    return cast(rv)
}




/// Free the boxed structure `boxed` which is of type `boxed_type`.
public func boxedFree(boxedType boxed_type: GType, boxed: UnsafeMutableRawPointer) {
    g_boxed_free(boxed_type, cast(boxed))

}




/// This function creates a new `G_TYPE_BOXED` derived type id for a new
/// boxed type with name `name`. Boxed type handling functions have to be
/// provided to copy and free opaque boxed structures of this type.
public func boxedTypeRegisterStatic(name: UnsafePointer<gchar>, boxedCopy boxed_copy: @escaping BoxedCopyFunc, boxedFree boxed_free: @escaping BoxedFreeFunc) -> GType {
    let rv = g_boxed_type_register_static(name, boxed_copy, boxed_free)
    return rv
}




/// A `GClosureMarshal` function for use with signals with handlers that
/// take two boxed pointers as arguments and return a boolean.  If you
/// have such a signal, you will probably also need to use an
/// accumulator, such as g_signal_accumulator_true_handled().
public func cclosureMarshalBOOLEAN_BOXEDBOXED(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_BOOLEAN__BOXED_BOXED(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
/// denotes a flags type.
public func cclosureMarshalBOOLEAN_FLAGS(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_BOOLEAN__FLAGS(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
public func cclosureMarshalSTRING_OBJECTPOINTER(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_STRING__OBJECT_POINTER(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
public func cclosureMarshalVOID_BOOLEAN(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__BOOLEAN(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
public func cclosureMarshalVOID_BOXED(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__BOXED(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
public func cclosureMarshalVOID_CHAR(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__CHAR(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
public func cclosureMarshalVOID_DOUBLE(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__DOUBLE(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
public func cclosureMarshalVOID_ENUM(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__ENUM(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
public func cclosureMarshalVOID_FLAGS(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__FLAGS(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
public func cclosureMarshalVOID_FLOAT(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__FLOAT(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
public func cclosureMarshalVOID_INT(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__INT(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
public func cclosureMarshalVOID_LONG(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__LONG(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
public func cclosureMarshalVOID_OBJECT(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__OBJECT(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
public func cclosureMarshalVOID_PARAM(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__PARAM(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
public func cclosureMarshalVOID_POINTER(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__POINTER(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
public func cclosureMarshalVOID_STRING(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__STRING(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
public func cclosureMarshalVOID_UCHAR(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__UCHAR(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
public func cclosureMarshalVOID_UINT(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__UINT(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
public func cclosureMarshalVOID_UINTPOINTER(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__UINT_POINTER(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
public func cclosureMarshalVOID_ULONG(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__ULONG(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
public func cclosureMarshalVOID_VARIANT(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__VARIANT(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gpointer user_data)`.
public func cclosureMarshalVOID_VOID(closure: ClosureProtocol, returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_VOID__VOID(cast(closure.ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// A generic marshaller function implemented via
/// [libffi](http://sourceware.org/libffi/).
/// 
/// Normally this function is not passed explicitly to g_signal_new(),
/// but used automatically by GLib when specifying a `nil` marshaller.
public func cclosureMarshalGeneric(closure: ClosureProtocol, returnGvalue return_gvalue: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
    g_cclosure_marshal_generic(cast(closure.ptr), cast(return_gvalue.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))

}




/// Creates a new closure which invokes `callback_func` with `user_data` as
/// the last parameter.
/// 
/// `destroy_data` will be called as a finalize notifier on the `GClosure`.
public func cclosureNew(callbackFunc callback_func: @escaping Callback, userData user_data: UnsafeMutableRawPointer, destroyData destroy_data: @escaping ClosureNotify) -> UnsafeMutablePointer<GClosure>! {
    let rv = g_cclosure_new(callback_func, cast(user_data), destroy_data)
    return cast(rv)
}




/// A variant of g_cclosure_new() which uses `object` as `user_data` and
/// calls g_object_watch_closure() on `object` and the created
/// closure. This function is useful when you have a callback closely
/// associated with a `GObject`, and want the callback to no longer run
/// after the object is is freed.
public func cclosureNewObject(callbackFunc callback_func: @escaping Callback, object: ObjectProtocol) -> UnsafeMutablePointer<GClosure>! {
    let rv = g_cclosure_new_object(callback_func, cast(object.ptr))
    return cast(rv)
}




/// A variant of g_cclosure_new_swap() which uses `object` as `user_data`
/// and calls g_object_watch_closure() on `object` and the created
/// closure. This function is useful when you have a callback closely
/// associated with a `GObject`, and want the callback to no longer run
/// after the object is is freed.
public func cclosureNewObjectSwap(callbackFunc callback_func: @escaping Callback, object: ObjectProtocol) -> UnsafeMutablePointer<GClosure>! {
    let rv = g_cclosure_new_object_swap(callback_func, cast(object.ptr))
    return cast(rv)
}




/// Creates a new closure which invokes `callback_func` with `user_data` as
/// the first parameter.
/// 
/// `destroy_data` will be called as a finalize notifier on the `GClosure`.
public func cclosureNewSwap(callbackFunc callback_func: @escaping Callback, userData user_data: UnsafeMutableRawPointer, destroyData destroy_data: @escaping ClosureNotify) -> UnsafeMutablePointer<GClosure>! {
    let rv = g_cclosure_new_swap(callback_func, cast(user_data), destroy_data)
    return cast(rv)
}




/// Clears a reference to a `GObject`.
/// 
/// `object_ptr` must not be `nil`.
/// 
/// If the reference is `nil` then this function does nothing.
/// Otherwise, the reference count of the object is decreased and the
/// pointer is set to `nil`.
/// 
/// A macro is also included that allows this function to be used without
/// pointer casts.
public func clearObject(objectPtr object_ptr: ObjectProtocol) {
    g_clear_object(cast(object_ptr.ptr))

}




/// Disconnects a handler from `instance` so it will not be called during
/// any future or currently ongoing emissions of the signal it has been
/// connected to. The `handler_id_ptr` is then set to zero, which is never a valid handler ID value (see g_signal_connect()).
/// 
/// If the handler ID is 0 then this function does nothing.
/// 
/// A macro is also included that allows this function to be used without
/// pointer casts.
public func clearSignalHandler(handlerIDPtr handler_id_ptr: UnsafeMutablePointer<CUnsignedLong>, instance: ObjectProtocol) {
    g_clear_signal_handler(cast(handler_id_ptr), cast(instance.ptr))

}




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
public func enumCompleteTypeInfo(gEnumType g_enum_type: GType, info: TypeInfoProtocol, constValues const_values: EnumValueProtocol) {
    g_enum_complete_type_info(g_enum_type, cast(info.ptr), cast(const_values.ptr))

}




/// Returns the `GEnumValue` for a value.
public func enumGetValue(enumClass enum_class: EnumClassProtocol, value: CInt) -> UnsafeMutablePointer<GEnumValue>! {
    let rv = g_enum_get_value(cast(enum_class.ptr), gint(value))
    return cast(rv)
}




/// Looks up a `GEnumValue` by name.
public func enumGetValueByName(enumClass enum_class: EnumClassProtocol, name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GEnumValue>! {
    let rv = g_enum_get_value_by_name(cast(enum_class.ptr), name)
    return cast(rv)
}




/// Looks up a `GEnumValue` by nickname.
public func enumGetValueByNick(enumClass enum_class: EnumClassProtocol, nick: UnsafePointer<gchar>) -> UnsafeMutablePointer<GEnumValue>! {
    let rv = g_enum_get_value_by_nick(cast(enum_class.ptr), nick)
    return cast(rv)
}




/// Registers a new static enumeration type with the name `name`.
/// 
/// It is normally more convenient to let [glib-mkenums][glib-mkenums],
/// generate a my_enum_get_type() function from a usual C enumeration
/// definition  than to write one yourself using g_enum_register_static().
public func enumRegisterStatic(name: UnsafePointer<gchar>, constStaticValues const_static_values: EnumValueProtocol) -> GType {
    let rv = g_enum_register_static(name, cast(const_static_values.ptr))
    return rv
}




/// Pretty-prints `value` in the form of the enum’s name.
/// 
/// This is intended to be used for debugging purposes. The format of the output
/// may change in the future.
public func enumToString(gEnumType g_enum_type: GType, value: CInt) -> String! {
    let rv = g_enum_to_string(g_enum_type, gint(value))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// This function is meant to be called from the complete_type_info()
/// function of a `GTypePlugin` implementation, see the example for
/// g_enum_complete_type_info() above.
public func flagsCompleteTypeInfo(gFlagsType g_flags_type: GType, info: TypeInfoProtocol, constValues const_values: FlagsValueProtocol) {
    g_flags_complete_type_info(g_flags_type, cast(info.ptr), cast(const_values.ptr))

}




/// Returns the first `GFlagsValue` which is set in `value`.
public func flagsGetFirstValue(flagsClass flags_class: FlagsClassProtocol, value: CUnsignedInt) -> UnsafeMutablePointer<GFlagsValue>! {
    let rv = g_flags_get_first_value(cast(flags_class.ptr), guint(value))
    return cast(rv)
}




/// Looks up a `GFlagsValue` by name.
public func flagsGetValueByName(flagsClass flags_class: FlagsClassProtocol, name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GFlagsValue>! {
    let rv = g_flags_get_value_by_name(cast(flags_class.ptr), name)
    return cast(rv)
}




/// Looks up a `GFlagsValue` by nickname.
public func flagsGetValueByNick(flagsClass flags_class: FlagsClassProtocol, nick: UnsafePointer<gchar>) -> UnsafeMutablePointer<GFlagsValue>! {
    let rv = g_flags_get_value_by_nick(cast(flags_class.ptr), nick)
    return cast(rv)
}




/// Registers a new static flags type with the name `name`.
/// 
/// It is normally more convenient to let [glib-mkenums][glib-mkenums]
/// generate a my_flags_get_type() function from a usual C enumeration
/// definition than to write one yourself using g_flags_register_static().
public func flagsRegisterStatic(name: UnsafePointer<gchar>, constStaticValues const_static_values: FlagsValueProtocol) -> GType {
    let rv = g_flags_register_static(name, cast(const_static_values.ptr))
    return rv
}




/// Pretty-prints `value` in the form of the flag names separated by ` | ` and
/// sorted. Any extra bits will be shown at the end as a hexadecimal number.
/// 
/// This is intended to be used for debugging purposes. The format of the output
/// may change in the future.
public func flagsToString(flagsType flags_type: GType, value: CUnsignedInt) -> String! {
    let rv = g_flags_to_string(flags_type, guint(value))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




public func gtypeGetType() -> GType {
    let rv = g_gtype_get_type()
    return rv
}




/// Creates a new `GParamSpecBoolean` instance specifying a `G_TYPE_BOOLEAN`
/// property. In many cases, it may be more appropriate to use an enum with
/// g_param_spec_enum(), both to improve code clarity by using explicitly named
/// values, and to allow for more values to be added in future without breaking
/// API.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecBoolean(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, defaultValue default_value: Bool, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_boolean(name, nick, blurb, gboolean(default_value ? 1 : 0), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecBoxed` instance specifying a `G_TYPE_BOXED`
/// derived property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecBoxed(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, boxedType boxed_type: GType, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_boxed(name, nick, blurb, boxed_type, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecChar` instance specifying a `G_TYPE_CHAR` property.
public func paramSpecChar(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: Int8, maximum: Int8, defaultValue default_value: Int8, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_char(name, nick, blurb, gint8(minimum), gint8(maximum), gint8(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecDouble` instance specifying a `G_TYPE_DOUBLE`
/// property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecDouble(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: gdouble, maximum: gdouble, defaultValue default_value: gdouble, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_double(name, nick, blurb, minimum, maximum, default_value, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecEnum` instance specifying a `G_TYPE_ENUM`
/// property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecEnum(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, enumType enum_type: GType, defaultValue default_value: CInt, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_enum(name, nick, blurb, enum_type, gint(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecFlags` instance specifying a `G_TYPE_FLAGS`
/// property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecFlags(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, flagsType flags_type: GType, defaultValue default_value: CUnsignedInt, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_flags(name, nick, blurb, flags_type, guint(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecFloat` instance specifying a `G_TYPE_FLOAT` property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecFloat(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: gfloat, maximum: gfloat, defaultValue default_value: gfloat, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_float(name, nick, blurb, minimum, maximum, default_value, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecGType` instance specifying a
/// `G_TYPE_GTYPE` property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecGtype(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, isAType is_a_type: GType, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_gtype(name, nick, blurb, is_a_type, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecInt` instance specifying a `G_TYPE_INT` property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecInt(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: CInt, maximum: CInt, defaultValue default_value: CInt, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_int(name, nick, blurb, gint(minimum), gint(maximum), gint(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecInt64` instance specifying a `G_TYPE_INT64` property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecInt64(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: Int64, maximum: Int64, defaultValue default_value: Int64, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_int64(name, nick, blurb, gint64(minimum), gint64(maximum), gint64(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecLong` instance specifying a `G_TYPE_LONG` property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecLong(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: CLong, maximum: CLong, defaultValue default_value: CLong, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_long(name, nick, blurb, glong(minimum), glong(maximum), glong(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecBoxed` instance specifying a `G_TYPE_OBJECT`
/// derived property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecObject(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, objectType object_type: GType, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_object(name, nick, blurb, object_type, flags)
    return cast(rv)
}




/// Creates a new property of type `GParamSpecOverride`. This is used
/// to direct operations to another paramspec, and will not be directly
/// useful unless you are implementing a new base type similar to GObject.
public func paramSpecOverride(name: UnsafePointer<gchar>, overridden: ParamSpecProtocol) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_override(name, cast(overridden.ptr))
    return cast(rv)
}




/// Creates a new `GParamSpecParam` instance specifying a `G_TYPE_PARAM`
/// property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecParam(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, paramType param_type: GType, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_param(name, nick, blurb, param_type, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecPointer` instance specifying a pointer property.
/// Where possible, it is better to use g_param_spec_object() or
/// g_param_spec_boxed() to expose memory management information.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecPointer(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_pointer(name, nick, blurb, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecPool`.
/// 
/// If `type_prefixing` is `true`, lookups in the newly created pool will
/// allow to specify the owner as a colon-separated prefix of the
/// property name, like "GtkContainer:border-width". This feature is
/// deprecated, so you should always set `type_prefixing` to `false`.
public func paramSpecPoolNew(typePrefixing type_prefixing: Bool) -> UnsafeMutablePointer<GParamSpecPool>! {
    let rv = g_param_spec_pool_new(gboolean(type_prefixing ? 1 : 0))
    return cast(rv)
}




/// Creates a new `GParamSpecString` instance.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecString(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, defaultValue default_value: UnsafePointer<gchar>, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_string(name, nick, blurb, default_value, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecUChar` instance specifying a `G_TYPE_UCHAR` property.
public func paramSpecUchar(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: UInt8, maximum: UInt8, defaultValue default_value: UInt8, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_uchar(name, nick, blurb, guint8(minimum), guint8(maximum), guint8(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecUInt` instance specifying a `G_TYPE_UINT` property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecUint(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: CUnsignedInt, maximum: CUnsignedInt, defaultValue default_value: CUnsignedInt, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_uint(name, nick, blurb, guint(minimum), guint(maximum), guint(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecUInt64` instance specifying a `G_TYPE_UINT64`
/// property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecUint64(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: UInt64, maximum: UInt64, defaultValue default_value: UInt64, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_uint64(name, nick, blurb, guint64(minimum), guint64(maximum), guint64(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecULong` instance specifying a `G_TYPE_ULONG`
/// property.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecUlong(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, minimum: CUnsignedLong, maximum: CUnsignedLong, defaultValue default_value: CUnsignedLong, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_ulong(name, nick, blurb, gulong(minimum), gulong(maximum), gulong(default_value), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecUnichar` instance specifying a `G_TYPE_UINT`
/// property. `GValue` structures for this property can be accessed with
/// g_value_set_uint() and g_value_get_uint().
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecUnichar(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, defaultValue default_value: gunichar, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_unichar(name, nick, blurb, default_value, flags)
    return cast(rv)
}




/// Creates a new `GParamSpecValueArray` instance specifying a
/// `G_TYPE_VALUE_ARRAY` property. `G_TYPE_VALUE_ARRAY` is a
/// `G_TYPE_BOXED` type, as such, `GValue` structures for this property
/// can be accessed with g_value_set_boxed() and g_value_get_boxed().
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecValueArray(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, elementSpec element_spec: ParamSpecProtocol, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_value_array(name, nick, blurb, cast(element_spec.ptr), flags)
    return cast(rv)
}




/// Creates a new `GParamSpecVariant` instance specifying a `GVariant`
/// property.
/// 
/// If `default_value` is floating, it is consumed.
/// 
/// See g_param_spec_internal() for details on property names.
public func paramSpecVariant(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, type: VariantTypeProtocol, defaultValue default_value: VariantProtocol, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
    let rv = g_param_spec_variant(name, nick, blurb, cast(type.ptr), cast(default_value.ptr), flags)
    return cast(rv)
}




/// Registers `name` as the name of a new static type derived from
/// `G_TYPE_PARAM`. The type system uses the information contained in
/// the `GParamSpecTypeInfo` structure pointed to by `info` to manage the
/// `GParamSpec` type and its instances.
public func paramTypeRegisterStatic(name: UnsafePointer<gchar>, pspecInfo pspec_info: ParamSpecTypeInfoProtocol) -> GType {
    let rv = g_param_type_register_static(name, cast(pspec_info.ptr))
    return rv
}




/// Transforms `src_value` into `dest_value` if possible, and then
/// validates `dest_value`, in order for it to conform to `pspec`.  If
/// `strict_validation` is `true` this function will only succeed if the
/// transformed `dest_value` complied to `pspec` without modifications.
/// 
/// See also g_value_type_transformable(), g_value_transform() and
/// g_param_value_validate().
public func paramValueConvert(pspec: ParamSpecProtocol, srcValue src_value: ValueProtocol, destValue dest_value: ValueProtocol, strictValidation strict_validation: Bool) -> Bool {
    let rv = g_param_value_convert(cast(pspec.ptr), cast(src_value.ptr), cast(dest_value.ptr), gboolean(strict_validation ? 1 : 0))
    return Bool(rv != 0)
}




/// Checks whether `value` contains the default value as specified in `pspec`.
public func paramValueDefaults(pspec: ParamSpecProtocol, value: ValueProtocol) -> Bool {
    let rv = g_param_value_defaults(cast(pspec.ptr), cast(value.ptr))
    return Bool(rv != 0)
}




/// Sets `value` to its default value as specified in `pspec`.
public func paramValueSetDefault(pspec: ParamSpecProtocol, value: ValueProtocol) {
    g_param_value_set_default(cast(pspec.ptr), cast(value.ptr))

}




/// Ensures that the contents of `value` comply with the specifications
/// set out by `pspec`. For example, a `GParamSpecInt` might require
/// that integers stored in `value` may not be smaller than -42 and not be
/// greater than +42. If `value` contains an integer outside of this range,
/// it is modified accordingly, so the resulting value will fit into the
/// range -42 .. +42.
public func paramValueValidate(pspec: ParamSpecProtocol, value: ValueProtocol) -> Bool {
    let rv = g_param_value_validate(cast(pspec.ptr), cast(value.ptr))
    return Bool(rv != 0)
}




/// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
/// if `value1` is found to be less than, equal to or greater than `value2`,
/// respectively.
public func paramValuesCmp(pspec: ParamSpecProtocol, value1: ValueProtocol, value2: ValueProtocol) -> CInt {
    let rv = g_param_values_cmp(cast(pspec.ptr), cast(value1.ptr), cast(value2.ptr))
    return CInt(rv)
}




/// Creates a new `G_TYPE_POINTER` derived type id for a new
/// pointer type with name `name`.
public func pointerTypeRegisterStatic(name: UnsafePointer<gchar>) -> GType {
    let rv = g_pointer_type_register_static(name)
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
public func signalAccumulatorFirstWins(ihint: SignalInvocationHintProtocol, returnAccu return_accu: ValueProtocol, handlerReturn handler_return: ValueProtocol, dummy: UnsafeMutableRawPointer) -> Bool {
    let rv = g_signal_accumulator_first_wins(cast(ihint.ptr), cast(return_accu.ptr), cast(handler_return.ptr), cast(dummy))
    return Bool(rv != 0)
}




/// A predefined `GSignalAccumulator` for signals that return a
/// boolean values. The behavior that this accumulator gives is
/// that a return of `true` stops the signal emission: no further
/// callbacks will be invoked, while a return of `false` allows
/// the emission to continue. The idea here is that a `true` return
/// indicates that the callback handled the signal, and no further
/// handling is needed.
public func signalAccumulatorTrueHandled(ihint: SignalInvocationHintProtocol, returnAccu return_accu: ValueProtocol, handlerReturn handler_return: ValueProtocol, dummy: UnsafeMutableRawPointer) -> Bool {
    let rv = g_signal_accumulator_true_handled(cast(ihint.ptr), cast(return_accu.ptr), cast(handler_return.ptr), cast(dummy))
    return Bool(rv != 0)
}




/// Adds an emission hook for a signal, which will get called for any emission
/// of that signal, independent of the instance. This is possible only
/// for signals which don't have `G_SIGNAL_NO_HOOKS` flag set.
public func signalAddEmissionHook(signalID signal_id: CUnsignedInt, detail: GLib.Quark, hookFunc hook_func: @escaping SignalEmissionHook, hookData hook_data: UnsafeMutableRawPointer, dataDestroy data_destroy: @escaping GLib.DestroyNotify) -> CUnsignedLong {
    let rv = g_signal_add_emission_hook(guint(signal_id), detail, hook_func, cast(hook_data), data_destroy)
    return CUnsignedLong(rv)
}




/// Calls the original class closure of a signal. This function should only
/// be called from an overridden class closure; see
/// g_signal_override_class_closure() and
/// g_signal_override_class_handler().
public func signalChainFromOverridden(instanceAndParams instance_and_params: UnsafePointer<GValue>, returnValue return_value: ValueProtocol) {
    g_signal_chain_from_overridden(cast(instance_and_params), cast(return_value.ptr))

}





// *** signalChainFromOverriddenHandler() is not available because it has a varargs (...) parameter!





/// Connects a closure to a signal for a particular object.
public func signalConnectClosure(instance: ObjectProtocol, detailedSignal detailed_signal: UnsafePointer<gchar>, closure: ClosureProtocol, after: Bool) -> CUnsignedLong {
    let rv = g_signal_connect_closure(cast(instance.ptr), detailed_signal, cast(closure.ptr), gboolean(after ? 1 : 0))
    return CUnsignedLong(rv)
}




/// Connects a closure to a signal for a particular object.
public func signalConnectClosureByID(instance: ObjectProtocol, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, after: Bool) -> CUnsignedLong {
    let rv = g_signal_connect_closure_by_id(cast(instance.ptr), guint(signal_id), detail, cast(closure.ptr), gboolean(after ? 1 : 0))
    return CUnsignedLong(rv)
}




/// Connects a `GCallback` function to a signal for a particular object. Similar
/// to g_signal_connect(), but allows to provide a `GClosureNotify` for the data
/// which will be called when the signal handler is disconnected and no longer
/// used. Specify `connect_flags` if you need `..._after()` or
/// `..._swapped()` variants of this function.
public func signalConnectData(instance: ObjectProtocol, detailedSignal detailed_signal: UnsafePointer<gchar>, cHandler c_handler: @escaping Callback, data: UnsafeMutableRawPointer, destroyData destroy_data: @escaping ClosureNotify, connectFlags connect_flags: ConnectFlags) -> CUnsignedLong {
    let rv = g_signal_connect_data(cast(instance.ptr), detailed_signal, c_handler, cast(data), destroy_data, connect_flags)
    return CUnsignedLong(rv)
}




/// This is similar to g_signal_connect_data(), but uses a closure which
/// ensures that the `gobject` stays alive during the call to `c_handler`
/// by temporarily adding a reference count to `gobject`.
/// 
/// When the `gobject` is destroyed the signal handler will be automatically
/// disconnected.  Note that this is not currently threadsafe (ie:
/// emitting a signal while `gobject` is being destroyed in another thread
/// is not safe).
public func signalConnectObject(instance: TypeInstanceProtocol, detailedSignal detailed_signal: UnsafePointer<gchar>, cHandler c_handler: @escaping Callback, gobject: ObjectProtocol, connectFlags connect_flags: ConnectFlags) -> CUnsignedLong {
    let rv = g_signal_connect_object(cast(instance.ptr), detailed_signal, c_handler, cast(gobject.ptr), connect_flags)
    return CUnsignedLong(rv)
}





// *** signalEmit() is not available because it has a varargs (...) parameter!






// *** signalEmitByName() is not available because it has a varargs (...) parameter!





/// Emits a signal.
/// 
/// Note that g_signal_emit_valist() resets the return value to the default
/// if no handlers are connected, in contrast to g_signal_emitv().
public func signalEmitValist(instance: TypeInstanceProtocol, signalID signal_id: CUnsignedInt, detail: GLib.Quark, varArgs var_args: CVaListPointer) {
    g_signal_emit_valist(cast(instance.ptr), guint(signal_id), detail, var_args)

}




/// Emits a signal.
/// 
/// Note that g_signal_emitv() doesn't change `return_value` if no handlers are
/// connected, in contrast to g_signal_emit() and g_signal_emit_valist().
public func signalEmitv(instanceAndParams instance_and_params: UnsafePointer<GValue>, signalID signal_id: CUnsignedInt, detail: GLib.Quark, returnValue return_value: ValueProtocol) {
    g_signal_emitv(cast(instance_and_params), guint(signal_id), detail, cast(return_value.ptr))

}




/// Returns the invocation hint of the innermost signal emission of instance.
public func signalGetInvocationHint(instance: ObjectProtocol) -> UnsafeMutablePointer<GSignalInvocationHint>! {
    let rv = g_signal_get_invocation_hint(cast(instance.ptr))
    return cast(rv)
}




/// Blocks a handler of an instance so it will not be called during any
/// signal emissions unless it is unblocked again. Thus "blocking" a
/// signal handler means to temporarily deactive it, a signal handler
/// has to be unblocked exactly the same amount of times it has been
/// blocked before to become active again.
/// 
/// The `handler_id` has to be a valid signal handler id, connected to a
/// signal of `instance`.
public func signalHandlerBlock(instance: ObjectProtocol, handlerID handler_id: CUnsignedLong) {
    g_signal_handler_block(cast(instance.ptr), gulong(handler_id))

}




/// Disconnects a handler from an instance so it will not be called during
/// any future or currently ongoing emissions of the signal it has been
/// connected to. The `handler_id` becomes invalid and may be reused.
/// 
/// The `handler_id` has to be a valid signal handler id, connected to a
/// signal of `instance`.
public func signalHandlerDisconnect(instance: ObjectProtocol, handlerID handler_id: CUnsignedLong) {
    g_signal_handler_disconnect(cast(instance.ptr), gulong(handler_id))

}




/// Finds the first signal handler that matches certain selection criteria.
/// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
/// flags, and the criteria values are passed as arguments.
/// The match `mask` has to be non-0 for successful matches.
/// If no handler was found, 0 is returned.
public func signalHandlerFind(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedLong {
    let rv = g_signal_handler_find(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
    return CUnsignedLong(rv)
}




/// Returns whether `handler_id` is the ID of a handler connected to `instance`.
public func signalHandlerIsConnected(instance: ObjectProtocol, handlerID handler_id: CUnsignedLong) -> Bool {
    let rv = g_signal_handler_is_connected(cast(instance.ptr), gulong(handler_id))
    return Bool(rv != 0)
}




/// Undoes the effect of a previous g_signal_handler_block() call.  A
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
public func signalHandlerUnblock(instance: ObjectProtocol, handlerID handler_id: CUnsignedLong) {
    g_signal_handler_unblock(cast(instance.ptr), gulong(handler_id))

}




/// Blocks all handlers on an instance that match a certain selection criteria.
/// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
/// flags, and the criteria values are passed as arguments.
/// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
/// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
/// If no handlers were found, 0 is returned, the number of blocked handlers
/// otherwise.
public func signalHandlersBlockMatched(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = g_signal_handlers_block_matched(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
    return CUnsignedInt(rv)
}




/// Destroy all signal handlers of a type instance. This function is
/// an implementation detail of the `GObject` dispose implementation,
/// and should not be used outside of the type system.
public func signalHandlersDestroy(instance: ObjectProtocol) {
    g_signal_handlers_destroy(cast(instance.ptr))

}




/// Disconnects all handlers on an instance that match a certain
/// selection criteria. The criteria mask is passed as an OR-ed
/// combination of `GSignalMatchType` flags, and the criteria values are
/// passed as arguments.  Passing at least one of the
/// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
/// `G_SIGNAL_MATCH_DATA` match flags is required for successful
/// matches.  If no handlers were found, 0 is returned, the number of
/// disconnected handlers otherwise.
public func signalHandlersDisconnectMatched(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = g_signal_handlers_disconnect_matched(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
    return CUnsignedInt(rv)
}




/// Unblocks all handlers on an instance that match a certain selection
/// criteria. The criteria mask is passed as an OR-ed combination of
/// `GSignalMatchType` flags, and the criteria values are passed as arguments.
/// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
/// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
/// If no handlers were found, 0 is returned, the number of unblocked handlers
/// otherwise. The match criteria should not apply to any handlers that are
/// not currently blocked.
public func signalHandlersUnblockMatched(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
    let rv = g_signal_handlers_unblock_matched(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
    return CUnsignedInt(rv)
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
public func signalHasHandlerPending(instance: ObjectProtocol, signalID signal_id: CUnsignedInt, detail: GLib.Quark, mayBeBlocked may_be_blocked: Bool) -> Bool {
    let rv = g_signal_has_handler_pending(cast(instance.ptr), guint(signal_id), detail, gboolean(may_be_blocked ? 1 : 0))
    return Bool(rv != 0)
}




/// Lists the signals by id that a certain instance or interface type
/// created. Further information about the signals can be acquired through
/// g_signal_query().
public func signalListIDs(itype: GType, nIDs n_ids: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<CUnsignedInt>! {
    let rv = g_signal_list_ids(itype, cast(n_ids))
    return cast(rv)
}




/// Given the name of the signal and the type of object it connects to, gets
/// the signal's identifying integer. Emitting the signal by number is
/// somewhat faster than using the name each time.
/// 
/// Also tries the ancestors of the given type.
/// 
/// See g_signal_new() for details on allowed signal names.
public func signalLookup(name: UnsafePointer<gchar>, itype: GType) -> CUnsignedInt {
    let rv = g_signal_lookup(name, itype)
    return CUnsignedInt(rv)
}




/// Given the signal's identifier, finds its name.
/// 
/// Two different signals may have the same name, if they have differing types.
public func signalName(signalID signal_id: CUnsignedInt) -> String! {
    let rv = g_signal_name(guint(signal_id))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}





// *** signalNew() is not available because it has a varargs (...) parameter!






// *** signalNewClassHandler() is not available because it has a varargs (...) parameter!





/// Creates a new signal. (This is usually done in the class initializer.)
/// 
/// See g_signal_new() for details on allowed signal names.
/// 
/// If c_marshaller is `nil`, g_cclosure_marshal_generic() will be used as
/// the marshaller for this signal.
public func signalNewValist(signalName signal_name: UnsafePointer<gchar>, itype: GType, signalFlags signal_flags: SignalFlags, classClosure class_closure: ClosureProtocol, accumulator: @escaping SignalAccumulator, accuData accu_data: UnsafeMutableRawPointer, cMarshaller c_marshaller: @escaping SignalCMarshaller, returnType return_type: GType, nParams n_params: CUnsignedInt, args: CVaListPointer) -> CUnsignedInt {
    let rv = g_signal_new_valist(signal_name, itype, signal_flags, cast(class_closure.ptr), accumulator, cast(accu_data), c_marshaller, return_type, guint(n_params), args)
    return CUnsignedInt(rv)
}




/// Creates a new signal. (This is usually done in the class initializer.)
/// 
/// See g_signal_new() for details on allowed signal names.
/// 
/// If c_marshaller is `nil`, g_cclosure_marshal_generic() will be used as
/// the marshaller for this signal.
public func signalNewv(signalName signal_name: UnsafePointer<gchar>, itype: GType, signalFlags signal_flags: SignalFlags, classClosure class_closure: ClosureProtocol, accumulator: @escaping SignalAccumulator, accuData accu_data: UnsafeMutableRawPointer, cMarshaller c_marshaller: @escaping SignalCMarshaller, returnType return_type: GType, nParams n_params: CUnsignedInt, paramTypes param_types: UnsafeMutablePointer<GType>) -> CUnsignedInt {
    let rv = g_signal_newv(signal_name, itype, signal_flags, cast(class_closure.ptr), accumulator, cast(accu_data), c_marshaller, return_type, guint(n_params), cast(param_types))
    return CUnsignedInt(rv)
}




/// Overrides the class closure (i.e. the default handler) for the given signal
/// for emissions on instances of `instance_type`. `instance_type` must be derived
/// from the type to which the signal belongs.
/// 
/// See g_signal_chain_from_overridden() and
/// g_signal_chain_from_overridden_handler() for how to chain up to the
/// parent class closure from inside the overridden one.
public func signalOverrideClassClosure(signalID signal_id: CUnsignedInt, instanceType instance_type: GType, classClosure class_closure: ClosureProtocol) {
    g_signal_override_class_closure(guint(signal_id), instance_type, cast(class_closure.ptr))

}




/// Overrides the class closure (i.e. the default handler) for the
/// given signal for emissions on instances of `instance_type` with
/// callback `class_handler`. `instance_type` must be derived from the
/// type to which the signal belongs.
/// 
/// See g_signal_chain_from_overridden() and
/// g_signal_chain_from_overridden_handler() for how to chain up to the
/// parent class closure from inside the overridden one.
public func signalOverrideClassHandler(signalName signal_name: UnsafePointer<gchar>, instanceType instance_type: GType, classHandler class_handler: @escaping Callback) {
    g_signal_override_class_handler(signal_name, instance_type, class_handler)

}




/// Internal function to parse a signal name into its `signal_id`
/// and `detail` quark.
public func signalParseName(detailedSignal detailed_signal: UnsafePointer<gchar>, itype: GType, signalIDP signal_id_p: UnsafeMutablePointer<CUnsignedInt>, detailP detail_p: UnsafeMutablePointer<GQuark>, forceDetailQuark force_detail_quark: Bool) -> Bool {
    let rv = g_signal_parse_name(detailed_signal, itype, cast(signal_id_p), cast(detail_p), gboolean(force_detail_quark ? 1 : 0))
    return Bool(rv != 0)
}




/// Queries the signal system for in-depth information about a
/// specific signal. This function will fill in a user-provided
/// structure to hold signal-specific information. If an invalid
/// signal id is passed in, the `signal_id` member of the `GSignalQuery`
/// is 0. All members filled into the `GSignalQuery` structure should
/// be considered constant and have to be left untouched.
public func signalQuery(signalID signal_id: CUnsignedInt, query: SignalQueryProtocol) {
    g_signal_query(guint(signal_id), cast(query.ptr))

}




/// Deletes an emission hook.
public func signalRemoveEmissionHook(signalID signal_id: CUnsignedInt, hookID hook_id: CUnsignedLong) {
    g_signal_remove_emission_hook(guint(signal_id), gulong(hook_id))

}




/// Change the `GSignalCVaMarshaller` used for a given signal.  This is a
/// specialised form of the marshaller that can often be used for the
/// common case of a single connected signal handler and avoids the
/// overhead of `GValue`.  Its use is optional.
public func signalSetVaMarshaller(signalID signal_id: CUnsignedInt, instanceType instance_type: GType, vaMarshaller va_marshaller: @escaping SignalCVaMarshaller) {
    g_signal_set_va_marshaller(guint(signal_id), instance_type, va_marshaller)

}




/// Stops a signal's current emission.
/// 
/// This will prevent the default method from running, if the signal was
/// `G_SIGNAL_RUN_LAST` and you connected normally (i.e. without the "after"
/// flag).
/// 
/// Prints a warning if used on a signal which isn't being emitted.
public func signalStopEmission(instance: ObjectProtocol, signalID signal_id: CUnsignedInt, detail: GLib.Quark) {
    g_signal_stop_emission(cast(instance.ptr), guint(signal_id), detail)

}




/// Stops a signal's current emission.
/// 
/// This is just like g_signal_stop_emission() except it will look up the
/// signal id for you.
public func signalStopEmissionByName(instance: ObjectProtocol, detailedSignal detailed_signal: UnsafePointer<gchar>) {
    g_signal_stop_emission_by_name(cast(instance.ptr), detailed_signal)

}




/// Creates a new closure which invokes the function found at the offset
/// `struct_offset` in the class structure of the interface or classed type
/// identified by `itype`.
public func signalTypeCclosureNew(itype: GType, structOffset struct_offset: CUnsignedInt) -> UnsafeMutablePointer<GClosure>! {
    let rv = g_signal_type_cclosure_new(itype, guint(struct_offset))
    return cast(rv)
}




/// Set the callback for a source as a `GClosure`.
/// 
/// If the source is not one of the standard GLib types, the `closure_callback`
/// and `closure_marshal` fields of the `GSourceFuncs` structure must have been
/// filled in with pointers to appropriate functions.
public func sourceSetClosure(source: SourceProtocol, closure: ClosureProtocol) {
    g_source_set_closure(cast(source.ptr), cast(closure.ptr))

}




/// Sets a dummy callback for `source`. The callback will do nothing, and
/// if the source expects a `gboolean` return value, it will return `true`.
/// (If the source expects any other type of return value, it will return
/// a 0/`nil` value; whatever g_value_init() initializes a `GValue` to for
/// that type.)
/// 
/// If the source is not one of the standard GLib types, the
/// `closure_callback` and `closure_marshal` fields of the `GSourceFuncs`
/// structure must have been filled in with pointers to appropriate
/// functions.
public func sourceSetDummyCallback(source: SourceProtocol) {
    g_source_set_dummy_callback(cast(source.ptr))

}




/// Return a newly allocated string, which describes the contents of a
/// `GValue`.  The main purpose of this function is to describe `GValue`
/// contents for debugging output, the way in which the contents are
/// described may change between different GLib versions.
public func strdupValueContents(value: ValueProtocol) -> String! {
    let rv = g_strdup_value_contents(cast(value.ptr))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Adds a `GTypeClassCacheFunc` to be called before the reference count of a
/// class goes from one to zero. This can be used to prevent premature class
/// destruction. All installed `GTypeClassCacheFunc` functions will be chained
/// until one of them returns `true`. The functions have to check the class id
/// passed in to figure whether they actually want to cache the class of this
/// type, since all classes are routed through the same `GTypeClassCacheFunc`
/// chain.
public func typeAddClassCacheFunc(cacheData cache_data: UnsafeMutableRawPointer, cacheFunc cache_func: @escaping TypeClassCacheFunc) {
    g_type_add_class_cache_func(cast(cache_data), cache_func)

}




/// Registers a private class structure for a classed type;
/// when the class is allocated, the private structures for
/// the class and all of its parent types are allocated
/// sequentially in the same memory block as the public
/// structures, and are zero-filled.
/// 
/// This function should be called in the
/// type's get_type() function after the type is registered.
/// The private structure can be retrieved using the
/// G_TYPE_CLASS_GET_PRIVATE() macro.
public func typeAddClassPrivate(classType class_type: GType, privateSize private_size: Int) {
    g_type_add_class_private(class_type, gsize(private_size))

}




public func typeAddInstancePrivate(classType class_type: GType, privateSize private_size: Int) -> CInt {
    let rv = g_type_add_instance_private(class_type, gsize(private_size))
    return CInt(rv)
}




/// Adds a function to be called after an interface vtable is
/// initialized for any class (i.e. after the `interface_init`
/// member of `GInterfaceInfo` has been called).
/// 
/// This function is useful when you want to check an invariant
/// that depends on the interfaces of a class. For instance, the
/// implementation of `GObject` uses this facility to check that an
/// object implements all of the properties that are defined on its
/// interfaces.
public func typeAddInterfaceCheck(checkData check_data: UnsafeMutableRawPointer, checkFunc check_func: @escaping TypeInterfaceCheckFunc) {
    g_type_add_interface_check(cast(check_data), check_func)

}




/// Adds the dynamic `interface_type` to `instantiable_type`. The information
/// contained in the `GTypePlugin` structure pointed to by `plugin`
/// is used to manage the relationship.
public func typeAddInterfaceDynamic(instanceType instance_type: GType, interfaceType interface_type: GType, plugin: TypePluginProtocol) {
    g_type_add_interface_dynamic(instance_type, interface_type, cast(plugin.ptr))

}




/// Adds the static `interface_type` to `instantiable_type`.
/// The information contained in the `GInterfaceInfo` structure
/// pointed to by `info` is used to manage the relationship.
public func typeAddInterfaceStatic(instanceType instance_type: GType, interfaceType interface_type: GType, info: InterfaceInfoProtocol) {
    g_type_add_interface_static(instance_type, interface_type, cast(info.ptr))

}




public func typeCheckClassCast(gClass g_class: TypeClassProtocol, isAType is_a_type: GType) -> UnsafeMutablePointer<GTypeClass>! {
    let rv = g_type_check_class_cast(cast(g_class.ptr), is_a_type)
    return cast(rv)
}




public func typeCheckClassIsA(gClass g_class: TypeClassProtocol, isAType is_a_type: GType) -> Bool {
    let rv = g_type_check_class_is_a(cast(g_class.ptr), is_a_type)
    return Bool(rv != 0)
}




/// Private helper function to aid implementation of the
/// G_TYPE_CHECK_INSTANCE() macro.
public func typeCheck(instance: TypeInstanceProtocol) -> Bool {
    let rv = g_type_check_instance(cast(instance.ptr))
    return Bool(rv != 0)
}




public func typeCheckInstanceCast(instance: TypeInstanceProtocol, ifaceType iface_type: GType) -> UnsafeMutablePointer<GTypeInstance>! {
    let rv = g_type_check_instance_cast(cast(instance.ptr), iface_type)
    return cast(rv)
}




public func typeCheckInstanceIsA(instance: TypeInstanceProtocol, ifaceType iface_type: GType) -> Bool {
    let rv = g_type_check_instance_is_a(cast(instance.ptr), iface_type)
    return Bool(rv != 0)
}




public func typeCheckInstanceIsFundamentallyA(instance: TypeInstanceProtocol, fundamentalType fundamental_type: GType) -> Bool {
    let rv = g_type_check_instance_is_fundamentally_a(cast(instance.ptr), fundamental_type)
    return Bool(rv != 0)
}




public func typeCheckIsValue(type: GType) -> Bool {
    let rv = g_type_check_is_value_type(type)
    return Bool(rv != 0)
}




public func typeCheck(value: ValueProtocol) -> Bool {
    let rv = g_type_check_value(cast(value.ptr))
    return Bool(rv != 0)
}




public func typeCheckValueHolds(value: ValueProtocol, type: GType) -> Bool {
    let rv = g_type_check_value_holds(cast(value.ptr), type)
    return Bool(rv != 0)
}




/// Return a newly allocated and 0-terminated array of type IDs, listing
/// the child types of `type`.
public func typeChildren(type: GType, nChildren n_children: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<GType>! {
    let rv = g_type_children(type, cast(n_children))
    return cast(rv)
}




public func typeClassAdjustPrivateOffset(gClass g_class: UnsafeMutableRawPointer, privateSizeOrOffset private_size_or_offset: UnsafeMutablePointer<CInt>) {
    g_type_class_adjust_private_offset(cast(g_class), cast(private_size_or_offset))

}




/// This function is essentially the same as g_type_class_ref(),
/// except that the classes reference count isn't incremented.
/// As a consequence, this function may return `nil` if the class
/// of the type passed in does not currently exist (hasn't been
/// referenced before).
public func typeClassPeek(type: GType) -> UnsafeMutableRawPointer! {
    let rv = g_type_class_peek(type)
    return cast(rv)
}




/// A more efficient version of g_type_class_peek() which works only for
/// static types.
public func typeClassPeekStatic(type: GType) -> UnsafeMutableRawPointer! {
    let rv = g_type_class_peek_static(type)
    return cast(rv)
}




/// Increments the reference count of the class structure belonging to
/// `type`. This function will demand-create the class if it doesn't
/// exist already.
public func typeClassRef(type: GType) -> UnsafeMutableRawPointer! {
    let rv = g_type_class_ref(type)
    return cast(rv)
}




/// Creates and initializes an instance of `type` if `type` is valid and
/// can be instantiated. The type system only performs basic allocation
/// and structure setups for instances: actual instance creation should
/// happen through functions supplied by the type's fundamental type
/// implementation.  So use of g_type_create_instance() is reserved for
/// implementators of fundamental types only. E.g. instances of the
/// `GObject` hierarchy should be created via g_object_new() and never
/// directly through g_type_create_instance() which doesn't handle things
/// like singleton objects or object construction.
/// 
/// The extended members of the returned instance are guaranteed to be filled
/// with zeros.
/// 
/// Note: Do not use this function, unless you're implementing a
/// fundamental type. Also language bindings should not use this
/// function, but g_object_new() instead.
public func typeCreateInstance(type: GType) -> UnsafeMutablePointer<GTypeInstance>! {
    let rv = g_type_create_instance(type)
    return cast(rv)
}




/// If the interface type `g_type` is currently in use, returns its
/// default interface vtable.
public func typeDefaultInterfacePeek(gType g_type: GType) -> UnsafeMutableRawPointer! {
    let rv = g_type_default_interface_peek(g_type)
    return cast(rv)
}




/// Increments the reference count for the interface type `g_type`,
/// and returns the default interface vtable for the type.
/// 
/// If the type is not currently in use, then the default vtable
/// for the type will be created and initalized by calling
/// the base interface init and default vtable init functions for
/// the type (the `base_init` and `class_init` members of `GTypeInfo`).
/// Calling g_type_default_interface_ref() is useful when you
/// want to make sure that signals and properties for an interface
/// have been installed.
public func typeDefaultInterfaceRef(gType g_type: GType) -> UnsafeMutableRawPointer! {
    let rv = g_type_default_interface_ref(g_type)
    return cast(rv)
}




/// Decrements the reference count for the type corresponding to the
/// interface default vtable `g_iface`. If the type is dynamic, then
/// when no one is using the interface and all references have
/// been released, the finalize function for the interface's default
/// vtable (the `class_finalize` member of `GTypeInfo`) will be called.
public func typeDefaultInterfaceUnref(gIface g_iface: TypeInterfaceProtocol) {
    g_type_default_interface_unref(cast(g_iface.ptr))

}




/// Returns the length of the ancestry of the passed in type. This
/// includes the type itself, so that e.g. a fundamental type has depth 1.
public func typeDepth(type: GType) -> CUnsignedInt {
    let rv = g_type_depth(type)
    return CUnsignedInt(rv)
}




/// Ensures that the indicated `type` has been registered with the
/// type system, and its _class_init() method has been run.
/// 
/// In theory, simply calling the type's _get_type() method (or using
/// the corresponding macro) is supposed take care of this. However,
/// _get_type() methods are often marked `G_GNUC_CONST` for performance
/// reasons, even though this is technically incorrect (since
/// `G_GNUC_CONST` requires that the function not have side effects,
/// which _get_type() methods do on the first call). As a result, if
/// you write a bare call to a _get_type() macro, it may get optimized
/// out by the compiler. Using g_type_ensure() guarantees that the
/// type's _get_type() method is called.
public func typeEnsure(type: GType) {
    g_type_ensure(type)

}




/// Frees an instance of a type, returning it to the instance pool for
/// the type, if there is one.
/// 
/// Like g_type_create_instance(), this function is reserved for
/// implementors of fundamental types.
public func typeFree(instance: TypeInstanceProtocol) {
    g_type_free_instance(cast(instance.ptr))

}




/// Look up the type ID from a given type name, returning 0 if no type
/// has been registered under this name (this is the preferred method
/// to find out by name whether a specific type has been registered
/// yet).
public func typeFrom(name: UnsafePointer<gchar>) -> GType {
    let rv = g_type_from_name(name)
    return rv
}




/// Internal function, used to extract the fundamental type ID portion.
/// Use G_TYPE_FUNDAMENTAL() instead.
public func typeFundamental(typeID type_id: GType) -> GType {
    let rv = g_type_fundamental(type_id)
    return rv
}




/// Returns the next free fundamental type id which can be used to
/// register a new fundamental type with g_type_register_fundamental().
/// The returned type ID represents the highest currently registered
/// fundamental type identifier.
public func typeFundamentalNext() -> GType {
    let rv = g_type_fundamental_next()
    return rv
}




/// Returns the number of instances allocated of the particular type;
/// this is only available if GLib is built with debugging support and
/// the instance_count debug flag is set (by setting the GOBJECT_DEBUG
/// variable to include instance-count).
public func typeGetInstanceCount(type: GType) -> CInt {
    let rv = g_type_get_instance_count(type)
    return rv
}




/// Returns the `GTypePlugin` structure for `type`.
public func typeGetPlugin(type: GType) -> UnsafeMutablePointer<GTypePlugin>! {
    let rv = g_type_get_plugin(type)
    return cast(rv)
}




/// Obtains data which has previously been attached to `type`
/// with g_type_set_qdata().
/// 
/// Note that this does not take subtyping into account; data
/// attached to one type with g_type_set_qdata() cannot
/// be retrieved from a subtype using g_type_get_qdata().
public func typeGetQdata(type: GType, quark: GLib.Quark) -> UnsafeMutableRawPointer! {
    let rv = g_type_get_qdata(type, quark)
    return cast(rv)
}




/// Returns an opaque serial number that represents the state of the set
/// of registered types. Any time a type is registered this serial changes,
/// which means you can cache information based on type lookups (such as
/// g_type_from_name()) and know if the cache is still valid at a later
/// time by comparing the current serial with the one at the type lookup.
public func typeGetTypeRegistrationSerial() -> CUnsignedInt {
    let rv = g_type_get_type_registration_serial()
    return CUnsignedInt(rv)
}




/// This function used to initialise the type system.  Since GLib 2.36,
/// the type system is initialised automatically and this function does
/// nothing.
///
/// **type_init is deprecated:**
/// the type system is now initialised automatically
@available(*, deprecated) public func typeInit() {
    g_type_init()

}




/// This function used to initialise the type system with debugging
/// flags.  Since GLib 2.36, the type system is initialised automatically
/// and this function does nothing.
/// 
/// If you need to enable debugging features, use the GOBJECT_DEBUG
/// environment variable.
///
/// **type_init_with_debug_flags is deprecated:**
/// the type system is now initialised automatically
@available(*, deprecated) public func typeInitWith(debugFlags debug_flags: TypeDebugFlags) {
    g_type_init_with_debug_flags(debug_flags)

}




/// Adds `prerequisite_type` to the list of prerequisites of `interface_type`.
/// This means that any type implementing `interface_type` must also implement
/// `prerequisite_type`. Prerequisites can be thought of as an alternative to
/// interface derivation (which GType doesn't support). An interface can have
/// at most one instantiatable prerequisite type.
public func typeInterfaceAddPrerequisite(interfaceType interface_type: GType, prerequisiteType prerequisite_type: GType) {
    g_type_interface_add_prerequisite(interface_type, prerequisite_type)

}




/// Returns the `GTypePlugin` structure for the dynamic interface
/// `interface_type` which has been added to `instance_type`, or `nil`
/// if `interface_type` has not been added to `instance_type` or does
/// not have a `GTypePlugin` structure. See g_type_add_interface_dynamic().
public func typeInterfaceGetPlugin(instanceType instance_type: GType, interfaceType interface_type: GType) -> UnsafeMutablePointer<GTypePlugin>! {
    let rv = g_type_interface_get_plugin(instance_type, interface_type)
    return cast(rv)
}




/// Returns the `GTypeInterface` structure of an interface to which the
/// passed in class conforms.
public func typeInterfacePeek(instanceClass instance_class: TypeClassProtocol, ifaceType iface_type: GType) -> UnsafeMutableRawPointer! {
    let rv = g_type_interface_peek(cast(instance_class.ptr), iface_type)
    return cast(rv)
}




/// Returns the prerequisites of an interfaces type.
public func typeInterfacePrerequisites(interfaceType interface_type: GType, nPrerequisites n_prerequisites: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<GType>! {
    let rv = g_type_interface_prerequisites(interface_type, cast(n_prerequisites))
    return cast(rv)
}




/// Return a newly allocated and 0-terminated array of type IDs, listing
/// the interface types that `type` conforms to.
public func typeInterfaces(type: GType, nInterfaces n_interfaces: UnsafeMutablePointer<CUnsignedInt>) -> UnsafeMutablePointer<GType>! {
    let rv = g_type_interfaces(type, cast(n_interfaces))
    return cast(rv)
}




/// If `is_a_type` is a derivable type, check whether `type` is a
/// descendant of `is_a_type`. If `is_a_type` is an interface, check
/// whether `type` conforms to it.
public func typeIsA(type: GType, isAType is_a_type: GType) -> Bool {
    let rv = g_type_is_a(type, is_a_type)
    return Bool(rv != 0)
}




/// Get the unique name that is assigned to a type ID.  Note that this
/// function (like all other GType API) cannot cope with invalid type
/// IDs. `G_TYPE_INVALID` may be passed to this function, as may be any
/// other validly registered type ID, but randomized type IDs should
/// not be passed in and will most likely lead to a crash.
public func typeName(type: GType) -> String! {
    let rv = g_type_name(type)
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




public func typeNameFromClass(gClass g_class: TypeClassProtocol) -> String! {
    let rv = g_type_name_from_class(cast(g_class.ptr))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




public func typeNameFrom(instance: TypeInstanceProtocol) -> String! {
    let rv = g_type_name_from_instance(cast(instance.ptr))
    return rv.map { String(cString: UnsafePointer<CChar>($0)) }
}




/// Given a `leaf_type` and a `root_type` which is contained in its
/// anchestry, return the type that `root_type` is the immediate parent
/// of. In other words, this function determines the type that is
/// derived directly from `root_type` which is also a base class of
/// `leaf_type`.  Given a root type and a leaf type, this function can
/// be used to determine the types and order in which the leaf type is
/// descended from the root type.
public func typeNextBase(leafType leaf_type: GType, rootType root_type: GType) -> GType {
    let rv = g_type_next_base(leaf_type, root_type)
    return rv
}




/// Return the direct parent type of the passed in type. If the passed
/// in type has no parent, i.e. is a fundamental type, 0 is returned.
public func typeParent(type: GType) -> GType {
    let rv = g_type_parent(type)
    return rv
}




/// Get the corresponding quark of the type IDs name.
public func typeQname(type: GType) -> GQuark {
    let rv = g_type_qname(type)
    return rv
}




/// Queries the type system for information about a specific type.
/// This function will fill in a user-provided structure to hold
/// type-specific information. If an invalid `GType` is passed in, the
/// `type` member of the `GTypeQuery` is 0. All members filled into the
/// `GTypeQuery` structure should be considered constant and have to be
/// left untouched.
public func typeQuery(type: GType, query: TypeQueryProtocol) {
    g_type_query(type, cast(query.ptr))

}




/// Registers `type_name` as the name of a new dynamic type derived from
/// `parent_type`.  The type system uses the information contained in the
/// `GTypePlugin` structure pointed to by `plugin` to manage the type and its
/// instances (if not abstract).  The value of `flags` determines the nature
/// (e.g. abstract or not) of the type.
public func typeRegisterDynamic(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>, plugin: TypePluginProtocol, flags: TypeFlags) -> GType {
    let rv = g_type_register_dynamic(parent_type, type_name, cast(plugin.ptr), flags)
    return rv
}




/// Registers `type_id` as the predefined identifier and `type_name` as the
/// name of a fundamental type. If `type_id` is already registered, or a
/// type named `type_name` is already registered, the behaviour is undefined.
/// The type system uses the information contained in the `GTypeInfo` structure
/// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
/// `finfo` to manage the type and its instances. The value of `flags` determines
/// additional characteristics of the fundamental type.
public func typeRegisterFundamental(typeID type_id: GType, typeName type_name: UnsafePointer<gchar>, info: TypeInfoProtocol, finfo: TypeFundamentalInfoProtocol, flags: TypeFlags) -> GType {
    let rv = g_type_register_fundamental(type_id, type_name, cast(info.ptr), cast(finfo.ptr), flags)
    return rv
}




/// Registers `type_name` as the name of a new static type derived from
/// `parent_type`. The type system uses the information contained in the
/// `GTypeInfo` structure pointed to by `info` to manage the type and its
/// instances (if not abstract). The value of `flags` determines the nature
/// (e.g. abstract or not) of the type.
public func typeRegisterStatic(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>, info: TypeInfoProtocol, flags: TypeFlags) -> GType {
    let rv = g_type_register_static(parent_type, type_name, cast(info.ptr), flags)
    return rv
}




/// Registers `type_name` as the name of a new static type derived from
/// `parent_type`.  The value of `flags` determines the nature (e.g.
/// abstract or not) of the type. It works by filling a `GTypeInfo`
/// struct and calling g_type_register_static().
public func typeRegisterStaticSimple(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>, classSize class_size: CUnsignedInt, classInit class_init: @escaping ClassInitFunc, instanceSize instance_size: CUnsignedInt, instanceInit instance_init: @escaping InstanceInitFunc, flags: TypeFlags) -> GType {
    let rv = g_type_register_static_simple(parent_type, type_name, guint(class_size), class_init, guint(instance_size), instance_init, flags)
    return rv
}




/// Removes a previously installed `GTypeClassCacheFunc`. The cache
/// maintained by `cache_func` has to be empty when calling
/// g_type_remove_class_cache_func() to avoid leaks.
public func typeRemoveClassCacheFunc(cacheData cache_data: UnsafeMutableRawPointer, cacheFunc cache_func: @escaping TypeClassCacheFunc) {
    g_type_remove_class_cache_func(cast(cache_data), cache_func)

}




/// Removes an interface check function added with
/// g_type_add_interface_check().
public func typeRemoveInterfaceCheck(checkData check_data: UnsafeMutableRawPointer, checkFunc check_func: @escaping TypeInterfaceCheckFunc) {
    g_type_remove_interface_check(cast(check_data), check_func)

}




/// Attaches arbitrary data to a type.
public func typeSetQdata(type: GType, quark: GLib.Quark, data: UnsafeMutableRawPointer) {
    g_type_set_qdata(type, quark, cast(data))

}




public func typeTestFlags(type: GType, flags: CUnsignedInt) -> Bool {
    let rv = g_type_test_flags(type, guint(flags))
    return Bool(rv != 0)
}




/// Returns the location of the `GTypeValueTable` associated with `type`.
/// 
/// Note that this function should only be used from source code
/// that implements or has internal knowledge of the implementation of
/// `type`.
public func typeValueTablePeek(type: GType) -> UnsafeMutablePointer<GTypeValueTable>! {
    let rv = g_type_value_table_peek(type)
    return cast(rv)
}




/// Registers a value transformation function for use in g_value_transform().
/// A previously registered transformation function for `src_type` and `dest_type`
/// will be replaced.
public func valueRegisterTransformFunc(srcType src_type: GType, destType dest_type: GType, transformFunc transform_func: @escaping ValueTransform) {
    g_value_register_transform_func(src_type, dest_type, transform_func)

}




/// Returns whether a `GValue` of type `src_type` can be copied into
/// a `GValue` of type `dest_type`.
public func valueTypeCompatible(srcType src_type: GType, destType dest_type: GType) -> Bool {
    let rv = g_value_type_compatible(src_type, dest_type)
    return Bool(rv != 0)
}




/// Check whether g_value_transform() is able to transform values
/// of type `src_type` into values of type `dest_type`. Note that for
/// the types to be transformable, they must be compatible or a
/// transformation function must be registered.
public func valueTypeTransformable(srcType src_type: GType, destType dest_type: GType) -> Bool {
    let rv = g_value_type_transformable(src_type, dest_type)
    return Bool(rv != 0)
}


