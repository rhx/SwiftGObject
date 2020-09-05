import CGLib
import GLib
import GObjectCHelpers

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
    @inlinable init(raw: UnsafeRawPointer) {
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


// MARK: Value Record: ValueProtocol extension (methods and fields)
public extension ValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValue` instance.
    @inlinable var value_ptr: UnsafeMutablePointer<GValue>! { return ptr?.assumingMemoryBound(to: GValue.self) }

    /// Copies the value of `src_value` into `dest_value`.
    @inlinable func copy<ValueT: ValueProtocol>(destValue dest_value: ValueT) {
        g_value_copy(value_ptr, dest_value.value_ptr)
    
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
    @inlinable func dupVariant() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_value_dup_variant(value_ptr)))
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
    @inlinable func getVariant() -> VariantRef! {
        let rv = VariantRef(gconstpointer: gconstpointer(g_value_get_variant(value_ptr)))
        return rv
    }

    /// Initializes `value` with the default value of `type`.
    @inlinable func init_(gType g_type: GType) -> ValueRef! {
        guard let rv = ValueRef(gconstpointer: gconstpointer(g_value_init(value_ptr, g_type))) else { return nil }
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
    @inlinable func setBoolean(vBoolean v_boolean: Bool) {
        g_value_set_boolean(value_ptr, gboolean((v_boolean) ? 1 : 0))
    
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    @inlinable func setBoxed(vBoxed v_boxed: gconstpointer! = nil) {
        g_value_set_boxed(value_ptr, v_boxed)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_boxed_take_ownership is deprecated:**
    /// Use g_value_take_boxed() instead.
    @available(*, deprecated) @inlinable func setBoxedTakeOwnership(vBoxed v_boxed: gconstpointer! = nil) {
        g_value_set_boxed_take_ownership(value_ptr, v_boxed)
    
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
    ///
    /// **set_char is deprecated:**
    /// This function's input type is broken, see g_value_set_schar()
    @available(*, deprecated) @inlinable func setChar(vChar v_char: gchar) {
        g_value_set_char(value_ptr, v_char)
    
    }

    /// Set the contents of a `G_TYPE_DOUBLE` `GValue` to `v_double`.
    @inlinable func setDouble(vDouble v_double: Double) {
        g_value_set_double(value_ptr, gdouble(v_double))
    
    }

    /// Set the contents of a `G_TYPE_ENUM` `GValue` to `v_enum`.
    @inlinable func setEnum(vEnum v_enum: Int) {
        g_value_set_enum(value_ptr, gint(v_enum))
    
    }

    /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags`.
    @inlinable func setFlags(vFlags v_flags: Int) {
        g_value_set_flags(value_ptr, guint(v_flags))
    
    }

    /// Set the contents of a `G_TYPE_FLOAT` `GValue` to `v_float`.
    @inlinable func setFloat(vFloat v_float: Double) {
        g_value_set_float(value_ptr, gfloat(v_float))
    
    }

    /// Set the contents of a `G_TYPE_GTYPE` `GValue` to `v_gtype`.
    @inlinable func setGtype(vGtype v_gtype: GType) {
        g_value_set_gtype(value_ptr, v_gtype)
    
    }

    /// Sets `value` from an instantiatable type via the
    /// value_table's `collect_value()` function.
    @inlinable func set(instance: gpointer! = nil) {
        g_value_set_instance(value_ptr, instance)
    
    }

    /// Set the contents of a `G_TYPE_INT` `GValue` to `v_int`.
    @inlinable func setInt(vInt v_int: gint) {
        g_value_set_int(value_ptr, gint(v_int))
    
    }

    /// Set the contents of a `G_TYPE_INT64` `GValue` to `v_int64`.
    @inlinable func setInt64(vInt64 v_int64: gint64) {
        g_value_set_int64(value_ptr, v_int64)
    
    }

    /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long`.
    @inlinable func setLong(vLong v_long: Int) {
        g_value_set_long(value_ptr, glong(v_long))
    
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
    @inlinable func setObject<ObjectT: ObjectProtocol>(vObject v_object: ObjectT? = nil) {
        g_value_set_object(value_ptr, v_object?.object_ptr)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_object_take_ownership is deprecated:**
    /// Use g_value_take_object() instead.
    @available(*, deprecated) @inlinable func setObjectTakeOwnership(vObject v_object: gpointer! = nil) {
        g_value_set_object_take_ownership(value_ptr, v_object)
    
    }

    /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
    @inlinable func set<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT? = nil) {
        g_value_set_param(value_ptr, param?.param_spec_ptr)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_param_take_ownership is deprecated:**
    /// Use g_value_take_param() instead.
    @available(*, deprecated) @inlinable func setParamTakeOwnership<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT? = nil) {
        g_value_set_param_take_ownership(value_ptr, param?.param_spec_ptr)
    
    }

    /// Set the contents of a pointer `GValue` to `v_pointer`.
    @inlinable func setPointer(vPointer v_pointer: gpointer! = nil) {
        g_value_set_pointer(value_ptr, v_pointer)
    
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
    @inlinable func setSchar(vChar v_char: gint8) {
        g_value_set_schar(value_ptr, v_char)
    
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    /// The boxed value is assumed to be static, and is thus not duplicated
    /// when setting the `GValue`.
    @inlinable func setStaticBoxed(vBoxed v_boxed: gconstpointer! = nil) {
        g_value_set_static_boxed(value_ptr, v_boxed)
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    /// The string is assumed to be static, and is thus not duplicated
    /// when setting the `GValue`.
    @inlinable func setStaticString(vString v_string: UnsafePointer<gchar>? = nil) {
        g_value_set_static_string(value_ptr, v_string)
    
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    @inlinable func setString(vString v_string: UnsafePointer<gchar>? = nil) {
        g_value_set_string(value_ptr, v_string)
    
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_string_take_ownership is deprecated:**
    /// Use g_value_take_string() instead.
    @available(*, deprecated) @inlinable func setStringTakeOwnership(vString v_string: UnsafeMutablePointer<gchar>? = nil) {
        g_value_set_string_take_ownership(value_ptr, v_string)
    
    }

    /// Set the contents of a `G_TYPE_UCHAR` `GValue` to `v_uchar`.
    @inlinable func setUchar(vUchar v_uchar: guchar) {
        g_value_set_uchar(value_ptr, v_uchar)
    
    }

    /// Set the contents of a `G_TYPE_UINT` `GValue` to `v_uint`.
    @inlinable func setUint(vUint v_uint: guint) {
        g_value_set_uint(value_ptr, guint(v_uint))
    
    }

    /// Set the contents of a `G_TYPE_UINT64` `GValue` to `v_uint64`.
    @inlinable func setUint64(vUint64 v_uint64: guint64) {
        g_value_set_uint64(value_ptr, v_uint64)
    
    }

    /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong`.
    @inlinable func setUlong(vUlong v_ulong: gulong) {
        g_value_set_ulong(value_ptr, gulong(v_ulong))
    
    }

    /// Set the contents of a variant `GValue` to `variant`.
    /// If the variant is floating, it is consumed.
    @inlinable func set<VariantT: VariantProtocol>(variant: VariantT? = nil) {
        g_value_set_variant(value_ptr, variant?.variant_ptr)
    
    }

    /// Sets the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`
    /// and takes over the ownership of the caller’s reference to `v_boxed`;
    /// the caller doesn’t have to unref it any more.
    @inlinable func takeBoxed(vBoxed v_boxed: gconstpointer! = nil) {
        g_value_take_boxed(value_ptr, v_boxed)
    
    }

    /// Sets the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`
    /// and takes over the ownership of the caller’s reference to `v_object`;
    /// the caller doesn’t have to unref it any more (i.e. the reference
    /// count of the object is not increased).
    /// 
    /// If you want the `GValue` to hold its own reference to `v_object`, use
    /// `g_value_set_object()` instead.
    @inlinable func takeObject(vObject v_object: gpointer! = nil) {
        g_value_take_object(value_ptr, v_object)
    
    }

    /// Sets the contents of a `G_TYPE_PARAM` `GValue` to `param` and takes
    /// over the ownership of the caller’s reference to `param`; the caller
    /// doesn’t have to unref it any more.
    @inlinable func take<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT? = nil) {
        g_value_take_param(value_ptr, param?.param_spec_ptr)
    
    }

    /// Sets the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    @inlinable func takeString(vString v_string: UnsafeMutablePointer<gchar>? = nil) {
        g_value_take_string(value_ptr, v_string)
    
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
    @inlinable func take<VariantT: VariantProtocol>(variant: VariantT? = nil) {
        g_value_take_variant(value_ptr, variant?.variant_ptr)
    
    }

    /// Tries to cast the contents of `src_value` into a type appropriate
    /// to store in `dest_value`, e.g. to transform a `G_TYPE_INT` value
    /// into a `G_TYPE_FLOAT` value. Performing transformations between
    /// value types might incur precision lossage. Especially
    /// transformations into strings might reveal seemingly arbitrary
    /// results and shouldn't be relied upon for production code (such
    /// as rcfile value or object property serialization).
    @inlinable func transform<ValueT: ValueProtocol>(destValue dest_value: ValueT) -> Bool {
        let rv = ((g_value_transform(value_ptr, dest_value.value_ptr)) != 0)
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
    @inlinable func cclosureMarshalBOOLEAN_BOXEDBOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
    /// denotes a flags type.
    @inlinable func cclosureMarshalBOOLEAN_FLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_BOOLEAN__FLAGS(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalSTRING_OBJECTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_STRING__OBJECT_POINTER(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_BOOLEAN<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__BOOLEAN(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_BOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__BOXED(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_CHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__CHAR(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_DOUBLE<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__DOUBLE(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
    @inlinable func cclosureMarshalVOID_ENUM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__ENUM(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
    @inlinable func cclosureMarshalVOID_FLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__FLAGS(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_FLOAT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__FLOAT(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_INT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__INT(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_LONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__LONG(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_OBJECT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__OBJECT(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_PARAM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__PARAM(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_POINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__POINTER(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_STRING<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__STRING(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_UCHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__UCHAR(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_UINT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__UINT(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_UINTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__UINT_POINTER(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_ULONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__ULONG(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_VARIANT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__VARIANT(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer user_data)`.
    @inlinable func cclosureMarshalVOID_VOID<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_VOID__VOID(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// A generic marshaller function implemented via
    /// [libffi](http://sourceware.org/libffi/).
    /// 
    /// Normally this function is not passed explicitly to `g_signal_new()`,
    /// but used automatically by GLib when specifying a `nil` marshaller.
    @inlinable func cclosureMarshalGeneric<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues n_param_values: Int, paramValues param_values: ValueT, invocationHint invocation_hint: gpointer! = nil, marshalData marshal_data: gpointer! = nil) {
        g_cclosure_marshal_generic(closure.closure_ptr, value_ptr, guint(n_param_values), param_values.value_ptr, invocation_hint, marshal_data)
    
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also `g_value_type_transformable()`, `g_value_transform()` and
    /// `g_param_value_validate()`.
    @inlinable func paramValueConvert<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, destValue dest_value: ValueT, strictValidation strict_validation: Bool) -> Bool {
        let rv = ((g_param_value_convert(pspec.param_spec_ptr, value_ptr, dest_value.value_ptr, gboolean((strict_validation) ? 1 : 0))) != 0)
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
    @inlinable func signalAccumulatorFirstWins<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, handlerReturn handler_return: ValueT, dummy: gpointer! = nil) -> Bool {
        let rv = ((g_signal_accumulator_first_wins(ihint._ptr, value_ptr, handler_return.value_ptr, dummy)) != 0)
        return rv
    }

    /// A predefined `GSignalAccumulator` for signals that return a
    /// boolean values. The behavior that this accumulator gives is
    /// that a return of `true` stops the signal emission: no further
    /// callbacks will be invoked, while a return of `false` allows
    /// the emission to continue. The idea here is that a `true` return
    /// indicates that the callback handled the signal, and no further
    /// handling is needed.
    @inlinable func signalAccumulatorTrueHandled<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, handlerReturn handler_return: ValueT, dummy: gpointer! = nil) -> Bool {
        let rv = ((g_signal_accumulator_true_handled(ihint._ptr, value_ptr, handler_return.value_ptr, dummy)) != 0)
        return rv
    }

    /// Calls the original class closure of a signal. This function should only
    /// be called from an overridden class closure; see
    /// `g_signal_override_class_closure()` and
    /// `g_signal_override_class_handler()`.
    @inlinable func signalChainFromOverridden(instanceAndParams instance_and_params: UnsafePointer<GValue>!) {
        g_signal_chain_from_overridden(instance_and_params, value_ptr)
    
    }

    /// Emits a signal.
    /// 
    /// Note that `g_signal_emitv()` doesn't change `return_value` if no handlers are
    /// connected, in contrast to `g_signal_emit()` and `g_signal_emit_valist()`.
    @inlinable func signalEmitv(instanceAndParams instance_and_params: UnsafePointer<GValue>!, signalID signal_id: Int, detail: GQuark) {
        g_signal_emitv(instance_and_params, guint(signal_id), detail, value_ptr)
    
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
    @inlinable var variant: VariantRef! {
        /// Get the contents of a variant `GValue`.
        get {
            let rv = VariantRef(gconstpointer: gconstpointer(g_value_get_variant(value_ptr)))
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



