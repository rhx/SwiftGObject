import CGLib
import GLib
import GObjectCHelpers

/// Provide a copy of a boxed structure `src_boxed` which is of type `boxed_type`.
@inlinable public func boxedCopy(boxedType: GType, srcBoxed: gconstpointer) -> gpointer! {
    guard let rv = gpointer?(g_boxed_copy(boxedType, srcBoxed)) else { return nil }
    return rv
}




/// Free the boxed structure `boxed` which is of type `boxed_type`.
@inlinable public func boxedFree(boxedType: GType, boxed: gpointer!) {
    g_boxed_free(boxedType, boxed)

}




/// This function creates a new `G_TYPE_BOXED` derived type id for a new
/// boxed type with name `name`. Boxed type handling functions have to be
/// provided to copy and free opaque boxed structures of this type.
@inlinable public func boxedTypeRegisterStatic(name: UnsafePointer<gchar>!, boxedCopy: GBoxedCopyFunc?, boxedFree: GBoxedFreeFunc?) -> GType {
    let rv = g_boxed_type_register_static(name, boxedCopy, boxedFree)
    return rv
}




/// A `GClosureMarshal` function for use with signals with handlers that
/// take two boxed pointers as arguments and return a boolean.  If you
/// have such a signal, you will probably also need to use an
/// accumulator, such as `g_signal_accumulator_true_handled()`.
@inlinable public func cclosureMarshalBOOLEAN_BOXEDBOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
/// denotes a flags type.
@inlinable public func cclosureMarshalBOOLEAN_FLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_BOOLEAN__FLAGS(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
@inlinable public func cclosureMarshalSTRING_OBJECTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_STRING__OBJECT_POINTER(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_BOOLEAN<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__BOOLEAN(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_BOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__BOXED(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_CHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__CHAR(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_DOUBLE<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__DOUBLE(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
@inlinable public func cclosureMarshalVOID_ENUM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__ENUM(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
@inlinable public func cclosureMarshalVOID_FLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__FLAGS(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_FLOAT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__FLOAT(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_INT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__INT(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_LONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__LONG(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_OBJECT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__OBJECT(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_PARAM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__PARAM(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_POINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__POINTER(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_STRING<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__STRING(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_UCHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__UCHAR(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_UINT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__UINT(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_UINTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__UINT_POINTER(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_ULONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__ULONG(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_VARIANT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__VARIANT(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A marshaller for a `GCClosure` with a callback of type
/// `void (*callback) (gpointer instance, gpointer user_data)`.
@inlinable public func cclosureMarshalVOID_VOID<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_VOID__VOID(closure.closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// A generic marshaller function implemented via
/// [libffi](http://sourceware.org/libffi/).
/// 
/// Normally this function is not passed explicitly to `g_signal_new()`,
/// but used automatically by GLib when specifying a `nil` marshaller.
@inlinable public func cclosureMarshalGeneric<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, returnGvalue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer! = nil, marshalData: gpointer! = nil) {
    g_cclosure_marshal_generic(closure.closure_ptr, returnGvalue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)

}




/// Creates a new closure which invokes `callback_func` with `user_data` as
/// the last parameter.
/// 
/// `destroy_data` will be called as a finalize notifier on the `GClosure`.
@inlinable public func cclosureNew(callbackFunc: GCallback! = nil, userData: gpointer! = nil, destroyData: GClosureNotify?) -> ClosureRef! {
    guard let rv = ClosureRef(gconstpointer: gconstpointer(g_cclosure_new(callbackFunc, userData, destroyData))) else { return nil }
    return rv
}




/// A variant of `g_cclosure_new()` which uses `object` as `user_data` and
/// calls `g_object_watch_closure()` on `object` and the created
/// closure. This function is useful when you have a callback closely
/// associated with a `GObject`, and want the callback to no longer run
/// after the object is is freed.
@inlinable public func cclosureNewObject<ObjectT: ObjectProtocol>(callbackFunc: @escaping GCallback, object: ObjectT) -> ClosureRef! {
    guard let rv = ClosureRef(gconstpointer: gconstpointer(g_cclosure_new_object(callbackFunc, object.object_ptr))) else { return nil }
    return rv
}




/// A variant of `g_cclosure_new_swap()` which uses `object` as `user_data`
/// and calls `g_object_watch_closure()` on `object` and the created
/// closure. This function is useful when you have a callback closely
/// associated with a `GObject`, and want the callback to no longer run
/// after the object is is freed.
@inlinable public func cclosureNewObjectSwap<ObjectT: ObjectProtocol>(callbackFunc: @escaping GCallback, object: ObjectT) -> ClosureRef! {
    guard let rv = ClosureRef(gconstpointer: gconstpointer(g_cclosure_new_object_swap(callbackFunc, object.object_ptr))) else { return nil }
    return rv
}




/// Creates a new closure which invokes `callback_func` with `user_data` as
/// the first parameter.
/// 
/// `destroy_data` will be called as a finalize notifier on the `GClosure`.
@inlinable public func cclosureNewSwap(callbackFunc: GCallback! = nil, userData: gpointer! = nil, destroyData: GClosureNotify?) -> ClosureRef! {
    guard let rv = ClosureRef(gconstpointer: gconstpointer(g_cclosure_new_swap(callbackFunc, userData, destroyData))) else { return nil }
    return rv
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
@inlinable public func clearObject(objectPtr: UnsafeMutablePointer<UnsafeMutablePointer<GObject>?>!) {
    g_clear_object(objectPtr)

}




/// Disconnects a handler from `instance` so it will not be called during
/// any future or currently ongoing emissions of the signal it has been
/// connected to. The `handler_id_ptr` is then set to zero, which is never a valid handler ID value (see `g_signal_connect()`).
/// 
/// If the handler ID is 0 then this function does nothing.
/// 
/// A macro is also included that allows this function to be used without
/// pointer casts.
@inlinable public func clearSignalHandler<ObjectT: ObjectProtocol>(handlerIDPtr: UnsafeMutablePointer<gulong>!, instance: ObjectT) {
    g_clear_signal_handler(handlerIDPtr, instance.object_ptr)

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
@inlinable public func enumCompleteTypeInfo<EnumValueT: EnumValueProtocol, TypeInfoT: TypeInfoProtocol>(gEnumType: GType, info: TypeInfoT, constValues: EnumValueT) {
    g_enum_complete_type_info(gEnumType, info._ptr, constValues._ptr)

}




/// Returns the `GEnumValue` for a value.
@inlinable public func enumGetValue<EnumClassT: EnumClassProtocol>(enumClass: EnumClassT, value: Int) -> EnumValueRef! {
    guard let rv = EnumValueRef(gconstpointer: gconstpointer(g_enum_get_value(enumClass._ptr, gint(value)))) else { return nil }
    return rv
}




/// Looks up a `GEnumValue` by name.
@inlinable public func enumGetValueByName<EnumClassT: EnumClassProtocol>(enumClass: EnumClassT, name: UnsafePointer<gchar>!) -> EnumValueRef! {
    guard let rv = EnumValueRef(gconstpointer: gconstpointer(g_enum_get_value_by_name(enumClass._ptr, name))) else { return nil }
    return rv
}




/// Looks up a `GEnumValue` by nickname.
@inlinable public func enumGetValueByNick<EnumClassT: EnumClassProtocol>(enumClass: EnumClassT, nick: UnsafePointer<gchar>!) -> EnumValueRef! {
    guard let rv = EnumValueRef(gconstpointer: gconstpointer(g_enum_get_value_by_nick(enumClass._ptr, nick))) else { return nil }
    return rv
}




/// Registers a new static enumeration type with the name `name`.
/// 
/// It is normally more convenient to let [glib-mkenums](#glib-mkenums),
/// generate a `my_enum_get_type()` function from a usual C enumeration
/// definition  than to write one yourself using `g_enum_register_static()`.
@inlinable public func enumRegisterStatic<EnumValueT: EnumValueProtocol>(name: UnsafePointer<gchar>!, constStaticValues: EnumValueT) -> GType {
    let rv = g_enum_register_static(name, constStaticValues._ptr)
    return rv
}




/// Pretty-prints `value` in the form of the enum’s name.
/// 
/// This is intended to be used for debugging purposes. The format of the output
/// may change in the future.
@inlinable public func enumToString(gEnumType: GType, value: Int) -> String! {
    guard let rv = g_enum_to_string(gEnumType, gint(value)).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// This function is meant to be called from the `complete_type_info()`
/// function of a `GTypePlugin` implementation, see the example for
/// `g_enum_complete_type_info()` above.
@inlinable public func flagsCompleteTypeInfo<FlagsValueT: FlagsValueProtocol, TypeInfoT: TypeInfoProtocol>(gFlagsType: GType, info: TypeInfoT, constValues: FlagsValueT) {
    g_flags_complete_type_info(gFlagsType, info._ptr, constValues._ptr)

}




/// Returns the first `GFlagsValue` which is set in `value`.
@inlinable public func flagsGetFirstValue<FlagsClassT: FlagsClassProtocol>(flagsClass: FlagsClassT, value: Int) -> FlagsValueRef! {
    guard let rv = FlagsValueRef(gconstpointer: gconstpointer(g_flags_get_first_value(flagsClass._ptr, guint(value)))) else { return nil }
    return rv
}




/// Looks up a `GFlagsValue` by name.
@inlinable public func flagsGetValueByName<FlagsClassT: FlagsClassProtocol>(flagsClass: FlagsClassT, name: UnsafePointer<gchar>!) -> FlagsValueRef! {
    guard let rv = FlagsValueRef(gconstpointer: gconstpointer(g_flags_get_value_by_name(flagsClass._ptr, name))) else { return nil }
    return rv
}




/// Looks up a `GFlagsValue` by nickname.
@inlinable public func flagsGetValueByNick<FlagsClassT: FlagsClassProtocol>(flagsClass: FlagsClassT, nick: UnsafePointer<gchar>!) -> FlagsValueRef! {
    guard let rv = FlagsValueRef(gconstpointer: gconstpointer(g_flags_get_value_by_nick(flagsClass._ptr, nick))) else { return nil }
    return rv
}




/// Registers a new static flags type with the name `name`.
/// 
/// It is normally more convenient to let [glib-mkenums](#glib-mkenums)
/// generate a `my_flags_get_type()` function from a usual C enumeration
/// definition than to write one yourself using `g_flags_register_static()`.
@inlinable public func flagsRegisterStatic<FlagsValueT: FlagsValueProtocol>(name: UnsafePointer<gchar>!, constStaticValues: FlagsValueT) -> GType {
    let rv = g_flags_register_static(name, constStaticValues._ptr)
    return rv
}




/// Pretty-prints `value` in the form of the flag names separated by ` | ` and
/// sorted. Any extra bits will be shown at the end as a hexadecimal number.
/// 
/// This is intended to be used for debugging purposes. The format of the output
/// may change in the future.
@inlinable public func flagsToString(flagsType: GType, value: Int) -> String! {
    guard let rv = g_flags_to_string(flagsType, guint(value)).map({ String(cString: $0) }) else { return nil }
    return rv
}




@inlinable public func gtypeGetType() -> GType {
    let rv = g_gtype_get_type()
    return rv
}




/// Creates a new `GParamSpecBoolean` instance specifying a `G_TYPE_BOOLEAN`
/// property. In many cases, it may be more appropriate to use an enum with
/// `g_param_spec_enum()`, both to improve code clarity by using explicitly named
/// values, and to allow for more values to be added in future without breaking
/// API.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecBoolean(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, defaultValue: Bool, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_boolean(name, nick, blurb, gboolean((defaultValue) ? 1 : 0), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecBoxed` instance specifying a `G_TYPE_BOXED`
/// derived property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecBoxed(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, boxedType: GType, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_boxed(name, nick, blurb, boxedType, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecChar` instance specifying a `G_TYPE_CHAR` property.
@inlinable public func paramSpecChar(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: gint8, maximum: gint8, defaultValue: gint8, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_char(name, nick, blurb, minimum, maximum, defaultValue, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecDouble` instance specifying a `G_TYPE_DOUBLE`
/// property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecDouble(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: Double, maximum: Double, defaultValue: Double, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_double(name, nick, blurb, gdouble(minimum), gdouble(maximum), gdouble(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecEnum` instance specifying a `G_TYPE_ENUM`
/// property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecEnum(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, enumType: GType, defaultValue: Int, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_enum(name, nick, blurb, enumType, gint(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecFlags` instance specifying a `G_TYPE_FLAGS`
/// property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecFlags(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flagsType: GType, defaultValue: Int, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_flags(name, nick, blurb, flagsType, guint(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecFloat` instance specifying a `G_TYPE_FLOAT` property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecFloat(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: Double, maximum: Double, defaultValue: Double, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_float(name, nick, blurb, gfloat(minimum), gfloat(maximum), gfloat(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecGType` instance specifying a
/// `G_TYPE_GTYPE` property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecGtype(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, isAType: GType, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_gtype(name, nick, blurb, isAType, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecInt` instance specifying a `G_TYPE_INT` property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecInt(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: Int, maximum: Int, defaultValue: Int, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_int(name, nick, blurb, gint(minimum), gint(maximum), gint(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecInt64` instance specifying a `G_TYPE_INT64` property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecInt64(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: gint64, maximum: gint64, defaultValue: gint64, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_int64(name, nick, blurb, minimum, maximum, defaultValue, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecLong` instance specifying a `G_TYPE_LONG` property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecLong(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: Int, maximum: Int, defaultValue: Int, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_long(name, nick, blurb, glong(minimum), glong(maximum), glong(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecBoxed` instance specifying a `G_TYPE_OBJECT`
/// derived property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecObject(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, objectType: GType, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_object(name, nick, blurb, objectType, flags.value))) else { return nil }
    return rv
}




/// Creates a new property of type `GParamSpecOverride`. This is used
/// to direct operations to another paramspec, and will not be directly
/// useful unless you are implementing a new base type similar to GObject.
@inlinable public func paramSpecOverride<ParamSpecT: ParamSpecProtocol>(name: UnsafePointer<gchar>!, overridden: ParamSpecT) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_override(name, overridden.param_spec_ptr))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecParam` instance specifying a `G_TYPE_PARAM`
/// property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecParam(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, paramType: GType, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_param(name, nick, blurb, paramType, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecPointer` instance specifying a pointer property.
/// Where possible, it is better to use `g_param_spec_object()` or
/// `g_param_spec_boxed()` to expose memory management information.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecPointer(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_pointer(name, nick, blurb, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecPool`.
/// 
/// If `type_prefixing` is `true`, lookups in the newly created pool will
/// allow to specify the owner as a colon-separated prefix of the
/// property name, like "GtkContainer:border-width". This feature is
/// deprecated, so you should always set `type_prefixing` to `false`.
@inlinable public func paramSpecPoolNew(typePrefixing: Bool) -> ParamSpecPoolRef! {
    guard let rv = ParamSpecPoolRef(gconstpointer: gconstpointer(g_param_spec_pool_new(gboolean((typePrefixing) ? 1 : 0)))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecString` instance.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecString(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, defaultValue: UnsafePointer<gchar>? = nil, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_string(name, nick, blurb, defaultValue, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecUChar` instance specifying a `G_TYPE_UCHAR` property.
@inlinable public func paramSpecUchar(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: guint8, maximum: guint8, defaultValue: guint8, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_uchar(name, nick, blurb, minimum, maximum, defaultValue, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecUInt` instance specifying a `G_TYPE_UINT` property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecUint(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: Int, maximum: Int, defaultValue: Int, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_uint(name, nick, blurb, guint(minimum), guint(maximum), guint(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecUInt64` instance specifying a `G_TYPE_UINT64`
/// property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecUint64(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: guint64, maximum: guint64, defaultValue: guint64, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_uint64(name, nick, blurb, minimum, maximum, defaultValue, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecULong` instance specifying a `G_TYPE_ULONG`
/// property.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecUlong(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, minimum: Int, maximum: Int, defaultValue: Int, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_ulong(name, nick, blurb, gulong(minimum), gulong(maximum), gulong(defaultValue), flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecUnichar` instance specifying a `G_TYPE_UINT`
/// property. `GValue` structures for this property can be accessed with
/// `g_value_set_uint()` and `g_value_get_uint()`.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecUnichar(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, defaultValue: gunichar, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_unichar(name, nick, blurb, defaultValue, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecValueArray` instance specifying a
/// `G_TYPE_VALUE_ARRAY` property. `G_TYPE_VALUE_ARRAY` is a
/// `G_TYPE_BOXED` type, as such, `GValue` structures for this property
/// can be accessed with `g_value_set_boxed()` and `g_value_get_boxed()`.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecValueArray<ParamSpecT: ParamSpecProtocol>(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, elementSpec: ParamSpecT, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_value_array(name, nick, blurb, elementSpec.param_spec_ptr, flags.value))) else { return nil }
    return rv
}




/// Creates a new `GParamSpecVariant` instance specifying a `GVariant`
/// property.
/// 
/// If `default_value` is floating, it is consumed.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecVariant<VariantTypeT: GLib.VariantTypeProtocol>(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, type: VariantTypeT, defaultValue: GLib.VariantRef? = nil, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_variant(name, nick, blurb, type.variant_type_ptr, defaultValue?.variant_ptr, flags.value))) else { return nil }
    return rv
}
/// Creates a new `GParamSpecVariant` instance specifying a `GVariant`
/// property.
/// 
/// If `default_value` is floating, it is consumed.
/// 
/// See `g_param_spec_internal()` for details on property names.
@inlinable public func paramSpecVariant<VariantT: GLib.VariantProtocol, VariantTypeT: GLib.VariantTypeProtocol>(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, type: VariantTypeT, defaultValue: VariantT?, flags: ParamFlags) -> ParamSpecRef! {
    guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_variant(name, nick, blurb, type.variant_type_ptr, defaultValue?.variant_ptr, flags.value))) else { return nil }
    return rv
}




/// Registers `name` as the name of a new static type derived from
/// `G_TYPE_PARAM`. The type system uses the information contained in
/// the `GParamSpecTypeInfo` structure pointed to by `info` to manage the
/// `GParamSpec` type and its instances.
@inlinable public func paramTypeRegisterStatic<ParamSpecTypeInfoT: ParamSpecTypeInfoProtocol>(name: UnsafePointer<gchar>!, pspecInfo: ParamSpecTypeInfoT) -> GType {
    let rv = g_param_type_register_static(name, pspecInfo._ptr)
    return rv
}




/// Transforms `src_value` into `dest_value` if possible, and then
/// validates `dest_value`, in order for it to conform to `pspec`.  If
/// `strict_validation` is `true` this function will only succeed if the
/// transformed `dest_value` complied to `pspec` without modifications.
/// 
/// See also `g_value_type_transformable()`, `g_value_transform()` and
/// `g_param_value_validate()`.
@inlinable public func paramValueConvert<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, srcValue: ValueT, destValue: ValueT, strictValidation: Bool) -> Bool {
    let rv = ((g_param_value_convert(pspec.param_spec_ptr, srcValue.value_ptr, destValue.value_ptr, gboolean((strictValidation) ? 1 : 0))) != 0)
    return rv
}




/// Checks whether `value` contains the default value as specified in `pspec`.
@inlinable public func paramValueDefaults<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, value: ValueT) -> Bool {
    let rv = ((g_param_value_defaults(pspec.param_spec_ptr, value.value_ptr)) != 0)
    return rv
}




/// Sets `value` to its default value as specified in `pspec`.
@inlinable public func paramValueSetDefault<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, value: ValueT) {
    g_param_value_set_default(pspec.param_spec_ptr, value.value_ptr)

}




/// Ensures that the contents of `value` comply with the specifications
/// set out by `pspec`. For example, a `GParamSpecInt` might require
/// that integers stored in `value` may not be smaller than -42 and not be
/// greater than +42. If `value` contains an integer outside of this range,
/// it is modified accordingly, so the resulting value will fit into the
/// range -42 .. +42.
@inlinable public func paramValueValidate<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, value: ValueT) -> Bool {
    let rv = ((g_param_value_validate(pspec.param_spec_ptr, value.value_ptr)) != 0)
    return rv
}




/// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
/// if `value1` is found to be less than, equal to or greater than `value2`,
/// respectively.
@inlinable public func paramValuesCmp<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, value1: ValueT, value2: ValueT) -> Int {
    let rv = Int(g_param_values_cmp(pspec.param_spec_ptr, value1.value_ptr, value2.value_ptr))
    return rv
}




/// Creates a new `G_TYPE_POINTER` derived type id for a new
/// pointer type with name `name`.
@inlinable public func pointerTypeRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
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
@inlinable public func signalAccumulatorFirstWins<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, returnAccu: ValueT, handlerReturn: ValueT, dummy: gpointer! = nil) -> Bool {
    let rv = ((g_signal_accumulator_first_wins(ihint._ptr, returnAccu.value_ptr, handlerReturn.value_ptr, dummy)) != 0)
    return rv
}




/// A predefined `GSignalAccumulator` for signals that return a
/// boolean values. The behavior that this accumulator gives is
/// that a return of `true` stops the signal emission: no further
/// callbacks will be invoked, while a return of `false` allows
/// the emission to continue. The idea here is that a `true` return
/// indicates that the callback handled the signal, and no further
/// handling is needed.
@inlinable public func signalAccumulatorTrueHandled<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, returnAccu: ValueT, handlerReturn: ValueT, dummy: gpointer! = nil) -> Bool {
    let rv = ((g_signal_accumulator_true_handled(ihint._ptr, returnAccu.value_ptr, handlerReturn.value_ptr, dummy)) != 0)
    return rv
}




/// Adds an emission hook for a signal, which will get called for any emission
/// of that signal, independent of the instance. This is possible only
/// for signals which don't have `G_SIGNAL_NO_HOOKS` flag set.
@inlinable public func signalAddEmissionHook(signalID: Int, detail: GQuark, hookFunc: @escaping GSignalEmissionHook, hookData: gpointer! = nil, dataDestroy: GDestroyNotify?) -> Int {
    let rv = Int(g_signal_add_emission_hook(guint(signalID), detail, hookFunc, hookData, dataDestroy))
    return rv
}




/// Calls the original class closure of a signal. This function should only
/// be called from an overridden class closure; see
/// `g_signal_override_class_closure()` and
/// `g_signal_override_class_handler()`.
@inlinable public func signalChainFromOverridden<ValueT: ValueProtocol>(instanceAndParams: UnsafePointer<GValue>!, returnValue: ValueT) {
    g_signal_chain_from_overridden(instanceAndParams, returnValue.value_ptr)

}





// *** signalChainFromOverriddenHandler() is not available because it has a varargs (...) parameter!





/// Connects a closure to a signal for a particular object.
@inlinable public func signalConnectClosure<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(instance: ObjectT, detailedSignal: UnsafePointer<gchar>!, closure: ClosureT, after: Bool) -> Int {
    let rv = Int(g_signal_connect_closure(instance.object_ptr, detailedSignal, closure.closure_ptr, gboolean((after) ? 1 : 0)))
    return rv
}




/// Connects a closure to a signal for a particular object.
@inlinable public func signalConnectClosureByID<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(instance: ObjectT, signalID: Int, detail: GQuark, closure: ClosureT, after: Bool) -> Int {
    let rv = Int(g_signal_connect_closure_by_id(instance.object_ptr, guint(signalID), detail, closure.closure_ptr, gboolean((after) ? 1 : 0)))
    return rv
}




/// Connects a `GCallback` function to a signal for a particular object. Similar
/// to `g_signal_connect()`, but allows to provide a `GClosureNotify` for the data
/// which will be called when the signal handler is disconnected and no longer
/// used. Specify `connect_flags` if you need ``..._after()`` or
/// ``..._swapped()`` variants of this function.
@inlinable public func signalConnectData<ObjectT: ObjectProtocol>(instance: ObjectT, detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, data: gpointer! = nil, destroyData: GClosureNotify?, connectFlags: ConnectFlags) -> Int {
    let rv = Int(g_signal_connect_data(instance.object_ptr, detailedSignal, cHandler, data, destroyData, connectFlags.value))
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
@inlinable public func signalConnectObject<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, gobject: ObjectRef? = nil, connectFlags: ConnectFlags) -> Int {
    let rv = Int(g_signal_connect_object(instance._ptr, detailedSignal, cHandler, gobject?.object_ptr, connectFlags.value))
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
@inlinable public func signalConnectObject<ObjectT: ObjectProtocol, TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, detailedSignal: UnsafePointer<gchar>!, cHandler: @escaping GCallback, gobject: ObjectT?, connectFlags: ConnectFlags) -> Int {
    let rv = Int(g_signal_connect_object(instance._ptr, detailedSignal, cHandler, gobject?.object_ptr, connectFlags.value))
    return rv
}





// *** signalEmit() is not available because it has a varargs (...) parameter!






// *** signalEmitByName() is not available because it has a varargs (...) parameter!





/// Emits a signal.
/// 
/// Note that `g_signal_emit_valist()` resets the return value to the default
/// if no handlers are connected, in contrast to `g_signal_emitv()`.
@inlinable public func signalEmitValist<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, signalID: Int, detail: GQuark, varArgs: CVaListPointer) {
    g_signal_emit_valist(instance._ptr, guint(signalID), detail, varArgs)

}




/// Emits a signal.
/// 
/// Note that `g_signal_emitv()` doesn't change `return_value` if no handlers are
/// connected, in contrast to `g_signal_emit()` and `g_signal_emit_valist()`.
@inlinable public func signalEmitv<ValueT: ValueProtocol>(instanceAndParams: UnsafePointer<GValue>!, signalID: Int, detail: GQuark, returnValue: ValueT) {
    g_signal_emitv(instanceAndParams, guint(signalID), detail, returnValue.value_ptr)

}




/// Returns the invocation hint of the innermost signal emission of instance.
@inlinable public func signalGetInvocationHint<ObjectT: ObjectProtocol>(instance: ObjectT) -> SignalInvocationHintRef! {
    guard let rv = SignalInvocationHintRef(gconstpointer: gconstpointer(g_signal_get_invocation_hint(instance.object_ptr))) else { return nil }
    return rv
}




/// Blocks a handler of an instance so it will not be called during any
/// signal emissions unless it is unblocked again. Thus "blocking" a
/// signal handler means to temporarily deactive it, a signal handler
/// has to be unblocked exactly the same amount of times it has been
/// blocked before to become active again.
/// 
/// The `handler_id` has to be a valid signal handler id, connected to a
/// signal of `instance`.
@inlinable public func signalHandlerBlock<ObjectT: ObjectProtocol>(instance: ObjectT, handlerID: Int) {
    g_signal_handler_block(instance.object_ptr, gulong(handlerID))

}




/// Disconnects a handler from an instance so it will not be called during
/// any future or currently ongoing emissions of the signal it has been
/// connected to. The `handler_id` becomes invalid and may be reused.
/// 
/// The `handler_id` has to be a valid signal handler id, connected to a
/// signal of `instance`.
@inlinable public func signalHandlerDisconnect<ObjectT: ObjectProtocol>(instance: ObjectT, handlerID: Int) {
    g_signal_handler_disconnect(instance.object_ptr, gulong(handlerID))

}




/// Finds the first signal handler that matches certain selection criteria.
/// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
/// flags, and the criteria values are passed as arguments.
/// The match `mask` has to be non-0 for successful matches.
/// If no handler was found, 0 is returned.
@inlinable public func signalHandlerFind<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handler_find(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
    return rv
}
/// Finds the first signal handler that matches certain selection criteria.
/// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
/// flags, and the criteria values are passed as arguments.
/// The match `mask` has to be non-0 for successful matches.
/// If no handler was found, 0 is returned.
@inlinable public func signalHandlerFind<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handler_find(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
    return rv
}




/// Returns whether `handler_id` is the ID of a handler connected to `instance`.
@inlinable public func signalHandlerIsConnected<ObjectT: ObjectProtocol>(instance: ObjectT, handlerID: Int) -> Bool {
    let rv = ((g_signal_handler_is_connected(instance.object_ptr, gulong(handlerID))) != 0)
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
@inlinable public func signalHandlerUnblock<ObjectT: ObjectProtocol>(instance: ObjectT, handlerID: Int) {
    g_signal_handler_unblock(instance.object_ptr, gulong(handlerID))

}




/// Blocks all handlers on an instance that match a certain selection criteria.
/// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
/// flags, and the criteria values are passed as arguments.
/// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
/// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
/// If no handlers were found, 0 is returned, the number of blocked handlers
/// otherwise.
@inlinable public func signalHandlersBlockMatched<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handlers_block_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
    return rv
}
/// Blocks all handlers on an instance that match a certain selection criteria.
/// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
/// flags, and the criteria values are passed as arguments.
/// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
/// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
/// If no handlers were found, 0 is returned, the number of blocked handlers
/// otherwise.
@inlinable public func signalHandlersBlockMatched<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handlers_block_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
    return rv
}




/// Destroy all signal handlers of a type instance. This function is
/// an implementation detail of the `GObject` dispose implementation,
/// and should not be used outside of the type system.
@inlinable public func signalHandlersDestroy<ObjectT: ObjectProtocol>(instance: ObjectT) {
    g_signal_handlers_destroy(instance.object_ptr)

}




/// Disconnects all handlers on an instance that match a certain
/// selection criteria. The criteria mask is passed as an OR-ed
/// combination of `GSignalMatchType` flags, and the criteria values are
/// passed as arguments.  Passing at least one of the
/// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
/// `G_SIGNAL_MATCH_DATA` match flags is required for successful
/// matches.  If no handlers were found, 0 is returned, the number of
/// disconnected handlers otherwise.
@inlinable public func signalHandlersDisconnectMatched<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handlers_disconnect_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
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
@inlinable public func signalHandlersDisconnectMatched<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handlers_disconnect_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
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
@inlinable public func signalHandlersUnblockMatched<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureRef? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handlers_unblock_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
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
@inlinable public func signalHandlersUnblockMatched<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, closure: ClosureT?, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
    let rv = Int(g_signal_handlers_unblock_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure?.closure_ptr, `func`, data))
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
@inlinable public func signalHasHandlerPending<ObjectT: ObjectProtocol>(instance: ObjectT, signalID: Int, detail: GQuark, mayBeBlocked: Bool) -> Bool {
    let rv = ((g_signal_has_handler_pending(instance.object_ptr, guint(signalID), detail, gboolean((mayBeBlocked) ? 1 : 0))) != 0)
    return rv
}




/// Lists the signals by id that a certain instance or interface type
/// created. Further information about the signals can be acquired through
/// `g_signal_query()`.
@inlinable public func signalListIDs(itype: GType, nIDs: UnsafeMutablePointer<guint>!) -> UnsafeMutablePointer<guint>! {
    guard let rv = g_signal_list_ids(itype, nIDs) else { return nil }
    return rv
}




/// Given the name of the signal and the type of object it connects to, gets
/// the signal's identifying integer. Emitting the signal by number is
/// somewhat faster than using the name each time.
/// 
/// Also tries the ancestors of the given type.
/// 
/// The type class passed as `itype` must already have been instantiated (for
/// example, using `g_type_class_ref()`) for this function to work, as signals are
/// always installed during class initialization.
/// 
/// See `g_signal_new()` for details on allowed signal names.
@inlinable public func signalLookup(name: UnsafePointer<gchar>!, itype: GType) -> Int {
    let rv = Int(g_signal_lookup(name, itype))
    return rv
}




/// Given the signal's identifier, finds its name.
/// 
/// Two different signals may have the same name, if they have differing types.
@inlinable public func signalName(signalID: Int) -> String! {
    guard let rv = g_signal_name(guint(signalID)).map({ String(cString: $0) }) else { return nil }
    return rv
}





// *** signalNew() is not available because it has a varargs (...) parameter!






// *** signalNewClassHandler() is not available because it has a varargs (...) parameter!





/// Creates a new signal. (This is usually done in the class initializer.)
/// 
/// See `g_signal_new()` for details on allowed signal names.
/// 
/// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
/// the marshaller for this signal.
@inlinable public func signalNewValist<ClosureT: ClosureProtocol>(signalName: UnsafePointer<gchar>!, itype: GType, signalFlags: SignalFlags, classClosure: ClosureT, accumulator: @escaping GSignalAccumulator, accuData: gpointer! = nil, cMarshaller: GSignalCMarshaller! = nil, returnType: GType, nParams: Int, args: CVaListPointer) -> Int {
    let rv = Int(g_signal_new_valist(signalName, itype, signalFlags.value, classClosure.closure_ptr, accumulator, accuData, cMarshaller, returnType, guint(nParams), args))
    return rv
}




/// Creates a new signal. (This is usually done in the class initializer.)
/// 
/// See `g_signal_new()` for details on allowed signal names.
/// 
/// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
/// the marshaller for this signal.
@inlinable public func signalNewv(signalName: UnsafePointer<gchar>!, itype: GType, signalFlags: SignalFlags, classClosure: ClosureRef? = nil, accumulator: GSignalAccumulator! = nil, accuData: gpointer! = nil, cMarshaller: GSignalCMarshaller! = nil, returnType: GType, nParams: Int, paramTypes: UnsafeMutablePointer<GType>!) -> Int {
    let rv = Int(g_signal_newv(signalName, itype, signalFlags.value, classClosure?.closure_ptr, accumulator, accuData, cMarshaller, returnType, guint(nParams), paramTypes))
    return rv
}
/// Creates a new signal. (This is usually done in the class initializer.)
/// 
/// See `g_signal_new()` for details on allowed signal names.
/// 
/// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
/// the marshaller for this signal.
@inlinable public func signalNewv<ClosureT: ClosureProtocol>(signalName: UnsafePointer<gchar>!, itype: GType, signalFlags: SignalFlags, classClosure: ClosureT?, accumulator: GSignalAccumulator! = nil, accuData: gpointer! = nil, cMarshaller: GSignalCMarshaller! = nil, returnType: GType, nParams: Int, paramTypes: UnsafeMutablePointer<GType>!) -> Int {
    let rv = Int(g_signal_newv(signalName, itype, signalFlags.value, classClosure?.closure_ptr, accumulator, accuData, cMarshaller, returnType, guint(nParams), paramTypes))
    return rv
}




/// Overrides the class closure (i.e. the default handler) for the given signal
/// for emissions on instances of `instance_type`. `instance_type` must be derived
/// from the type to which the signal belongs.
/// 
/// See `g_signal_chain_from_overridden()` and
/// `g_signal_chain_from_overridden_handler()` for how to chain up to the
/// parent class closure from inside the overridden one.
@inlinable public func signalOverrideClassClosure<ClosureT: ClosureProtocol>(signalID: Int, instanceType: GType, classClosure: ClosureT) {
    g_signal_override_class_closure(guint(signalID), instanceType, classClosure.closure_ptr)

}




/// Overrides the class closure (i.e. the default handler) for the
/// given signal for emissions on instances of `instance_type` with
/// callback `class_handler`. `instance_type` must be derived from the
/// type to which the signal belongs.
/// 
/// See `g_signal_chain_from_overridden()` and
/// `g_signal_chain_from_overridden_handler()` for how to chain up to the
/// parent class closure from inside the overridden one.
@inlinable public func signalOverrideClassHandler(signalName: UnsafePointer<gchar>!, instanceType: GType, classHandler: @escaping GCallback) {
    g_signal_override_class_handler(signalName, instanceType, classHandler)

}




/// Internal function to parse a signal name into its `signal_id`
/// and `detail` quark.
@inlinable public func signalParseName(detailedSignal: UnsafePointer<gchar>!, itype: GType, signalIDP: UnsafeMutablePointer<guint>!, detailP: UnsafeMutablePointer<GQuark>!, forceDetailQuark: Bool) -> Bool {
    let rv = ((g_signal_parse_name(detailedSignal, itype, signalIDP, detailP, gboolean((forceDetailQuark) ? 1 : 0))) != 0)
    return rv
}




/// Queries the signal system for in-depth information about a
/// specific signal. This function will fill in a user-provided
/// structure to hold signal-specific information. If an invalid
/// signal id is passed in, the `signal_id` member of the `GSignalQuery`
/// is 0. All members filled into the `GSignalQuery` structure should
/// be considered constant and have to be left untouched.
@inlinable public func signalQuery<SignalQueryT: SignalQueryProtocol>(signalID: Int, query: SignalQueryT) {
    g_signal_query(guint(signalID), query._ptr)

}




/// Deletes an emission hook.
@inlinable public func signalRemoveEmissionHook(signalID: Int, hookID: Int) {
    g_signal_remove_emission_hook(guint(signalID), gulong(hookID))

}





// *** signalSetVaMarshaller() causes a syntax error and is therefore not available!





/// Stops a signal's current emission.
/// 
/// This will prevent the default method from running, if the signal was
/// `G_SIGNAL_RUN_LAST` and you connected normally (i.e. without the "after"
/// flag).
/// 
/// Prints a warning if used on a signal which isn't being emitted.
@inlinable public func signalStopEmission<ObjectT: ObjectProtocol>(instance: ObjectT, signalID: Int, detail: GQuark) {
    g_signal_stop_emission(instance.object_ptr, guint(signalID), detail)

}




/// Stops a signal's current emission.
/// 
/// This is just like `g_signal_stop_emission()` except it will look up the
/// signal id for you.
@inlinable public func signalStopEmissionByName<ObjectT: ObjectProtocol>(instance: ObjectT, detailedSignal: UnsafePointer<gchar>!) {
    g_signal_stop_emission_by_name(instance.object_ptr, detailedSignal)

}




/// Creates a new closure which invokes the function found at the offset
/// `struct_offset` in the class structure of the interface or classed type
/// identified by `itype`.
@inlinable public func signalTypeCclosureNew(itype: GType, structOffset: Int) -> ClosureRef! {
    guard let rv = ClosureRef(gconstpointer: gconstpointer(g_signal_type_cclosure_new(itype, guint(structOffset)))) else { return nil }
    return rv
}




/// Set the callback for a source as a `GClosure`.
/// 
/// If the source is not one of the standard GLib types, the `closure_callback`
/// and `closure_marshal` fields of the `GSourceFuncs` structure must have been
/// filled in with pointers to appropriate functions.
@inlinable public func sourceSetClosure<ClosureT: ClosureProtocol, SourceT: GLib.SourceProtocol>(source: SourceT, closure: ClosureT) {
    g_source_set_closure(source.source_ptr, closure.closure_ptr)

}




/// Sets a dummy callback for `source`. The callback will do nothing, and
/// if the source expects a `gboolean` return value, it will return `true`.
/// (If the source expects any other type of return value, it will return
/// a 0/`nil` value; whatever `g_value_init()` initializes a `GValue` to for
/// that type.)
/// 
/// If the source is not one of the standard GLib types, the
/// `closure_callback` and `closure_marshal` fields of the `GSourceFuncs`
/// structure must have been filled in with pointers to appropriate
/// functions.
@inlinable public func sourceSetDummyCallback<SourceT: GLib.SourceProtocol>(source: SourceT) {
    g_source_set_dummy_callback(source.source_ptr)

}




/// Return a newly allocated string, which describes the contents of a
/// `GValue`.  The main purpose of this function is to describe `GValue`
/// contents for debugging output, the way in which the contents are
/// described may change between different GLib versions.
@inlinable public func strdupValueContents<ValueT: ValueProtocol>(value: ValueT) -> String! {
    guard let rv = g_strdup_value_contents(value.value_ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Adds a `GTypeClassCacheFunc` to be called before the reference count of a
/// class goes from one to zero. This can be used to prevent premature class
/// destruction. All installed `GTypeClassCacheFunc` functions will be chained
/// until one of them returns `true`. The functions have to check the class id
/// passed in to figure whether they actually want to cache the class of this
/// type, since all classes are routed through the same `GTypeClassCacheFunc`
/// chain.
@inlinable public func typeAddClassCacheFunc(cacheData: gpointer! = nil, cacheFunc: GTypeClassCacheFunc?) {
    g_type_add_class_cache_func(cacheData, cacheFunc)

}




/// Registers a private class structure for a classed type;
/// when the class is allocated, the private structures for
/// the class and all of its parent types are allocated
/// sequentially in the same memory block as the public
/// structures, and are zero-filled.
/// 
/// This function should be called in the
/// type's `get_type()` function after the type is registered.
/// The private structure can be retrieved using the
/// `G_TYPE_CLASS_GET_PRIVATE()` macro.
@inlinable public func typeAddClassPrivate(classType: GType, privateSize: Int) {
    g_type_add_class_private(classType, gsize(privateSize))

}




@inlinable public func typeAddInstancePrivate(classType: GType, privateSize: Int) -> Int {
    let rv = Int(g_type_add_instance_private(classType, gsize(privateSize)))
    return rv
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
@inlinable public func typeAddInterfaceCheck(checkData: gpointer! = nil, checkFunc: GTypeInterfaceCheckFunc?) {
    g_type_add_interface_check(checkData, checkFunc)

}




/// Adds `interface_type` to the dynamic `instantiable_type`. The information
/// contained in the `GTypePlugin` structure pointed to by `plugin`
/// is used to manage the relationship.
@inlinable public func typeAddInterfaceDynamic<TypePluginT: TypePluginProtocol>(instanceType: GType, interfaceType: GType, plugin: TypePluginT) {
    g_type_add_interface_dynamic(instanceType, interfaceType, plugin.type_plugin_ptr)

}




/// Adds `interface_type` to the static `instantiable_type`.
/// The information contained in the `GInterfaceInfo` structure
/// pointed to by `info` is used to manage the relationship.
@inlinable public func typeAddInterfaceStatic<InterfaceInfoT: InterfaceInfoProtocol>(instanceType: GType, interfaceType: GType, info: InterfaceInfoT) {
    g_type_add_interface_static(instanceType, interfaceType, info._ptr)

}




@inlinable public func typeCheckClassCast<TypeClassT: TypeClassProtocol>(gClass: TypeClassT, isAType: GType) -> TypeClassRef! {
    guard let rv = TypeClassRef(gconstpointer: gconstpointer(g_type_check_class_cast(gClass._ptr, isAType))) else { return nil }
    return rv
}




@inlinable public func typeCheckClassIsA<TypeClassT: TypeClassProtocol>(gClass: TypeClassT, isAType: GType) -> Bool {
    let rv = ((g_type_check_class_is_a(gClass._ptr, isAType)) != 0)
    return rv
}




/// Private helper function to aid implementation of the
/// `G_TYPE_CHECK_INSTANCE()` macro.
@inlinable public func typeCheck<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT) -> Bool {
    let rv = ((g_type_check_instance(instance._ptr)) != 0)
    return rv
}




@inlinable public func typeCheckInstanceCast<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, ifaceType: GType) -> TypeInstanceRef! {
    guard let rv = TypeInstanceRef(gconstpointer: gconstpointer(g_type_check_instance_cast(instance._ptr, ifaceType))) else { return nil }
    return rv
}




@inlinable public func typeCheckInstanceIsA<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, ifaceType: GType) -> Bool {
    let rv = ((g_type_check_instance_is_a(instance._ptr, ifaceType)) != 0)
    return rv
}




@inlinable public func typeCheckInstanceIsFundamentallyA<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, fundamentalType: GType) -> Bool {
    let rv = ((g_type_check_instance_is_fundamentally_a(instance._ptr, fundamentalType)) != 0)
    return rv
}




@inlinable public func typeCheckIsValue(type: GType) -> Bool {
    let rv = ((g_type_check_is_value_type(type)) != 0)
    return rv
}




@inlinable public func typeCheck<ValueT: ValueProtocol>(value: ValueT) -> Bool {
    let rv = ((g_type_check_value(value.value_ptr)) != 0)
    return rv
}




@inlinable public func typeCheckValueHolds<ValueT: ValueProtocol>(value: ValueT, type: GType) -> Bool {
    let rv = ((g_type_check_value_holds(value.value_ptr, type)) != 0)
    return rv
}




/// Return a newly allocated and 0-terminated array of type IDs, listing
/// the child types of `type`.
@inlinable public func typeChildren(type: GType, nChildren: UnsafeMutablePointer<guint>! = nil) -> UnsafeMutablePointer<GType>! {
    guard let rv = g_type_children(type, nChildren) else { return nil }
    return rv
}




@inlinable public func typeClassAdjustPrivateOffset(gClass: gpointer! = nil, privateSizeOrOffset: UnsafeMutablePointer<gint>!) {
    g_type_class_adjust_private_offset(gClass, privateSizeOrOffset)

}




/// This function is essentially the same as `g_type_class_ref()`,
/// except that the classes reference count isn't incremented.
/// As a consequence, this function may return `nil` if the class
/// of the type passed in does not currently exist (hasn't been
/// referenced before).
@inlinable public func typeClassPeek(type: GType) -> TypeClassRef! {
    guard let rv = TypeClassRef(gpointer: g_type_class_peek(type)) else { return nil }
    return rv
}




/// A more efficient version of `g_type_class_peek()` which works only for
/// static types.
@inlinable public func typeClassPeekStatic(type: GType) -> TypeClassRef! {
    guard let rv = TypeClassRef(gpointer: g_type_class_peek_static(type)) else { return nil }
    return rv
}




/// Increments the reference count of the class structure belonging to
/// `type`. This function will demand-create the class if it doesn't
/// exist already.
@inlinable public func typeClassRef(type: GType) -> TypeClassRef! {
    guard let rv = TypeClassRef(gpointer: g_type_class_ref(type)) else { return nil }
    return rv
}




/// Creates and initializes an instance of `type` if `type` is valid and
/// can be instantiated. The type system only performs basic allocation
/// and structure setups for instances: actual instance creation should
/// happen through functions supplied by the type's fundamental type
/// implementation.  So use of `g_type_create_instance()` is reserved for
/// implementators of fundamental types only. E.g. instances of the
/// `GObject` hierarchy should be created via `g_object_new()` and never
/// directly through `g_type_create_instance()` which doesn't handle things
/// like singleton objects or object construction.
/// 
/// The extended members of the returned instance are guaranteed to be filled
/// with zeros.
/// 
/// Note: Do not use this function, unless you're implementing a
/// fundamental type. Also language bindings should not use this
/// function, but `g_object_new()` instead.
@inlinable public func typeCreateInstance(type: GType) -> TypeInstanceRef! {
    guard let rv = TypeInstanceRef(gconstpointer: gconstpointer(g_type_create_instance(type))) else { return nil }
    return rv
}




/// If the interface type `g_type` is currently in use, returns its
/// default interface vtable.
@inlinable public func typeDefaultInterfacePeek(gType: GType) -> TypeInterfaceRef! {
    guard let rv = TypeInterfaceRef(gpointer: g_type_default_interface_peek(gType)) else { return nil }
    return rv
}




/// Increments the reference count for the interface type `g_type`,
/// and returns the default interface vtable for the type.
/// 
/// If the type is not currently in use, then the default vtable
/// for the type will be created and initalized by calling
/// the base interface init and default vtable init functions for
/// the type (the `base_init` and `class_init` members of `GTypeInfo`).
/// Calling `g_type_default_interface_ref()` is useful when you
/// want to make sure that signals and properties for an interface
/// have been installed.
@inlinable public func typeDefaultInterfaceRef(gType: GType) -> TypeInterfaceRef! {
    guard let rv = TypeInterfaceRef(gpointer: g_type_default_interface_ref(gType)) else { return nil }
    return rv
}




/// Decrements the reference count for the type corresponding to the
/// interface default vtable `g_iface`. If the type is dynamic, then
/// when no one is using the interface and all references have
/// been released, the finalize function for the interface's default
/// vtable (the `class_finalize` member of `GTypeInfo`) will be called.
@inlinable public func typeDefaultInterfaceUnref<TypeInterfaceT: TypeInterfaceProtocol>(gIface: TypeInterfaceT) {
    g_type_default_interface_unref(gIface._ptr)

}




/// Returns the length of the ancestry of the passed in type. This
/// includes the type itself, so that e.g. a fundamental type has depth 1.
@inlinable public func typeDepth(type: GType) -> Int {
    let rv = Int(g_type_depth(type))
    return rv
}




/// Ensures that the indicated `type` has been registered with the
/// type system, and its `_class_init()` method has been run.
/// 
/// In theory, simply calling the type's `_get_type()` method (or using
/// the corresponding macro) is supposed take care of this. However,
/// `_get_type()` methods are often marked `G_GNUC_CONST` for performance
/// reasons, even though this is technically incorrect (since
/// `G_GNUC_CONST` requires that the function not have side effects,
/// which `_get_type()` methods do on the first call). As a result, if
/// you write a bare call to a `_get_type()` macro, it may get optimized
/// out by the compiler. Using `g_type_ensure()` guarantees that the
/// type's `_get_type()` method is called.
@inlinable public func typeEnsure(type: GType) {
    g_type_ensure(type)

}




/// Frees an instance of a type, returning it to the instance pool for
/// the type, if there is one.
/// 
/// Like `g_type_create_instance()`, this function is reserved for
/// implementors of fundamental types.
@inlinable public func typeFree<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT) {
    g_type_free_instance(instance._ptr)

}




/// Look up the type ID from a given type name, returning 0 if no type
/// has been registered under this name (this is the preferred method
/// to find out by name whether a specific type has been registered
/// yet).
@inlinable public func typeFrom(name: UnsafePointer<gchar>!) -> GType {
    let rv = g_type_from_name(name)
    return rv
}




/// Internal function, used to extract the fundamental type ID portion.
/// Use `G_TYPE_FUNDAMENTAL()` instead.
@inlinable public func typeFundamental(typeID: GType) -> GType {
    let rv = g_type_fundamental(typeID)
    return rv
}




/// Returns the next free fundamental type id which can be used to
/// register a new fundamental type with `g_type_register_fundamental()`.
/// The returned type ID represents the highest currently registered
/// fundamental type identifier.
@inlinable public func typeFundamentalNext() -> GType {
    let rv = g_type_fundamental_next()
    return rv
}




/// Returns the number of instances allocated of the particular type;
/// this is only available if GLib is built with debugging support and
/// the instance_count debug flag is set (by setting the GOBJECT_DEBUG
/// variable to include instance-count).
@inlinable public func typeGetInstanceCount(type: GType) -> Int {
    let rv = Int(g_type_get_instance_count(type))
    return rv
}




/// Returns the `GTypePlugin` structure for `type`.
@inlinable public func typeGetPlugin(type: GType) -> TypePluginRef! {
    guard let rv = TypePluginRef(gconstpointer: gconstpointer(g_type_get_plugin(type))) else { return nil }
    return rv
}




/// Obtains data which has previously been attached to `type`
/// with `g_type_set_qdata()`.
/// 
/// Note that this does not take subtyping into account; data
/// attached to one type with `g_type_set_qdata()` cannot
/// be retrieved from a subtype using `g_type_get_qdata()`.
@inlinable public func typeGetQdata(type: GType, quark: GQuark) -> gpointer! {
    guard let rv = g_type_get_qdata(type, quark) else { return nil }
    return rv
}




/// Returns an opaque serial number that represents the state of the set
/// of registered types. Any time a type is registered this serial changes,
/// which means you can cache information based on type lookups (such as
/// `g_type_from_name()`) and know if the cache is still valid at a later
/// time by comparing the current serial with the one at the type lookup.
@inlinable public func typeGetTypeRegistrationSerial() -> Int {
    let rv = Int(g_type_get_type_registration_serial())
    return rv
}




/// This function used to initialise the type system.  Since GLib 2.36,
/// the type system is initialised automatically and this function does
/// nothing.
///
/// **type_init is deprecated:**
/// the type system is now initialised automatically
@available(*, deprecated) @inlinable public func typeInit() {
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
@available(*, deprecated) @inlinable public func typeInitWith(debugFlags: TypeDebugFlags) {
    g_type_init_with_debug_flags(debugFlags.value)

}




/// Adds `prerequisite_type` to the list of prerequisites of `interface_type`.
/// This means that any type implementing `interface_type` must also implement
/// `prerequisite_type`. Prerequisites can be thought of as an alternative to
/// interface derivation (which GType doesn't support). An interface can have
/// at most one instantiatable prerequisite type.
@inlinable public func typeInterfaceAddPrerequisite(interfaceType: GType, prerequisiteType: GType) {
    g_type_interface_add_prerequisite(interfaceType, prerequisiteType)

}




/// Returns the `GTypePlugin` structure for the dynamic interface
/// `interface_type` which has been added to `instance_type`, or `nil`
/// if `interface_type` has not been added to `instance_type` or does
/// not have a `GTypePlugin` structure. See `g_type_add_interface_dynamic()`.
@inlinable public func typeInterfaceGetPlugin(instanceType: GType, interfaceType: GType) -> TypePluginRef! {
    guard let rv = TypePluginRef(gconstpointer: gconstpointer(g_type_interface_get_plugin(instanceType, interfaceType))) else { return nil }
    return rv
}




/// Returns the `GTypeInterface` structure of an interface to which the
/// passed in class conforms.
@inlinable public func typeInterfacePeek<TypeClassT: TypeClassProtocol>(instanceClass: TypeClassT, ifaceType: GType) -> TypeInterfaceRef! {
    guard let rv = TypeInterfaceRef(gpointer: g_type_interface_peek(instanceClass._ptr, ifaceType)) else { return nil }
    return rv
}




/// Returns the prerequisites of an interfaces type.
@inlinable public func typeInterfacePrerequisites(interfaceType: GType, nPrerequisites: UnsafeMutablePointer<guint>! = nil) -> UnsafeMutablePointer<GType>! {
    guard let rv = g_type_interface_prerequisites(interfaceType, nPrerequisites) else { return nil }
    return rv
}




/// Return a newly allocated and 0-terminated array of type IDs, listing
/// the interface types that `type` conforms to.
@inlinable public func typeInterfaces(type: GType, nInterfaces: UnsafeMutablePointer<guint>! = nil) -> UnsafeMutablePointer<GType>! {
    guard let rv = g_type_interfaces(type, nInterfaces) else { return nil }
    return rv
}




/// If `is_a_type` is a derivable type, check whether `type` is a
/// descendant of `is_a_type`. If `is_a_type` is an interface, check
/// whether `type` conforms to it.
@inlinable public func typeIsA(type: GType, isAType: GType) -> Bool {
    let rv = ((g_type_is_a(type, isAType)) != 0)
    return rv
}




/// Get the unique name that is assigned to a type ID.  Note that this
/// function (like all other GType API) cannot cope with invalid type
/// IDs. `G_TYPE_INVALID` may be passed to this function, as may be any
/// other validly registered type ID, but randomized type IDs should
/// not be passed in and will most likely lead to a crash.
@inlinable public func typeName(type: GType) -> String! {
    guard let rv = g_type_name(type).map({ String(cString: $0) }) else { return nil }
    return rv
}




@inlinable public func typeNameFromClass<TypeClassT: TypeClassProtocol>(gClass: TypeClassT) -> String! {
    guard let rv = g_type_name_from_class(gClass._ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




@inlinable public func typeNameFrom<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT) -> String! {
    guard let rv = g_type_name_from_instance(instance._ptr).map({ String(cString: $0) }) else { return nil }
    return rv
}




/// Given a `leaf_type` and a `root_type` which is contained in its
/// anchestry, return the type that `root_type` is the immediate parent
/// of. In other words, this function determines the type that is
/// derived directly from `root_type` which is also a base class of
/// `leaf_type`.  Given a root type and a leaf type, this function can
/// be used to determine the types and order in which the leaf type is
/// descended from the root type.
@inlinable public func typeNextBase(leafType: GType, rootType: GType) -> GType {
    let rv = g_type_next_base(leafType, rootType)
    return rv
}




/// Return the direct parent type of the passed in type. If the passed
/// in type has no parent, i.e. is a fundamental type, 0 is returned.
@inlinable public func typeParent(type: GType) -> GType {
    let rv = g_type_parent(type)
    return rv
}




/// Get the corresponding quark of the type IDs name.
@inlinable public func typeQname(type: GType) -> GQuark {
    let rv = g_type_qname(type)
    return rv
}




/// Queries the type system for information about a specific type.
/// This function will fill in a user-provided structure to hold
/// type-specific information. If an invalid `GType` is passed in, the
/// `type` member of the `GTypeQuery` is 0. All members filled into the
/// `GTypeQuery` structure should be considered constant and have to be
/// left untouched.
@inlinable public func typeQuery<TypeQueryT: TypeQueryProtocol>(type: GType, query: TypeQueryT) {
    g_type_query(type, query._ptr)

}




/// Registers `type_name` as the name of a new dynamic type derived from
/// `parent_type`.  The type system uses the information contained in the
/// `GTypePlugin` structure pointed to by `plugin` to manage the type and its
/// instances (if not abstract).  The value of `flags` determines the nature
/// (e.g. abstract or not) of the type.
@inlinable public func typeRegisterDynamic<TypePluginT: TypePluginProtocol>(parentType: GType, typeName: UnsafePointer<gchar>!, plugin: TypePluginT, flags: TypeFlags) -> GType {
    let rv = g_type_register_dynamic(parentType, typeName, plugin.type_plugin_ptr, flags.value)
    return rv
}




/// Registers `type_id` as the predefined identifier and `type_name` as the
/// name of a fundamental type. If `type_id` is already registered, or a
/// type named `type_name` is already registered, the behaviour is undefined.
/// The type system uses the information contained in the `GTypeInfo` structure
/// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
/// `finfo` to manage the type and its instances. The value of `flags` determines
/// additional characteristics of the fundamental type.
@inlinable public func typeRegisterFundamental<TypeFundamentalInfoT: TypeFundamentalInfoProtocol, TypeInfoT: TypeInfoProtocol>(typeID: GType, typeName: UnsafePointer<gchar>!, info: TypeInfoT, finfo: TypeFundamentalInfoT, flags: TypeFlags) -> GType {
    let rv = g_type_register_fundamental(typeID, typeName, info._ptr, finfo._ptr, flags.value)
    return rv
}




/// Registers `type_name` as the name of a new static type derived from
/// `parent_type`. The type system uses the information contained in the
/// `GTypeInfo` structure pointed to by `info` to manage the type and its
/// instances (if not abstract). The value of `flags` determines the nature
/// (e.g. abstract or not) of the type.
@inlinable public func typeRegisterStatic<TypeInfoT: TypeInfoProtocol>(parentType: GType, typeName: UnsafePointer<gchar>!, info: TypeInfoT, flags: TypeFlags) -> GType {
    let rv = g_type_register_static(parentType, typeName, info._ptr, flags.value)
    return rv
}




/// Registers `type_name` as the name of a new static type derived from
/// `parent_type`.  The value of `flags` determines the nature (e.g.
/// abstract or not) of the type. It works by filling a `GTypeInfo`
/// struct and calling `g_type_register_static()`.
@inlinable public func typeRegisterStaticSimple(parentType: GType, typeName: UnsafePointer<gchar>!, classSize: Int, classInit: GClassInitFunc?, instanceSize: Int, instanceInit: GInstanceInitFunc?, flags: TypeFlags) -> GType {
    let rv = g_type_register_static_simple(parentType, typeName, guint(classSize), classInit, guint(instanceSize), instanceInit, flags.value)
    return rv
}




/// Removes a previously installed `GTypeClassCacheFunc`. The cache
/// maintained by `cache_func` has to be empty when calling
/// `g_type_remove_class_cache_func()` to avoid leaks.
@inlinable public func typeRemoveClassCacheFunc(cacheData: gpointer! = nil, cacheFunc: GTypeClassCacheFunc?) {
    g_type_remove_class_cache_func(cacheData, cacheFunc)

}




/// Removes an interface check function added with
/// `g_type_add_interface_check()`.
@inlinable public func typeRemoveInterfaceCheck(checkData: gpointer! = nil, checkFunc: GTypeInterfaceCheckFunc?) {
    g_type_remove_interface_check(checkData, checkFunc)

}




/// Attaches arbitrary data to a type.
@inlinable public func typeSetQdata(type: GType, quark: GQuark, data: gpointer! = nil) {
    g_type_set_qdata(type, quark, data)

}




@inlinable public func typeTestFlags(type: GType, flags: Int) -> Bool {
    let rv = ((g_type_test_flags(type, guint(flags))) != 0)
    return rv
}




/// Returns the location of the `GTypeValueTable` associated with `type`.
/// 
/// Note that this function should only be used from source code
/// that implements or has internal knowledge of the implementation of
/// `type`.
@inlinable public func typeValueTablePeek(type: GType) -> TypeValueTableRef! {
    guard let rv = TypeValueTableRef(gconstpointer: gconstpointer(g_type_value_table_peek(type))) else { return nil }
    return rv
}




/// Registers a value transformation function for use in `g_value_transform()`.
/// A previously registered transformation function for `src_type` and `dest_type`
/// will be replaced.
@inlinable public func valueRegisterTransformFunc(srcType: GType, destType: GType, transformFunc: @escaping GValueTransform) {
    g_value_register_transform_func(srcType, destType, transformFunc)

}




/// Returns whether a `GValue` of type `src_type` can be copied into
/// a `GValue` of type `dest_type`.
@inlinable public func valueTypeCompatible(srcType: GType, destType: GType) -> Bool {
    let rv = ((g_value_type_compatible(srcType, destType)) != 0)
    return rv
}




/// Check whether `g_value_transform()` is able to transform values
/// of type `src_type` into values of type `dest_type`. Note that for
/// the types to be transformable, they must be compatible or a
/// transformation function must be registered.
@inlinable public func valueTypeTransformable(srcType: GType, destType: GType) -> Bool {
    let rv = ((g_value_type_transformable(srcType, destType)) != 0)
    return rv
}


