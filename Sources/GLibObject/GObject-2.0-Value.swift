import CGLib
import GLib

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GValue` instance.
    var value_ptr: UnsafeMutablePointer<GValue> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension ValueRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ValueProtocol`
    init<T: ValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Value` instance.
    public init(_ op: UnsafeMutablePointer<GValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ValueProtocol`
    /// `GValue` does not allow reference counting.
    public convenience init<T: ValueProtocol>(_ other: T) {
        self.init(cast(other.value_ptr))
        // no reference counting for GValue, cannot ref(cast(value_ptr))
    }

    /// Do-nothing destructor for`GValue`.
    deinit {
        // no reference counting for GValue, cannot unref(cast(value_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GValue.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GValue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GValue.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GValue>(opaquePointer))
    }



}

// MARK: - no Value properties

// MARK: - no signals


public extension ValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValue` instance.
    var value_ptr: UnsafeMutablePointer<GValue> { return ptr.assumingMemoryBound(to: GValue.self) }

    /// Copies the value of `src_value` into `dest_value.`
    func copy(destValue dest_value: ValueProtocol) {
        g_value_copy(cast(value_ptr), cast(dest_value.ptr))
    
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.  Upon getting,
    /// the boxed value is duplicated and needs to be later freed with
    /// `g_boxed_free()`, e.g. like: g_boxed_free (G_VALUE_TYPE (`value`),
    /// return_value);
    func dupBoxed() -> UnsafeMutableRawPointer! {
        let rv = g_value_dup_boxed(cast(value_ptr))
        return cast(rv)
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`, increasing
    /// its reference count. If the contents of the `GValue` are `nil`, then
    /// `nil` will be returned.
    func dupObject() -> UnsafeMutableRawPointer! {
        let rv = g_value_dup_object(cast(value_ptr))
        return cast(rv)
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue`, increasing its
    /// reference count.
    func dupParam() -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_value_dup_param(cast(value_ptr))
        return cast(rv)
    }

    /// Get a copy the contents of a `G_TYPE_STRING` `GValue.`
    func dupString() -> String! {
        let rv = g_value_dup_string(cast(value_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Get the contents of a variant `GValue`, increasing its refcount. The returned
    /// `GVariant` is never floating.
    func dupVariant() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_value_dup_variant(cast(value_ptr))
        return cast(rv)
    }

    /// Determines if `value` will fit inside the size of a pointer value.
    /// This is an internal function introduced mainly for C marshallers.
    func fitsPointer() -> Bool {
        let rv = g_value_fits_pointer(cast(value_ptr))
        return Bool(rv != 0)
    }

    /// Get the contents of a `G_TYPE_BOOLEAN` `GValue.`
    func getBoolean() -> Bool {
        let rv = g_value_get_boolean(cast(value_ptr))
        return Bool(rv != 0)
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue.`
    func getBoxed() -> UnsafeMutableRawPointer! {
        let rv = g_value_get_boxed(cast(value_ptr))
        return cast(rv)
    }

    /// Do not use this function; it is broken on platforms where the `char`
    /// type is unsigned, such as ARM and PowerPC.  See `g_value_get_schar()`.
    /// 
    /// Get the contents of a `G_TYPE_CHAR` `GValue.`
    ///
    /// **get_char is deprecated:**
    /// This function's return type is broken, see g_value_get_schar()
    @available(*, deprecated) func getChar() -> gchar {
        let rv = g_value_get_char(cast(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_DOUBLE` `GValue.`
    func getDouble() -> gdouble {
        let rv = g_value_get_double(cast(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_ENUM` `GValue.`
    func getEnum() -> CInt {
        let rv = g_value_get_enum(cast(value_ptr))
        return CInt(rv)
    }

    /// Get the contents of a `G_TYPE_FLAGS` `GValue.`
    func getFlags() -> CUnsignedInt {
        let rv = g_value_get_flags(cast(value_ptr))
        return CUnsignedInt(rv)
    }

    /// Get the contents of a `G_TYPE_FLOAT` `GValue.`
    func getFloat() -> gfloat {
        let rv = g_value_get_float(cast(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_GTYPE` `GValue.`
    func getGtype() -> GType {
        let rv = g_value_get_gtype(cast(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_INT` `GValue.`
    func getInt() -> CInt {
        let rv = g_value_get_int(cast(value_ptr))
        return CInt(rv)
    }

    /// Get the contents of a `G_TYPE_INT64` `GValue.`
    func getInt64() -> Int64 {
        let rv = g_value_get_int64(cast(value_ptr))
        return Int64(rv)
    }

    /// Get the contents of a `G_TYPE_LONG` `GValue.`
    func getLong() -> CLong {
        let rv = g_value_get_long(cast(value_ptr))
        return CLong(rv)
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue.`
    func getObject() -> UnsafeMutableRawPointer! {
        let rv = g_value_get_object(cast(value_ptr))
        return cast(rv)
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue.`
    func getParam() -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_value_get_param(cast(value_ptr))
        return cast(rv)
    }

    /// Get the contents of a pointer `GValue.`
    func getPointer() -> UnsafeMutableRawPointer! {
        let rv = g_value_get_pointer(cast(value_ptr))
        return cast(rv)
    }

    /// Get the contents of a `G_TYPE_CHAR` `GValue.`
    func getSchar() -> Int8 {
        let rv = g_value_get_schar(cast(value_ptr))
        return Int8(rv)
    }

    /// Get the contents of a `G_TYPE_STRING` `GValue.`
    func getString() -> String! {
        let rv = g_value_get_string(cast(value_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Get the contents of a `G_TYPE_UCHAR` `GValue.`
    func getUchar() -> guchar {
        let rv = g_value_get_uchar(cast(value_ptr))
        return rv
    }

    /// Get the contents of a `G_TYPE_UINT` `GValue.`
    func getUint() -> CUnsignedInt {
        let rv = g_value_get_uint(cast(value_ptr))
        return CUnsignedInt(rv)
    }

    /// Get the contents of a `G_TYPE_UINT64` `GValue.`
    func getUint64() -> UInt64 {
        let rv = g_value_get_uint64(cast(value_ptr))
        return UInt64(rv)
    }

    /// Get the contents of a `G_TYPE_ULONG` `GValue.`
    func getUlong() -> CUnsignedLong {
        let rv = g_value_get_ulong(cast(value_ptr))
        return CUnsignedLong(rv)
    }

    /// Get the contents of a variant `GValue.`
    func getVariant() -> UnsafeMutablePointer<GVariant>! {
        let rv = g_value_get_variant(cast(value_ptr))
        return cast(rv)
    }

    /// Initializes `value` with the default value of `type.`
    func init_(gType g_type: GType) -> UnsafeMutablePointer<GValue>! {
        let rv = g_value_init(cast(value_ptr), g_type)
        return cast(rv)
    }

    /// Initializes and sets `value` from an instantiatable type via the
    /// value_table's `collect_value()` function.
    /// 
    /// Note: The `value` will be initialised with the exact type of
    /// `instance`.  If you wish to set the `value`'s type to a different GType
    /// (such as a parent class GType), you need to manually call
    /// `g_value_init()` and `g_value_set_instance()`.
    func initFrom(instance: TypeInstanceProtocol) {
        g_value_init_from_instance(cast(value_ptr), cast(instance.ptr))
    
    }

    /// Returns the value contents as pointer. This function asserts that
    /// `g_value_fits_pointer()` returned `true` for the passed in value.
    /// This is an internal function introduced mainly for C marshallers.
    func peekPointer() -> UnsafeMutableRawPointer! {
        let rv = g_value_peek_pointer(cast(value_ptr))
        return cast(rv)
    }

    /// Clears the current value in `value` and resets it to the default value
    /// (as if the value had just been initialized).
    func reset() -> UnsafeMutablePointer<GValue>! {
        let rv = g_value_reset(cast(value_ptr))
        return cast(rv)
    }

    /// Set the contents of a `G_TYPE_BOOLEAN` `GValue` to `v_boolean.`
    func setBoolean(vBoolean v_boolean: Bool) {
        g_value_set_boolean(cast(value_ptr), gboolean(v_boolean ? 1 : 0))
    
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed.`
    func setBoxed(vBoxed v_boxed: gconstpointer) {
        g_value_set_boxed(cast(value_ptr), cast(v_boxed))
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_boxed_take_ownership is deprecated:**
    /// Use g_value_take_boxed() instead.
    @available(*, deprecated) func setBoxedTakeOwnership(vBoxed v_boxed: gconstpointer) {
        g_value_set_boxed_take_ownership(cast(value_ptr), cast(v_boxed))
    
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char.`
    ///
    /// **set_char is deprecated:**
    /// This function's input type is broken, see g_value_set_schar()
    @available(*, deprecated) func setChar(vChar v_char: gchar) {
        g_value_set_char(cast(value_ptr), v_char)
    
    }

    /// Set the contents of a `G_TYPE_DOUBLE` `GValue` to `v_double.`
    func setDouble(vDouble v_double: gdouble) {
        g_value_set_double(cast(value_ptr), v_double)
    
    }

    /// Set the contents of a `G_TYPE_ENUM` `GValue` to `v_enum.`
    func setEnum(vEnum v_enum: CInt) {
        g_value_set_enum(cast(value_ptr), gint(v_enum))
    
    }

    /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags.`
    func setFlags(vFlags v_flags: CUnsignedInt) {
        g_value_set_flags(cast(value_ptr), guint(v_flags))
    
    }

    /// Set the contents of a `G_TYPE_FLOAT` `GValue` to `v_float.`
    func setFloat(vFloat v_float: gfloat) {
        g_value_set_float(cast(value_ptr), v_float)
    
    }

    /// Set the contents of a `G_TYPE_GTYPE` `GValue` to `v_gtype.`
    func setGtype(vGtype v_gtype: GType) {
        g_value_set_gtype(cast(value_ptr), v_gtype)
    
    }

    /// Sets `value` from an instantiatable type via the
    /// value_table's `collect_value()` function.
    func set(instance: UnsafeMutableRawPointer) {
        g_value_set_instance(cast(value_ptr), cast(instance))
    
    }

    /// Set the contents of a `G_TYPE_INT` `GValue` to `v_int.`
    func setInt(vInt v_int: CInt) {
        g_value_set_int(cast(value_ptr), gint(v_int))
    
    }

    /// Set the contents of a `G_TYPE_INT64` `GValue` to `v_int64.`
    func setInt64(vInt64 v_int64: Int64) {
        g_value_set_int64(cast(value_ptr), gint64(v_int64))
    
    }

    /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long.`
    func setLong(vLong v_long: CLong) {
        g_value_set_long(cast(value_ptr), glong(v_long))
    
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
    func setObject(vObject v_object: ObjectProtocol) {
        g_value_set_object(cast(value_ptr), cast(v_object.ptr))
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_object_take_ownership is deprecated:**
    /// Use g_value_take_object() instead.
    @available(*, deprecated) func setObjectTakeOwnership(vObject v_object: UnsafeMutableRawPointer) {
        g_value_set_object_take_ownership(cast(value_ptr), cast(v_object))
    
    }

    /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param.`
    func set(param: ParamSpecProtocol) {
        g_value_set_param(cast(value_ptr), cast(param.ptr))
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_param_take_ownership is deprecated:**
    /// Use g_value_take_param() instead.
    @available(*, deprecated) func setParamTakeOwnership(param: ParamSpecProtocol) {
        g_value_set_param_take_ownership(cast(value_ptr), cast(param.ptr))
    
    }

    /// Set the contents of a pointer `GValue` to `v_pointer.`
    func setPointer(vPointer v_pointer: UnsafeMutableRawPointer) {
        g_value_set_pointer(cast(value_ptr), cast(v_pointer))
    
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char.`
    func setSchar(vChar v_char: Int8) {
        g_value_set_schar(cast(value_ptr), gint8(v_char))
    
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    /// The boxed value is assumed to be static, and is thus not duplicated
    /// when setting the `GValue.`
    func setStaticBoxed(vBoxed v_boxed: gconstpointer) {
        g_value_set_static_boxed(cast(value_ptr), cast(v_boxed))
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    /// The string is assumed to be static, and is thus not duplicated
    /// when setting the `GValue.`
    func setStaticString(vString v_string: UnsafePointer<gchar>) {
        g_value_set_static_string(cast(value_ptr), v_string)
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string.`
    func setString(vString v_string: UnsafePointer<gchar>) {
        g_value_set_string(cast(value_ptr), v_string)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_string_take_ownership is deprecated:**
    /// Use g_value_take_string() instead.
    @available(*, deprecated) func setStringTakeOwnership(vString v_string: UnsafeMutablePointer<gchar>) {
        g_value_set_string_take_ownership(cast(value_ptr), v_string)
    
    }

    /// Set the contents of a `G_TYPE_UCHAR` `GValue` to `v_uchar.`
    func setUchar(vUchar v_uchar: UInt8) {
        g_value_set_uchar(cast(value_ptr), v_uchar)
    
    }

    /// Set the contents of a `G_TYPE_UINT` `GValue` to `v_uint.`
    func setUint(vUint v_uint: CUnsignedInt) {
        g_value_set_uint(cast(value_ptr), guint(v_uint))
    
    }

    /// Set the contents of a `G_TYPE_UINT64` `GValue` to `v_uint64.`
    func setUint64(vUint64 v_uint64: UInt64) {
        g_value_set_uint64(cast(value_ptr), guint64(v_uint64))
    
    }

    /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong.`
    func setUlong(vUlong v_ulong: CUnsignedLong) {
        g_value_set_ulong(cast(value_ptr), gulong(v_ulong))
    
    }

    /// Set the contents of a variant `GValue` to `variant`.
    /// If the variant is floating, it is consumed.
    func set(variant: VariantProtocol) {
        g_value_set_variant(cast(value_ptr), cast(variant.ptr))
    
    }

    /// Sets the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`
    /// and takes over the ownership of the caller’s reference to `v_boxed`;
    /// the caller doesn’t have to unref it any more.
    func takeBoxed(vBoxed v_boxed: gconstpointer) {
        g_value_take_boxed(cast(value_ptr), cast(v_boxed))
    
    }

    /// Sets the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`
    /// and takes over the ownership of the caller’s reference to `v_object`;
    /// the caller doesn’t have to unref it any more (i.e. the reference
    /// count of the object is not increased).
    /// 
    /// If you want the `GValue` to hold its own reference to `v_object`, use
    /// `g_value_set_object()` instead.
    func takeObject(vObject v_object: UnsafeMutableRawPointer) {
        g_value_take_object(cast(value_ptr), cast(v_object))
    
    }

    /// Sets the contents of a `G_TYPE_PARAM` `GValue` to `param` and takes
    /// over the ownership of the caller’s reference to `param`; the caller
    /// doesn’t have to unref it any more.
    func take(param: ParamSpecProtocol) {
        g_value_take_param(cast(value_ptr), cast(param.ptr))
    
    }

    /// Sets the contents of a `G_TYPE_STRING` `GValue` to `v_string.`
    func takeString(vString v_string: UnsafeMutablePointer<gchar>) {
        g_value_take_string(cast(value_ptr), v_string)
    
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
    func take(variant: VariantProtocol) {
        g_value_take_variant(cast(value_ptr), cast(variant.ptr))
    
    }

    /// Tries to cast the contents of `src_value` into a type appropriate
    /// to store in `dest_value`, e.g. to transform a `G_TYPE_INT` value
    /// into a `G_TYPE_FLOAT` value. Performing transformations between
    /// value types might incur precision lossage. Especially
    /// transformations into strings might reveal seemingly arbitrary
    /// results and shouldn't be relied upon for production code (such
    /// as rcfile value or object property serialization).
    func transform(destValue dest_value: ValueProtocol) -> Bool {
        let rv = g_value_transform(cast(value_ptr), cast(dest_value.ptr))
        return Bool(rv != 0)
    }

    /// Clears the current value in `value` (if any) and "unsets" the type,
    /// this releases all resources associated with this GValue. An unset
    /// value is the same as an uninitialized (zero-filled) `GValue`
    /// structure.
    func unset() {
        g_value_unset(cast(value_ptr))
    
    }

    /// A `GClosureMarshal` function for use with signals with handlers that
    /// take two boxed pointers as arguments and return a boolean.  If you
    /// have such a signal, you will probably also need to use an
    /// accumulator, such as `g_signal_accumulator_true_handled()`.
    func cclosureMarshalBOOLEAN_BOXEDBOXED(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_BOOLEAN__BOXED_BOXED(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
    /// denotes a flags type.
    func cclosureMarshalBOOLEAN_FLAGS(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_BOOLEAN__FLAGS(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
    func cclosureMarshalSTRING_OBJECTPOINTER(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_STRING__OBJECT_POINTER(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
    func cclosureMarshalVOID_BOOLEAN(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__BOOLEAN(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_BOXED(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__BOXED(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
    func cclosureMarshalVOID_CHAR(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__CHAR(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
    func cclosureMarshalVOID_DOUBLE(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__DOUBLE(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
    func cclosureMarshalVOID_ENUM(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__ENUM(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
    func cclosureMarshalVOID_FLAGS(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__FLAGS(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
    func cclosureMarshalVOID_FLOAT(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__FLOAT(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
    func cclosureMarshalVOID_INT(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__INT(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
    func cclosureMarshalVOID_LONG(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__LONG(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_OBJECT(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__OBJECT(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_PARAM(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__PARAM(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
    func cclosureMarshalVOID_POINTER(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__POINTER(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_STRING(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__STRING(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
    func cclosureMarshalVOID_UCHAR(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__UCHAR(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
    func cclosureMarshalVOID_UINT(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__UINT(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
    func cclosureMarshalVOID_UINTPOINTER(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__UINT_POINTER(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
    func cclosureMarshalVOID_ULONG(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__ULONG(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_VARIANT(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__VARIANT(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer user_data)`.
    func cclosureMarshalVOID_VOID(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__VOID(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A generic marshaller function implemented via
    /// [libffi](http://sourceware.org/libffi/).
    /// 
    /// Normally this function is not passed explicitly to `g_signal_new()`,
    /// but used automatically by GLib when specifying a `nil` marshaller.
    func cclosureMarshalGeneric(closure: ClosureProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_generic(cast(closure.ptr), cast(value_ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also `g_value_type_transformable()`, `g_value_transform()` and
    /// `g_param_value_validate()`.
    func paramValueConvert(pspec: ParamSpecProtocol, destValue dest_value: ValueProtocol, strictValidation strict_validation: Bool) -> Bool {
        let rv = g_param_value_convert(cast(pspec.ptr), cast(value_ptr), cast(dest_value.ptr), gboolean(strict_validation ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Checks whether `value` contains the default value as specified in `pspec.`
    func paramValueDefaults(pspec: ParamSpecProtocol) -> Bool {
        let rv = g_param_value_defaults(cast(pspec.ptr), cast(value_ptr))
        return Bool(rv != 0)
    }

    /// Sets `value` to its default value as specified in `pspec.`
    func paramValueSetDefault(pspec: ParamSpecProtocol) {
        g_param_value_set_default(cast(pspec.ptr), cast(value_ptr))
    
    }

    /// Ensures that the contents of `value` comply with the specifications
    /// set out by `pspec`. For example, a `GParamSpecInt` might require
    /// that integers stored in `value` may not be smaller than -42 and not be
    /// greater than +42. If `value` contains an integer outside of this range,
    /// it is modified accordingly, so the resulting value will fit into the
    /// range -42 .. +42.
    func paramValueValidate(pspec: ParamSpecProtocol) -> Bool {
        let rv = g_param_value_validate(cast(pspec.ptr), cast(value_ptr))
        return Bool(rv != 0)
    }

    /// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
    /// if `value1` is found to be less than, equal to or greater than `value2`,
    /// respectively.
    func paramValuesCmp(pspec: ParamSpecProtocol, value2: ValueProtocol) -> CInt {
        let rv = g_param_values_cmp(cast(pspec.ptr), cast(value_ptr), cast(value2.ptr))
        return CInt(rv)
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
    func signalAccumulatorFirstWins(ihint: SignalInvocationHintProtocol, handlerReturn handler_return: ValueProtocol, dummy: UnsafeMutableRawPointer) -> Bool {
        let rv = g_signal_accumulator_first_wins(cast(ihint.ptr), cast(value_ptr), cast(handler_return.ptr), cast(dummy))
        return Bool(rv != 0)
    }

    /// A predefined `GSignalAccumulator` for signals that return a
    /// boolean values. The behavior that this accumulator gives is
    /// that a return of `true` stops the signal emission: no further
    /// callbacks will be invoked, while a return of `false` allows
    /// the emission to continue. The idea here is that a `true` return
    /// indicates that the callback handled the signal, and no further
    /// handling is needed.
    func signalAccumulatorTrueHandled(ihint: SignalInvocationHintProtocol, handlerReturn handler_return: ValueProtocol, dummy: UnsafeMutableRawPointer) -> Bool {
        let rv = g_signal_accumulator_true_handled(cast(ihint.ptr), cast(value_ptr), cast(handler_return.ptr), cast(dummy))
        return Bool(rv != 0)
    }

    /// Calls the original class closure of a signal. This function should only
    /// be called from an overridden class closure; see
    /// `g_signal_override_class_closure()` and
    /// `g_signal_override_class_handler()`.
    func signalChainFromOverridden(instanceAndParams instance_and_params: UnsafePointer<GValue>) {
        g_signal_chain_from_overridden(cast(instance_and_params), cast(value_ptr))
    
    }

    /// Emits a signal.
    /// 
    /// Note that `g_signal_emitv()` doesn't change `return_value` if no handlers are
    /// connected, in contrast to `g_signal_emit()` and `g_signal_emit_valist()`.
    func signalEmitv(instanceAndParams instance_and_params: UnsafePointer<GValue>, signalID signal_id: CUnsignedInt, detail: GLib.Quark) {
        g_signal_emitv(cast(instance_and_params), guint(signal_id), detail, cast(value_ptr))
    
    }

    /// Return a newly allocated string, which describes the contents of a
    /// `GValue`.  The main purpose of this function is to describe `GValue`
    /// contents for debugging output, the way in which the contents are
    /// described may change between different GLib versions.
    func strdupValueContents() -> String! {
        let rv = g_strdup_value_contents(cast(value_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    func typeCheckValue() -> Bool {
        let rv = g_type_check_value(cast(value_ptr))
        return Bool(rv != 0)
    }

    func typeCheckValueHolds(type: GType) -> Bool {
        let rv = g_type_check_value_holds(cast(value_ptr), type)
        return Bool(rv != 0)
    }
    /// Get the contents of a `G_TYPE_BOOLEAN` `GValue.`
    var boolean: Bool {
        /// Get the contents of a `G_TYPE_BOOLEAN` `GValue.`
        get {
            let rv = g_value_get_boolean(cast(value_ptr))
            return Bool(rv != 0)
        }
        /// Set the contents of a `G_TYPE_BOOLEAN` `GValue` to `v_boolean.`
        nonmutating set {
            g_value_set_boolean(cast(value_ptr), gboolean(newValue ? 1 : 0))
        }
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue.`
    var boxed: UnsafeMutableRawPointer! {
        /// Get the contents of a `G_TYPE_BOXED` derived `GValue.`
        get {
            let rv = g_value_get_boxed(cast(value_ptr))
            return cast(rv)
        }
        /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed.`
        nonmutating set {
            g_value_set_boxed(cast(value_ptr), cast(newValue))
        }
    }

    /// Do not use this function; it is broken on platforms where the `char`
    /// type is unsigned, such as ARM and PowerPC.  See `g_value_get_schar()`.
    /// 
    /// Get the contents of a `G_TYPE_CHAR` `GValue.`
    ///
    /// **get_char is deprecated:**
    /// This function's return type is broken, see g_value_get_schar()
    var char: gchar {
        /// Do not use this function; it is broken on platforms where the `char`
        /// type is unsigned, such as ARM and PowerPC.  See `g_value_get_schar()`.
        /// 
        /// Get the contents of a `G_TYPE_CHAR` `GValue.`
        ///
        /// **get_char is deprecated:**
        /// This function's return type is broken, see g_value_get_schar()
        @available(*, deprecated) get {
            let rv = g_value_get_char(cast(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char.`
        ///
        /// **set_char is deprecated:**
        /// This function's input type is broken, see g_value_set_schar()
        @available(*, deprecated) nonmutating set {
            g_value_set_char(cast(value_ptr), newValue)
        }
    }

    /// Get the contents of a `G_TYPE_DOUBLE` `GValue.`
    var double: gdouble {
        /// Get the contents of a `G_TYPE_DOUBLE` `GValue.`
        get {
            let rv = g_value_get_double(cast(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_DOUBLE` `GValue` to `v_double.`
        nonmutating set {
            g_value_set_double(cast(value_ptr), newValue)
        }
    }

    /// Get the contents of a `G_TYPE_ENUM` `GValue.`
    var enum_: CInt {
        /// Get the contents of a `G_TYPE_ENUM` `GValue.`
        get {
            let rv = g_value_get_enum(cast(value_ptr))
            return CInt(rv)
        }
        /// Set the contents of a `G_TYPE_ENUM` `GValue` to `v_enum.`
        nonmutating set {
            g_value_set_enum(cast(value_ptr), gint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_FLAGS` `GValue.`
    var flags: CUnsignedInt {
        /// Get the contents of a `G_TYPE_FLAGS` `GValue.`
        get {
            let rv = g_value_get_flags(cast(value_ptr))
            return CUnsignedInt(rv)
        }
        /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags.`
        nonmutating set {
            g_value_set_flags(cast(value_ptr), guint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_FLOAT` `GValue.`
    var float: gfloat {
        /// Get the contents of a `G_TYPE_FLOAT` `GValue.`
        get {
            let rv = g_value_get_float(cast(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_FLOAT` `GValue` to `v_float.`
        nonmutating set {
            g_value_set_float(cast(value_ptr), newValue)
        }
    }

    /// Get the contents of a `G_TYPE_GTYPE` `GValue.`
    var gtype: GType {
        /// Get the contents of a `G_TYPE_GTYPE` `GValue.`
        get {
            let rv = g_value_get_gtype(cast(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_GTYPE` `GValue` to `v_gtype.`
        nonmutating set {
            g_value_set_gtype(cast(value_ptr), newValue)
        }
    }

    /// Get the contents of a `G_TYPE_INT` `GValue.`
    var int: CInt {
        /// Get the contents of a `G_TYPE_INT` `GValue.`
        get {
            let rv = g_value_get_int(cast(value_ptr))
            return CInt(rv)
        }
        /// Set the contents of a `G_TYPE_INT` `GValue` to `v_int.`
        nonmutating set {
            g_value_set_int(cast(value_ptr), gint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_INT64` `GValue.`
    var int64: Int64 {
        /// Get the contents of a `G_TYPE_INT64` `GValue.`
        get {
            let rv = g_value_get_int64(cast(value_ptr))
            return Int64(rv)
        }
        /// Set the contents of a `G_TYPE_INT64` `GValue` to `v_int64.`
        nonmutating set {
            g_value_set_int64(cast(value_ptr), gint64(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_LONG` `GValue.`
    var long: CLong {
        /// Get the contents of a `G_TYPE_LONG` `GValue.`
        get {
            let rv = g_value_get_long(cast(value_ptr))
            return CLong(rv)
        }
        /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long.`
        nonmutating set {
            g_value_set_long(cast(value_ptr), glong(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue.`
    var object: UnsafeMutableRawPointer! {
        /// Get the contents of a `G_TYPE_OBJECT` derived `GValue.`
        get {
            let rv = g_value_get_object(cast(value_ptr))
            return cast(rv)
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
            g_value_set_object(cast(value_ptr), cast(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue.`
    var param: UnsafeMutablePointer<GParamSpec>! {
        /// Get the contents of a `G_TYPE_PARAM` `GValue.`
        get {
            let rv = g_value_get_param(cast(value_ptr))
            return cast(rv)
        }
        /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param.`
        nonmutating set {
            g_value_set_param(cast(value_ptr), cast(newValue))
        }
    }

    /// Get the contents of a pointer `GValue.`
    var pointer: UnsafeMutableRawPointer! {
        /// Get the contents of a pointer `GValue.`
        get {
            let rv = g_value_get_pointer(cast(value_ptr))
            return cast(rv)
        }
        /// Set the contents of a pointer `GValue` to `v_pointer.`
        nonmutating set {
            g_value_set_pointer(cast(value_ptr), cast(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_CHAR` `GValue.`
    var schar: Int8 {
        /// Get the contents of a `G_TYPE_CHAR` `GValue.`
        get {
            let rv = g_value_get_schar(cast(value_ptr))
            return Int8(rv)
        }
        /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char.`
        nonmutating set {
            g_value_set_schar(cast(value_ptr), gint8(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_STRING` `GValue.`
    var string: String! {
        /// Get the contents of a `G_TYPE_STRING` `GValue.`
        get {
            let rv = g_value_get_string(cast(value_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
        /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string.`
        nonmutating set {
            g_value_set_string(cast(value_ptr), newValue)
        }
    }

    /// Get the contents of a `G_TYPE_UCHAR` `GValue.`
    var uchar: guchar {
        /// Get the contents of a `G_TYPE_UCHAR` `GValue.`
        get {
            let rv = g_value_get_uchar(cast(value_ptr))
            return rv
        }
        /// Set the contents of a `G_TYPE_UCHAR` `GValue` to `v_uchar.`
        nonmutating set {
            g_value_set_uchar(cast(value_ptr), newValue)
        }
    }

    /// Get the contents of a `G_TYPE_UINT` `GValue.`
    var uint: CUnsignedInt {
        /// Get the contents of a `G_TYPE_UINT` `GValue.`
        get {
            let rv = g_value_get_uint(cast(value_ptr))
            return CUnsignedInt(rv)
        }
        /// Set the contents of a `G_TYPE_UINT` `GValue` to `v_uint.`
        nonmutating set {
            g_value_set_uint(cast(value_ptr), guint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_UINT64` `GValue.`
    var uint64: UInt64 {
        /// Get the contents of a `G_TYPE_UINT64` `GValue.`
        get {
            let rv = g_value_get_uint64(cast(value_ptr))
            return UInt64(rv)
        }
        /// Set the contents of a `G_TYPE_UINT64` `GValue` to `v_uint64.`
        nonmutating set {
            g_value_set_uint64(cast(value_ptr), guint64(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_ULONG` `GValue.`
    var ulong: CUnsignedLong {
        /// Get the contents of a `G_TYPE_ULONG` `GValue.`
        get {
            let rv = g_value_get_ulong(cast(value_ptr))
            return CUnsignedLong(rv)
        }
        /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong.`
        nonmutating set {
            g_value_set_ulong(cast(value_ptr), gulong(newValue))
        }
    }

    /// Get the contents of a variant `GValue.`
    var variant: UnsafeMutablePointer<GVariant>! {
        /// Get the contents of a variant `GValue.`
        get {
            let rv = g_value_get_variant(cast(value_ptr))
            return cast(rv)
        }
        /// Set the contents of a variant `GValue` to `variant`.
        /// If the variant is floating, it is consumed.
        nonmutating set {
            g_value_set_variant(cast(value_ptr), cast(newValue))
        }
    }
}



