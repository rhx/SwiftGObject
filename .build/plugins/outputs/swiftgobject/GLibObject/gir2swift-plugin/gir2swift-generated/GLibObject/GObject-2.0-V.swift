import CGLib
import GLib
import GObjectCHelpers

// MARK: - Value Record

/// An opaque structure used to hold different types of values.
/// 
/// The data within the structure has protected scope: it is accessible only
/// to functions within a `GTypeValueTable` structure, or implementations of
/// the g_value_*() API. That is, code portions which implement new fundamental
/// types.
/// 
/// `GValue` users cannot make any assumptions about how data is stored
/// within the 2 element `data` union, and the `g_type` member should
/// only be accessed through the `G_VALUE_TYPE()` macro.
///
/// The `ValueProtocol` protocol exposes the methods and properties of an underlying `GValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Value`.
/// Alternatively, use `ValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ValueProtocol {
        /// Untyped pointer to the underlying `GValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GValue` instance.
    var value_ptr: UnsafeMutablePointer<GValue>! { get }

    /// Required Initialiser for types conforming to `ValueProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// An opaque structure used to hold different types of values.
/// 
/// The data within the structure has protected scope: it is accessible only
/// to functions within a `GTypeValueTable` structure, or implementations of
/// the g_value_*() API. That is, code portions which implement new fundamental
/// types.
/// 
/// `GValue` users cannot make any assumptions about how data is stored
/// within the 2 element `data` union, and the `g_type` member should
/// only be accessed through the `G_VALUE_TYPE()` macro.
///
/// The `ValueRef` type acts as a lightweight Swift reference to an underlying `GValue` instance.
/// It exposes methods that can operate on this data type through `ValueProtocol` conformance.
/// Use `ValueRef` only as an `unowned` reference to an existing `GValue` instance.
///
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
    @inlinable init(mutating raw: UnsafeRawPointer) {
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

/// An opaque structure used to hold different types of values.
/// 
/// The data within the structure has protected scope: it is accessible only
/// to functions within a `GTypeValueTable` structure, or implementations of
/// the g_value_*() API. That is, code portions which implement new fundamental
/// types.
/// 
/// `GValue` users cannot make any assumptions about how data is stored
/// within the 2 element `data` union, and the `g_type` member should
/// only be accessed through the `G_VALUE_TYPE()` macro.
///
/// The `Value` type acts as an owner of an underlying `GValue` instance.
/// It provides the methods that can operate on this data type through `ValueProtocol` conformance.
/// Use `Value` as a strong reference or owner of a `GValue` instance.
///
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
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
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

// MARK: Value has no signals
// MARK: Value Record: ValueProtocol extension (methods and fields)
public extension ValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValue` instance.
    @inlinable var value_ptr: UnsafeMutablePointer<GValue>! { return ptr?.assumingMemoryBound(to: GValue.self) }

    /// Copies the value of `src_value` into `dest_value`.
    @inlinable func copy<ValueT: ValueProtocol>(destValue: ValueT) {
        
        g_value_copy(value_ptr, destValue.value_ptr)
        
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.  Upon getting,
    /// the boxed value is duplicated and needs to be later freed with
    /// `g_boxed_free()`, e.g. like: g_boxed_free (G_VALUE_TYPE (`value`),
    /// return_value);
    @inlinable func dupBoxed() -> gpointer? {
        let result = g_value_dup_boxed(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`, increasing
    /// its reference count. If the contents of the `GValue` are `nil`, then
    /// `nil` will be returned.
    @inlinable func dupObject() -> GLibObject.ObjectRef! {
        let result = g_value_dup_object(value_ptr)
        let rv = ObjectRef(gpointer: result)
        return rv
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue`, increasing its
    /// reference count.
    @inlinable func dupParam() -> GLibObject.ParamSpecRef! {
        let result = g_value_dup_param(value_ptr)
        let rv = ParamSpecRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Get a copy the contents of a `G_TYPE_STRING` `GValue`.
    @inlinable func dupString() -> String! {
        let result = g_value_dup_string(value_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Get the contents of a variant `GValue`, increasing its refcount. The returned
    /// `GVariant` is never floating.
    @inlinable func dupVariant() -> GLib.VariantRef! {
        let result = g_value_dup_variant(value_ptr)
        let rv = GLib.VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Determines if `value` will fit inside the size of a pointer value.
    /// This is an internal function introduced mainly for C marshallers.
    @inlinable func fitsPointer() -> Bool {
        let result = g_value_fits_pointer(value_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Get the contents of a `G_TYPE_BOOLEAN` `GValue`.
    @inlinable func getBoolean() -> Bool {
        let result = g_value_get_boolean(value_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.
    @inlinable func getBoxed() -> gpointer? {
        let result = g_value_get_boxed(value_ptr)
        let rv = result
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
        let result = g_value_get_char(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_DOUBLE` `GValue`.
    @inlinable func getDouble() -> Double {
        let result = g_value_get_double(value_ptr)
        let rv = Double(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_ENUM` `GValue`.
    @inlinable func getEnum() -> Int {
        let result = g_value_get_enum(value_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_FLAGS` `GValue`.
    @inlinable func getFlags() -> Int {
        let result = g_value_get_flags(value_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_FLOAT` `GValue`.
    @inlinable func getFloat() -> Double {
        let result = g_value_get_float(value_ptr)
        let rv = Double(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_GTYPE` `GValue`.
    @inlinable func getGtype() -> GType {
        let result = g_value_get_gtype(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_INT` `GValue`.
    @inlinable func getInt() -> Int {
        let result = g_value_get_int(value_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_INT64` `GValue`.
    @inlinable func getInt64() -> gint64 {
        let result = g_value_get_int64(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_LONG` `GValue`.
    @inlinable func getLong() -> Int {
        let result = g_value_get_long(value_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`.
    @inlinable func getObject() -> GLibObject.ObjectRef! {
        let result = g_value_get_object(value_ptr)
        let rv = ObjectRef(gpointer: result)
        return rv
    }

    /// Get the contents of a `G_TYPE_PARAM` `GValue`.
    @inlinable func getParam() -> GLibObject.ParamSpecRef! {
        let result = g_value_get_param(value_ptr)
        let rv = ParamSpecRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Get the contents of a pointer `GValue`.
    @inlinable func getPointer() -> gpointer? {
        let result = g_value_get_pointer(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_CHAR` `GValue`.
    @inlinable func getSchar() -> gint8 {
        let result = g_value_get_schar(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_STRING` `GValue`.
    @inlinable func getString() -> String! {
        let result = g_value_get_string(value_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    /// Get the contents of a `G_TYPE_UCHAR` `GValue`.
    @inlinable func getUchar() -> guchar {
        let result = g_value_get_uchar(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_UINT` `GValue`.
    @inlinable func getUint() -> Int {
        let result = g_value_get_uint(value_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the contents of a `G_TYPE_UINT64` `GValue`.
    @inlinable func getUint64() -> guint64 {
        let result = g_value_get_uint64(value_ptr)
        let rv = result
        return rv
    }

    /// Get the contents of a `G_TYPE_ULONG` `GValue`.
    @inlinable func getUlong() -> Int {
        let result = g_value_get_ulong(value_ptr)
        let rv = Int(result)
        return rv
    }

    /// Get the contents of a variant `GValue`.
    @inlinable func getVariant() -> GLib.VariantRef! {
        let result = g_value_get_variant(value_ptr)
        let rv = GLib.VariantRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Initializes `value` with the default value of `type`.
    @inlinable func init_(gType: GType) -> GLibObject.ValueRef! {
        let result = g_value_init(value_ptr, gType)
        guard let rv = ValueRef(gconstpointer: gconstpointer(result)) else { return nil }
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
    @inlinable func peekPointer() -> gpointer? {
        let result = g_value_peek_pointer(value_ptr)
        let rv = result
        return rv
    }

    /// Clears the current value in `value` and resets it to the default value
    /// (as if the value had just been initialized).
    @inlinable func reset() -> GLibObject.ValueRef! {
        let result = g_value_reset(value_ptr)
        guard let rv = ValueRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Set the contents of a `G_TYPE_BOOLEAN` `GValue` to `v_boolean`.
    @inlinable func setBoolean(vBoolean: Bool) {
        
        g_value_set_boolean(value_ptr, gboolean((vBoolean) ? 1 : 0))
        
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    @inlinable func setBoxed(vBoxed: gconstpointer? = nil) {
        
        g_value_set_boxed(value_ptr, vBoxed)
        
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_boxed_take_ownership is deprecated:**
    /// Use g_value_take_boxed() instead.
    @available(*, deprecated) @inlinable func setBoxedTakeOwnership(vBoxed: gconstpointer? = nil) {
        
        g_value_set_boxed_take_ownership(value_ptr, vBoxed)
        
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
    ///
    /// **set_char is deprecated:**
    /// This function's input type is broken, see g_value_set_schar()
    @available(*, deprecated) @inlinable func setChar(vChar: gchar) {
        
        g_value_set_char(value_ptr, vChar)
        
    }

    /// Set the contents of a `G_TYPE_DOUBLE` `GValue` to `v_double`.
    @inlinable func setDouble(vDouble: Double) {
        
        g_value_set_double(value_ptr, gdouble(vDouble))
        
    }

    /// Set the contents of a `G_TYPE_ENUM` `GValue` to `v_enum`.
    @inlinable func setEnum(vEnum: Int) {
        
        g_value_set_enum(value_ptr, gint(vEnum))
        
    }

    /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags`.
    @inlinable func setFlags(vFlags: Int) {
        
        g_value_set_flags(value_ptr, guint(vFlags))
        
    }

    /// Set the contents of a `G_TYPE_FLOAT` `GValue` to `v_float`.
    @inlinable func setFloat(vFloat: Double) {
        
        g_value_set_float(value_ptr, gfloat(vFloat))
        
    }

    /// Set the contents of a `G_TYPE_GTYPE` `GValue` to `v_gtype`.
    @inlinable func setGtype(vGtype: GType) {
        
        g_value_set_gtype(value_ptr, vGtype)
        
    }

    /// Sets `value` from an instantiatable type via the
    /// value_table's `collect_value()` function.
    @inlinable func set(instance: gpointer? = nil) {
        
        g_value_set_instance(value_ptr, instance)
        
    }

    /// Set the contents of a `G_TYPE_INT` `GValue` to `v_int`.
    @inlinable func setInt(vInt: gint) {
        
        g_value_set_int(value_ptr, gint(vInt))
        
    }

    /// Set the contents of a `G_TYPE_INT64` `GValue` to `v_int64`.
    @inlinable func setInt64(vInt64: gint64) {
        
        g_value_set_int64(value_ptr, vInt64)
        
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.  The string is
    /// assumed to be static and interned (canonical, for example from
    /// `g_intern_string()`), and is thus not duplicated when setting the `GValue`.
    @inlinable func setInternedString(vString: UnsafePointer<gchar>? = nil) {
        
        g_value_set_interned_string(value_ptr, vString)
        
    }

    /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long`.
    @inlinable func setLong(vLong: Int) {
        
        g_value_set_long(value_ptr, glong(vLong))
        
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
    @inlinable func setObject(vObject: ObjectRef? = nil) {
            
        g_value_set_object(value_ptr, vObject?.object_ptr)
            
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
    @inlinable func setObject<ObjectT: ObjectProtocol>(vObject: ObjectT?) {
        
        g_value_set_object(value_ptr, vObject?.object_ptr)
        
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_object_take_ownership is deprecated:**
    /// Use g_value_take_object() instead.
    @available(*, deprecated) @inlinable func setObjectTakeOwnership(vObject: gpointer? = nil) {
        
        g_value_set_object_take_ownership(value_ptr, vObject)
        
    }

    /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
    @inlinable func set(param: ParamSpecRef? = nil) {
            
        g_value_set_param(value_ptr, param?.param_spec_ptr)
            
    }
    /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
    @inlinable func set<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT?) {
        
        g_value_set_param(value_ptr, param?.param_spec_ptr)
        
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_param_take_ownership is deprecated:**
    /// Use g_value_take_param() instead.
    @available(*, deprecated) @inlinable func setParamTakeOwnership(param: ParamSpecRef? = nil) {
            
        g_value_set_param_take_ownership(value_ptr, param?.param_spec_ptr)
            
    }
    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_param_take_ownership is deprecated:**
    /// Use g_value_take_param() instead.
    @available(*, deprecated) @inlinable func setParamTakeOwnership<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT?) {
        
        g_value_set_param_take_ownership(value_ptr, param?.param_spec_ptr)
        
    }

    /// Set the contents of a pointer `GValue` to `v_pointer`.
    @inlinable func setPointer(vPointer: gpointer? = nil) {
        
        g_value_set_pointer(value_ptr, vPointer)
        
    }

    /// Set the contents of a `G_TYPE_CHAR` `GValue` to `v_char`.
    @inlinable func setSchar(vChar: gint8) {
        
        g_value_set_schar(value_ptr, vChar)
        
    }

    /// Set the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`.
    /// 
    /// The boxed value is assumed to be static, and is thus not duplicated
    /// when setting the `GValue`.
    @inlinable func setStaticBoxed(vBoxed: gconstpointer? = nil) {
        
        g_value_set_static_boxed(value_ptr, vBoxed)
        
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    /// The string is assumed to be static, and is thus not duplicated
    /// when setting the `GValue`.
    /// 
    /// If the the string is a canonical string, using `g_value_set_interned_string()`
    /// is more appropriate.
    @inlinable func setStaticString(vString: UnsafePointer<gchar>? = nil) {
        
        g_value_set_static_string(value_ptr, vString)
        
    }

    /// Set the contents of a `G_TYPE_STRING` `GValue` to a copy of `v_string`.
    @inlinable func setString(vString: UnsafePointer<gchar>? = nil) {
        
        g_value_set_string(value_ptr, vString)
        
    }

    /// This is an internal function introduced mainly for C marshallers.
    ///
    /// **set_string_take_ownership is deprecated:**
    /// Use g_value_take_string() instead.
    @available(*, deprecated) @inlinable func setStringTakeOwnership(vString: UnsafeMutablePointer<gchar>? = nil) {
        
        g_value_set_string_take_ownership(value_ptr, vString)
        
    }

    /// Set the contents of a `G_TYPE_UCHAR` `GValue` to `v_uchar`.
    @inlinable func setUchar(vUchar: guchar) {
        
        g_value_set_uchar(value_ptr, vUchar)
        
    }

    /// Set the contents of a `G_TYPE_UINT` `GValue` to `v_uint`.
    @inlinable func setUint(vUint: guint) {
        
        g_value_set_uint(value_ptr, guint(vUint))
        
    }

    /// Set the contents of a `G_TYPE_UINT64` `GValue` to `v_uint64`.
    @inlinable func setUint64(vUint64: guint64) {
        
        g_value_set_uint64(value_ptr, vUint64)
        
    }

    /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong`.
    @inlinable func setUlong(vUlong: gulong) {
        
        g_value_set_ulong(value_ptr, gulong(vUlong))
        
    }

    /// Set the contents of a variant `GValue` to `variant`.
    /// If the variant is floating, it is consumed.
    @inlinable func set(variant: GLib.VariantRef? = nil) {
            
        g_value_set_variant(value_ptr, variant?.variant_ptr)
            
    }
    /// Set the contents of a variant `GValue` to `variant`.
    /// If the variant is floating, it is consumed.
    @inlinable func set<GLibVariantT: GLib.VariantProtocol>(variant: GLibVariantT?) {
        
        g_value_set_variant(value_ptr, variant?.variant_ptr)
        
    }

    /// Sets the contents of a `G_TYPE_BOXED` derived `GValue` to `v_boxed`
    /// and takes over the ownership of the caller’s reference to `v_boxed`;
    /// the caller doesn’t have to unref it any more.
    @inlinable func takeBoxed(vBoxed: gconstpointer? = nil) {
        
        g_value_take_boxed(value_ptr, vBoxed)
        
    }

    /// Sets the contents of a `G_TYPE_OBJECT` derived `GValue` to `v_object`
    /// and takes over the ownership of the caller’s reference to `v_object`;
    /// the caller doesn’t have to unref it any more (i.e. the reference
    /// count of the object is not increased).
    /// 
    /// If you want the `GValue` to hold its own reference to `v_object`, use
    /// `g_value_set_object()` instead.
    @inlinable func takeObject(vObject: gpointer? = nil) {
        
        g_value_take_object(value_ptr, vObject)
        
    }

    /// Sets the contents of a `G_TYPE_PARAM` `GValue` to `param` and takes
    /// over the ownership of the caller’s reference to `param`; the caller
    /// doesn’t have to unref it any more.
    @inlinable func take(param: ParamSpecRef? = nil) {
            
        g_value_take_param(value_ptr, param?.param_spec_ptr)
            
    }
    /// Sets the contents of a `G_TYPE_PARAM` `GValue` to `param` and takes
    /// over the ownership of the caller’s reference to `param`; the caller
    /// doesn’t have to unref it any more.
    @inlinable func take<ParamSpecT: ParamSpecProtocol>(param: ParamSpecT?) {
        
        g_value_take_param(value_ptr, param?.param_spec_ptr)
        
    }

    /// Sets the contents of a `G_TYPE_STRING` `GValue` to `v_string`.
    @inlinable func takeString(vString: UnsafeMutablePointer<gchar>? = nil) {
        
        g_value_take_string(value_ptr, vString)
        
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
    @inlinable func take(variant: GLib.VariantRef? = nil) {
            
        g_value_take_variant(value_ptr, variant?.variant_ptr)
            
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
    @inlinable func take<GLibVariantT: GLib.VariantProtocol>(variant: GLibVariantT?) {
        
        g_value_take_variant(value_ptr, variant?.variant_ptr)
        
    }

    /// Tries to cast the contents of `src_value` into a type appropriate
    /// to store in `dest_value`, e.g. to transform a `G_TYPE_INT` value
    /// into a `G_TYPE_FLOAT` value. Performing transformations between
    /// value types might incur precision lossage. Especially
    /// transformations into strings might reveal seemingly arbitrary
    /// results and shouldn't be relied upon for production code (such
    /// as rcfile value or object property serialization).
    @inlinable func transform<ValueT: ValueProtocol>(destValue: ValueT) -> Bool {
        let result = g_value_transform(value_ptr, destValue.value_ptr)
        let rv = ((result) != 0)
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
    @inlinable func cclosureMarshalBOOLEANBOXEDBOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
    /// denotes a flags type.
    @inlinable func cclosureMarshalBOOLEANFLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_BOOLEAN__FLAGS(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalSTRINGOBJECTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_STRING__OBJECT_POINTER(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDBOOLEAN<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__BOOLEAN(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDBOXED<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__BOXED(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDCHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__CHAR(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDDOUBLE<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__DOUBLE(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
    @inlinable func cclosureMarshalVOIDENUM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__ENUM(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
    @inlinable func cclosureMarshalVOIDFLAGS<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__FLAGS(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDFLOAT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__FLOAT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDINT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__INT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDLONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__LONG(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDOBJECT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__OBJECT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDPARAM<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__PARAM(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__POINTER(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDSTRING<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__STRING(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDUCHAR<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__UCHAR(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDUINT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__UINT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDUINTPOINTER<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__UINT_POINTER(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDULONG<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__ULONG(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDVARIANT<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__VARIANT(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDVOID<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__VOID(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A generic marshaller function implemented via
    /// [libffi](http://sourceware.org/libffi/).
    /// 
    /// Normally this function is not passed explicitly to `g_signal_new()`,
    /// but used automatically by GLib when specifying a `nil` marshaller.
    @inlinable func cclosureMarshalGeneric<ClosureT: ClosureProtocol, ValueT: ValueProtocol>(closure: ClosureT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_generic(closure.closure_ptr, value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also `g_value_type_transformable()`, `g_value_transform()` and
    /// `g_param_value_validate()`.
    @inlinable func paramValueConvert<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, destValue: ValueT, strictValidation: Bool) -> Bool {
        let result = g_param_value_convert(pspec.param_spec_ptr, value_ptr, destValue.value_ptr, gboolean((strictValidation) ? 1 : 0))
        let rv = ((result) != 0)
        return rv
    }

    /// Checks whether `value` contains the default value as specified in `pspec`.
    @inlinable func paramValueDefaults<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) -> Bool {
        let result = g_param_value_defaults(pspec.param_spec_ptr, value_ptr)
        let rv = ((result) != 0)
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
        let result = g_param_value_validate(pspec.param_spec_ptr, value_ptr)
        let rv = ((result) != 0)
        return rv
    }

    /// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
    /// if `value1` is found to be less than, equal to or greater than `value2`,
    /// respectively.
    @inlinable func paramValuesCmp<ParamSpecT: ParamSpecProtocol, ValueT: ValueProtocol>(pspec: ParamSpecT, value2: ValueT) -> Int {
        let result = g_param_values_cmp(pspec.param_spec_ptr, value_ptr, value2.value_ptr)
        let rv = Int(result)
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
    @inlinable func signalAccumulatorFirstWins<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, handlerReturn: ValueT, dummy: gpointer? = nil) -> Bool {
        let result = g_signal_accumulator_first_wins(ihint._ptr, value_ptr, handlerReturn.value_ptr, dummy)
        let rv = ((result) != 0)
        return rv
    }

    /// A predefined `GSignalAccumulator` for signals that return a
    /// boolean values. The behavior that this accumulator gives is
    /// that a return of `true` stops the signal emission: no further
    /// callbacks will be invoked, while a return of `false` allows
    /// the emission to continue. The idea here is that a `true` return
    /// indicates that the callback handled the signal, and no further
    /// handling is needed.
    @inlinable func signalAccumulatorTrueHandled<SignalInvocationHintT: SignalInvocationHintProtocol, ValueT: ValueProtocol>(ihint: SignalInvocationHintT, handlerReturn: ValueT, dummy: gpointer? = nil) -> Bool {
        let result = g_signal_accumulator_true_handled(ihint._ptr, value_ptr, handlerReturn.value_ptr, dummy)
        let rv = ((result) != 0)
        return rv
    }

    /// Calls the original class closure of a signal. This function should only
    /// be called from an overridden class closure; see
    /// `g_signal_override_class_closure()` and
    /// `g_signal_override_class_handler()`.
    @inlinable func signalChainFromOverridden(instanceAndParams: UnsafePointer<GValue>!) {
        
        g_signal_chain_from_overridden(instanceAndParams, value_ptr)
        
    }

    /// Emits a signal. Signal emission is done synchronously.
    /// The method will only return control after all handlers are called or signal emission was stopped.
    /// 
    /// Note that `g_signal_emitv()` doesn't change `return_value` if no handlers are
    /// connected, in contrast to `g_signal_emit()` and `g_signal_emit_valist()`.
    @inlinable func signalEmitv(instanceAndParams: UnsafePointer<GValue>!, signalID: Int, detail: GQuark) {
        
        g_signal_emitv(instanceAndParams, guint(signalID), detail, value_ptr)
        
    }

    /// Return a newly allocated string, which describes the contents of a
    /// `GValue`.  The main purpose of this function is to describe `GValue`
    /// contents for debugging output, the way in which the contents are
    /// described may change between different GLib versions.
    @inlinable func strdupValueContents() -> String! {
        let result = g_strdup_value_contents(value_ptr)
        let rv = result.map({ String(cString: $0) })
        return rv
    }

    @inlinable func typeCheckValue() -> Bool {
        let result = g_type_check_value(value_ptr)
        let rv = ((result) != 0)
        return rv
    }

    @inlinable func typeCheckValueHolds(type: GType) -> Bool {
        let result = g_type_check_value_holds(value_ptr, type)
        let rv = ((result) != 0)
        return rv
    }
    /// Get the contents of a `G_TYPE_BOOLEAN` `GValue`.
    @inlinable var boolean: Bool {
        /// Get the contents of a `G_TYPE_BOOLEAN` `GValue`.
        get {
            let result = g_value_get_boolean(value_ptr)
        let rv = ((result) != 0)
            return rv
        }
        /// Set the contents of a `G_TYPE_BOOLEAN` `GValue` to `v_boolean`.
        nonmutating set {
            g_value_set_boolean(value_ptr, gboolean((newValue) ? 1 : 0))
        }
    }

    /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.
    @inlinable var boxed: gpointer? {
        /// Get the contents of a `G_TYPE_BOXED` derived `GValue`.
        get {
            let result = g_value_get_boxed(value_ptr)
        let rv = result
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
            let result = g_value_get_char(value_ptr)
        let rv = result
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
            let result = g_value_get_double(value_ptr)
        let rv = Double(result)
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
            let result = g_value_get_enum(value_ptr)
        let rv = Int(result)
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
            let result = g_value_get_flags(value_ptr)
        let rv = Int(result)
            return rv
        }
        /// Set the contents of a `G_TYPE_FLAGS` `GValue` to `v_flags`.
        nonmutating set {
            g_value_set_flags(value_ptr, guint(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_FLOAT` `GValue`.
    @inlinable var float: Double {
        /// Get the contents of a `G_TYPE_FLOAT` `GValue`.
        get {
            let result = g_value_get_float(value_ptr)
        let rv = Double(result)
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
            let result = g_value_get_gtype(value_ptr)
        let rv = result
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
            let result = g_value_get_int(value_ptr)
        let rv = Int(result)
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
            let result = g_value_get_int64(value_ptr)
        let rv = result
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
            let result = g_value_get_long(value_ptr)
        let rv = Int(result)
            return rv
        }
        /// Set the contents of a `G_TYPE_LONG` `GValue` to `v_long`.
        nonmutating set {
            g_value_set_long(value_ptr, glong(newValue))
        }
    }

    /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`.
    @inlinable var object: GLibObject.ObjectRef! {
        /// Get the contents of a `G_TYPE_OBJECT` derived `GValue`.
        get {
            let result = g_value_get_object(value_ptr)
        let rv = ObjectRef(gpointer: result)
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
    @inlinable var param: GLibObject.ParamSpecRef! {
        /// Get the contents of a `G_TYPE_PARAM` `GValue`.
        get {
            let result = g_value_get_param(value_ptr)
        let rv = ParamSpecRef(gconstpointer: gconstpointer(result))
            return rv
        }
        /// Set the contents of a `G_TYPE_PARAM` `GValue` to `param`.
        nonmutating set {
            g_value_set_param(value_ptr, UnsafeMutablePointer<GParamSpec>(newValue?.param_spec_ptr))
        }
    }

    /// Get the contents of a pointer `GValue`.
    @inlinable var pointer: gpointer? {
        /// Get the contents of a pointer `GValue`.
        get {
            let result = g_value_get_pointer(value_ptr)
        let rv = result
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
            let result = g_value_get_schar(value_ptr)
        let rv = result
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
            let result = g_value_get_string(value_ptr)
        let rv = result.map({ String(cString: $0) })
            return rv
        }
        /// Set the contents of a `G_TYPE_STRING` `GValue` to a copy of `v_string`.
        nonmutating set {
            g_value_set_string(value_ptr, newValue)
        }
    }

    /// Get the contents of a `G_TYPE_UCHAR` `GValue`.
    @inlinable var uchar: guchar {
        /// Get the contents of a `G_TYPE_UCHAR` `GValue`.
        get {
            let result = g_value_get_uchar(value_ptr)
        let rv = result
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
            let result = g_value_get_uint(value_ptr)
        let rv = Int(result)
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
            let result = g_value_get_uint64(value_ptr)
        let rv = result
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
            let result = g_value_get_ulong(value_ptr)
        let rv = Int(result)
            return rv
        }
        /// Set the contents of a `G_TYPE_ULONG` `GValue` to `v_ulong`.
        nonmutating set {
            g_value_set_ulong(value_ptr, gulong(newValue))
        }
    }

    /// Get the contents of a variant `GValue`.
    @inlinable var variant: GLib.VariantRef! {
        /// Get the contents of a variant `GValue`.
        get {
            let result = g_value_get_variant(value_ptr)
        let rv = GLib.VariantRef(gconstpointer: gconstpointer(result))
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



// MARK: - ValueArray Record

/// A `GValueArray` contains an array of `GValue` elements.
///
/// The `ValueArrayProtocol` protocol exposes the methods and properties of an underlying `GValueArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ValueArray`.
/// Alternatively, use `ValueArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ValueArrayProtocol {
        /// Untyped pointer to the underlying `GValueArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GValueArray` instance.
    var value_array_ptr: UnsafeMutablePointer<GValueArray>! { get }

    /// Required Initialiser for types conforming to `ValueArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GValueArray` contains an array of `GValue` elements.
///
/// The `ValueArrayRef` type acts as a lightweight Swift reference to an underlying `GValueArray` instance.
/// It exposes methods that can operate on this data type through `ValueArrayProtocol` conformance.
/// Use `ValueArrayRef` only as an `unowned` reference to an existing `GValueArray` instance.
///
public struct ValueArrayRef: ValueArrayProtocol {
        /// Untyped pointer to the underlying `GValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ValueArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GValueArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GValueArray>?) {
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

    /// Reference intialiser for a related type that implements `ValueArrayProtocol`
    @inlinable init<T: ValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Allocate and initialize a new `GValueArray`, optionally preserve space
    /// for `n_prealloced` elements. New arrays always contain 0 elements,
    /// regardless of the value of `n_prealloced`.
    ///
    /// **new is deprecated:**
    /// Use #GArray and g_array_sized_new() instead.
    @available(*, deprecated) @inlinable init( nPrealloced: Int) {
            let result = g_value_array_new(guint(nPrealloced))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
}

/// A `GValueArray` contains an array of `GValue` elements.
///
/// The `ValueArray` type acts as an owner of an underlying `GValueArray` instance.
/// It provides the methods that can operate on this data type through `ValueArrayProtocol` conformance.
/// Use `ValueArray` as a strong reference or owner of a `GValueArray` instance.
///
open class ValueArray: ValueArrayProtocol {
        /// Untyped pointer to the underlying `GValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GValueArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GValueArray>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GValueArray` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GValueArray>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Reference intialiser for a related type that implements `ValueArrayProtocol`
    /// `GValueArray` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ValueArrayProtocol`
    @inlinable public init<T: ValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Do-nothing destructor for `GValueArray`.
    deinit {
        // no reference counting for GValueArray, cannot unref(value_array_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GValueArray, cannot ref(value_array_ptr)
    }

    /// Allocate and initialize a new `GValueArray`, optionally preserve space
    /// for `n_prealloced` elements. New arrays always contain 0 elements,
    /// regardless of the value of `n_prealloced`.
    ///
    /// **new is deprecated:**
    /// Use #GArray and g_array_sized_new() instead.
    @available(*, deprecated) @inlinable public init( nPrealloced: Int) {
            let result = g_value_array_new(guint(nPrealloced))
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }


}

// MARK: no ValueArray properties

// MARK: no ValueArray signals

// MARK: ValueArray has no signals
// MARK: ValueArray Record: ValueArrayProtocol extension (methods and fields)
public extension ValueArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GValueArray` instance.
    @inlinable var value_array_ptr: UnsafeMutablePointer<GValueArray>! { return ptr?.assumingMemoryBound(to: GValueArray.self) }

    /// Insert a copy of `value` as last element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is appended.
    ///
    /// **append is deprecated:**
    /// Use #GArray and g_array_append_val() instead.
    @available(*, deprecated) @inlinable func append(value: ValueRef? = nil) -> GLibObject.ValueArrayRef! {
            let result = g_value_array_append(value_array_ptr, value?.value_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
            return rv
    }
    /// Insert a copy of `value` as last element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is appended.
    ///
    /// **append is deprecated:**
    /// Use #GArray and g_array_append_val() instead.
    @available(*, deprecated) @inlinable func append<ValueT: ValueProtocol>(value: ValueT?) -> GLibObject.ValueArrayRef! {
        let result = g_value_array_append(value_array_ptr, value?.value_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Construct an exact copy of a `GValueArray` by duplicating all its
    /// contents.
    ///
    /// **copy is deprecated:**
    /// Use #GArray and g_array_ref() instead.
    @available(*, deprecated) @inlinable func copy() -> GLibObject.ValueArrayRef! {
        let result = g_value_array_copy(value_array_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Free a `GValueArray` including its contents.
    ///
    /// **free is deprecated:**
    /// Use #GArray and g_array_unref() instead.
    @available(*, deprecated) @inlinable func free() {
        
        g_value_array_free(value_array_ptr)
        
    }

    /// Return a pointer to the value at `index_` containd in `value_array`.
    ///
    /// **get_nth is deprecated:**
    /// Use g_array_index() instead.
    @available(*, deprecated) @inlinable func getNth(index: Int) -> GLibObject.ValueRef! {
        let result = g_value_array_get_nth(value_array_ptr, guint(index))
        let rv = ValueRef(gconstpointer: gconstpointer(result))
        return rv
    }

    /// Insert a copy of `value` at specified position into `value_array`. If `value`
    /// is `nil`, an uninitialized value is inserted.
    ///
    /// **insert is deprecated:**
    /// Use #GArray and g_array_insert_val() instead.
    @available(*, deprecated) @inlinable func insert(index: Int, value: ValueRef? = nil) -> GLibObject.ValueArrayRef! {
            let result = g_value_array_insert(value_array_ptr, guint(index), value?.value_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
            return rv
    }
    /// Insert a copy of `value` at specified position into `value_array`. If `value`
    /// is `nil`, an uninitialized value is inserted.
    ///
    /// **insert is deprecated:**
    /// Use #GArray and g_array_insert_val() instead.
    @available(*, deprecated) @inlinable func insert<ValueT: ValueProtocol>(index: Int, value: ValueT?) -> GLibObject.ValueArrayRef! {
        let result = g_value_array_insert(value_array_ptr, guint(index), value?.value_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Insert a copy of `value` as first element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is prepended.
    ///
    /// **prepend is deprecated:**
    /// Use #GArray and g_array_prepend_val() instead.
    @available(*, deprecated) @inlinable func prepend(value: ValueRef? = nil) -> GLibObject.ValueArrayRef! {
            let result = g_value_array_prepend(value_array_ptr, value?.value_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
            return rv
    }
    /// Insert a copy of `value` as first element of `value_array`. If `value` is
    /// `nil`, an uninitialized value is prepended.
    ///
    /// **prepend is deprecated:**
    /// Use #GArray and g_array_prepend_val() instead.
    @available(*, deprecated) @inlinable func prepend<ValueT: ValueProtocol>(value: ValueT?) -> GLibObject.ValueArrayRef! {
        let result = g_value_array_prepend(value_array_ptr, value?.value_ptr)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Remove the value at position `index_` from `value_array`.
    ///
    /// **remove is deprecated:**
    /// Use #GArray and g_array_remove_index() instead.
    @available(*, deprecated) @inlinable func remove(index: Int) -> GLibObject.ValueArrayRef! {
        let result = g_value_array_remove(value_array_ptr, guint(index))
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sort `value_array` using `compare_func` to compare the elements according to
    /// the semantics of `GCompareFunc`.
    /// 
    /// The current implementation uses the same sorting algorithm as standard
    /// C `qsort()` function.
    ///
    /// **sort is deprecated:**
    /// Use #GArray and g_array_sort().
    @available(*, deprecated) @inlinable func sort(compareFunc: GCompareFunc?) -> GLibObject.ValueArrayRef! {
        let result = g_value_array_sort(value_array_ptr, compareFunc)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Sort `value_array` using `compare_func` to compare the elements according
    /// to the semantics of `GCompareDataFunc`.
    /// 
    /// The current implementation uses the same sorting algorithm as standard
    /// C `qsort()` function.
    ///
    /// **sort_with_data is deprecated:**
    /// Use #GArray and g_array_sort_with_data().
    @available(*, deprecated) @inlinable func sortWithData(compareFunc: GCompareDataFunc?, userData: gpointer? = nil) -> GLibObject.ValueArrayRef! {
        let result = g_value_array_sort_with_data(value_array_ptr, compareFunc, userData)
        guard let rv = ValueArrayRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// number of values contained in the array
    @inlinable var nValues: guint {
        /// number of values contained in the array
        get {
            let rv = value_array_ptr.pointee.n_values
    return rv
        }
        /// number of values contained in the array
         set {
            value_array_ptr.pointee.n_values = newValue
        }
    }

    /// array of values
    @inlinable var values: ValueRef! {
        /// array of values
        get {
            let rv = ValueRef(gconstpointer: gconstpointer(value_array_ptr.pointee.values))
    return rv
        }
        /// array of values
         set {
            value_array_ptr.pointee.values = UnsafeMutablePointer<GValue>(newValue.value_ptr)
        }
    }

    // var nPrealloced is unavailable because n_prealloced is private

}



