import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpec Class

/// The `ParamSpecProtocol` protocol exposes the methods and properties of an underlying `GParamSpec` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpec`.
/// Alternatively, use `ParamSpecRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ## Parameter names # <a name="canonical-parameter-names"></a>
/// 
/// A property name consists of one or more segments consisting of ASCII letters
/// and digits, separated by either the `-` or `_` character. The first
/// character of a property name must be a letter. These are the same rules as
/// for signal naming (see `g_signal_new()`).
/// 
/// When creating and looking up a `GParamSpec`, either separator can be
/// used, but they cannot be mixed. Using `-` is considerably more
/// efficient, and is the ‘canonical form’. Using `_` is discouraged.
public protocol ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpec` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpec` instance.
    var param_spec_ptr: UnsafeMutablePointer<GParamSpec>! { get }

}

/// The `ParamSpecRef` type acts as a lightweight Swift reference to an underlying `GParamSpec` instance.
/// It exposes methods that can operate on this data type through `ParamSpecProtocol` conformance.
/// Use `ParamSpecRef` only as an `unowned` reference to an existing `GParamSpec` instance.
///
/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ## Parameter names # <a name="canonical-parameter-names"></a>
/// 
/// A property name consists of one or more segments consisting of ASCII letters
/// and digits, separated by either the `-` or `_` character. The first
/// character of a property name must be a letter. These are the same rules as
/// for signal naming (see `g_signal_new()`).
/// 
/// When creating and looking up a `GParamSpec`, either separator can be
/// used, but they cannot be mixed. Using `-` is considerably more
/// efficient, and is the ‘canonical form’. Using `_` is discouraged.
public struct ParamSpecRef: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpec` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpec>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpec>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecProtocol`
    @inlinable init<T: ParamSpecProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GParamSpec` instance.
    /// 
    /// See [canonical parameter names](#canonical-parameter-names) for details of
    /// the rules for `name`. Names which violate these rules lead to undefined
    /// behaviour.
    /// 
    /// Beyond the name, `GParamSpecs` have two more descriptive
    /// strings associated with them, the `nick`, which should be suitable
    /// for use as a label for the property in a property editor, and the
    /// `blurb`, which should be a somewhat longer description, suitable for
    /// e.g. a tooltip. The `nick` and `blurb` should ideally be localized.
    @inlinable static func internal_(paramType: GType, name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> ParamSpecRef! {
        guard let rv = ParamSpecRef(gpointer: g_param_spec_internal(paramType, name, nick, blurb, flags.value)) else { return nil }
        return rv
    }
}

/// The `ParamSpec` type acts as a reference-counted owner of an underlying `GParamSpec` instance.
/// It provides the methods that can operate on this data type through `ParamSpecProtocol` conformance.
/// Use `ParamSpec` as a strong reference or owner of a `GParamSpec` instance.
///
/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ## Parameter names # <a name="canonical-parameter-names"></a>
/// 
/// A property name consists of one or more segments consisting of ASCII letters
/// and digits, separated by either the `-` or `_` character. The first
/// character of a property name must be a letter. These are the same rules as
/// for signal naming (see `g_signal_new()`).
/// 
/// When creating and looking up a `GParamSpec`, either separator can be
/// used, but they cannot be mixed. Using `-` is considerably more
/// efficient, and is the ‘canonical form’. Using `_` is discouraged.
open class ParamSpec: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpec` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpec>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpec>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpec`.
    /// i.e., ownership is transferred to the `ParamSpec` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(op)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Reference intialiser for a related type that implements `ParamSpecProtocol`
    /// Will retain `GParamSpec`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecProtocol`
    @inlinable public init<T: ParamSpecProtocol>(_ other: T) {
        ptr = other.ptr
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Releases the underlying `GParamSpec` instance using `g_param_spec_unref`.
    deinit {
        g_param_spec_unref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_param_spec_ref(ptr.assumingMemoryBound(to: GParamSpec.self))
    }


    /// Creates a new `GParamSpec` instance.
    /// 
    /// See [canonical parameter names](#canonical-parameter-names) for details of
    /// the rules for `name`. Names which violate these rules lead to undefined
    /// behaviour.
    /// 
    /// Beyond the name, `GParamSpecs` have two more descriptive
    /// strings associated with them, the `nick`, which should be suitable
    /// for use as a label for the property in a property editor, and the
    /// `blurb`, which should be a somewhat longer description, suitable for
    /// e.g. a tooltip. The `nick` and `blurb` should ideally be localized.
    @inlinable public static func internal_(paramType: GType, name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> ParamSpec! {
        guard let rv = ParamSpec(gpointer: g_param_spec_internal(paramType, name, nick, blurb, flags.value)) else { return nil }
        return rv
    }

}

// MARK: no ParamSpec properties

// MARK: no ParamSpec signals


// MARK: ParamSpec Class: ParamSpecProtocol extension (methods and fields)
public extension ParamSpecProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpec` instance.
    @inlinable var param_spec_ptr: UnsafeMutablePointer<GParamSpec>! { return ptr?.assumingMemoryBound(to: GParamSpec.self) }

    /// Get the short description of a `GParamSpec`.
    @inlinable func getBlurb() -> String! {
        let rv = g_param_spec_get_blurb(param_spec_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the default value of `pspec` as a pointer to a `GValue`.
    /// 
    /// The `GValue` will remain valid for the life of `pspec`.
    @inlinable func getDefaultValue() -> ValueRef! {
        let rv = ValueRef(gconstpointer: gconstpointer(g_param_spec_get_default_value(param_spec_ptr)))
        return rv
    }

    /// Get the name of a `GParamSpec`.
    /// 
    /// The name is always an "interned" string (as per `g_intern_string()`).
    /// This allows for pointer-value comparisons.
    @inlinable func getName() -> String! {
        let rv = g_param_spec_get_name(param_spec_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets the GQuark for the name.
    @inlinable func getNameQuark() -> GQuark {
        let rv = g_param_spec_get_name_quark(param_spec_ptr)
        return rv
    }

    /// Get the nickname of a `GParamSpec`.
    @inlinable func getNick() -> String! {
        let rv = g_param_spec_get_nick(param_spec_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Gets back user data pointers stored via `g_param_spec_set_qdata()`.
    @inlinable func getQdata(quark: GQuark) -> gpointer! {
        let rv = g_param_spec_get_qdata(param_spec_ptr, quark)
        return rv
    }

    /// If the paramspec redirects operations to another paramspec,
    /// returns that paramspec. Redirect is used typically for
    /// providing a new implementation of a property in a derived
    /// type while preserving all the properties from the parent
    /// type. Redirection is established by creating a property
    /// of type `GParamSpecOverride`. See `g_object_class_override_property()`
    /// for an example of the use of this capability.
    @inlinable func getRedirectTarget() -> ParamSpecRef! {
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_get_redirect_target(param_spec_ptr))) else { return nil }
        return rv
    }

    /// Increments the reference count of `pspec`.
    @discardableResult @inlinable func ref() -> ParamSpecRef! {
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_ref(param_spec_ptr))) else { return nil }
        return rv
    }

    /// Convenience function to ref and sink a `GParamSpec`.
    @inlinable @discardableResult func refSink() -> ParamSpecRef! {
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_ref_sink(param_spec_ptr))) else { return nil }
        return rv
    }

    /// Sets an opaque, named pointer on a `GParamSpec`. The name is
    /// specified through a `GQuark` (retrieved e.g. via
    /// `g_quark_from_static_string()`), and the pointer can be gotten back
    /// from the `pspec` with `g_param_spec_get_qdata()`.  Setting a
    /// previously set user data pointer, overrides (frees) the old pointer
    /// set, using `nil` as pointer essentially removes the data stored.
    @inlinable func setQdata(quark: GQuark, data: gpointer! = nil) {
        g_param_spec_set_qdata(param_spec_ptr, quark, data)
    
    }

    /// This function works like `g_param_spec_set_qdata()`, but in addition,
    /// a `void (*destroy) (gpointer)` function may be
    /// specified which is called with `data` as argument when the `pspec` is
    /// finalized, or the data is being overwritten by a call to
    /// `g_param_spec_set_qdata()` with the same `quark`.
    @inlinable func setQdataFull(quark: GQuark, data: gpointer! = nil, destroy: GDestroyNotify?) {
        g_param_spec_set_qdata_full(param_spec_ptr, quark, data, destroy)
    
    }

    /// The initial reference count of a newly created `GParamSpec` is 1,
    /// even though no one has explicitly called `g_param_spec_ref()` on it
    /// yet. So the initial reference count is flagged as "floating", until
    /// someone calls `g_param_spec_ref (pspec); g_param_spec_sink
    /// (pspec);` in sequence on it, taking over the initial
    /// reference count (thus ending up with a `pspec` that has a reference
    /// count of 1 still, but is not flagged "floating" anymore).
    @inlinable func sink() {
        g_param_spec_sink(param_spec_ptr)
    
    }

    /// Gets back user data pointers stored via `g_param_spec_set_qdata()`
    /// and removes the `data` from `pspec` without invoking its `destroy()`
    /// function (if any was set).  Usually, calling this function is only
    /// required to update user data pointers with a destroy notifier.
    @inlinable func stealQdata(quark: GQuark) -> gpointer! {
        let rv = g_param_spec_steal_qdata(param_spec_ptr, quark)
        return rv
    }

    /// Decrements the reference count of a `pspec`.
    @inlinable func unref() {
        g_param_spec_unref(param_spec_ptr)
    
    }

    /// Creates a new property of type `GParamSpecOverride`. This is used
    /// to direct operations to another paramspec, and will not be directly
    /// useful unless you are implementing a new base type similar to GObject.
    @inlinable func paramSpecOverride(name: UnsafePointer<gchar>!) -> ParamSpecRef! {
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_override(name, param_spec_ptr))) else { return nil }
        return rv
    }

    /// Creates a new `GParamSpecValueArray` instance specifying a
    /// `G_TYPE_VALUE_ARRAY` property. `G_TYPE_VALUE_ARRAY` is a
    /// `G_TYPE_BOXED` type, as such, `GValue` structures for this property
    /// can be accessed with `g_value_set_boxed()` and `g_value_get_boxed()`.
    /// 
    /// See `g_param_spec_internal()` for details on property names.
    @inlinable func paramSpecValueArray(name: UnsafePointer<gchar>!, nick: UnsafePointer<gchar>!, blurb: UnsafePointer<gchar>!, flags: ParamFlags) -> ParamSpecRef! {
        guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_value_array(name, nick, blurb, param_spec_ptr, flags.value))) else { return nil }
        return rv
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also `g_value_type_transformable()`, `g_value_transform()` and
    /// `g_param_value_validate()`.
    @inlinable func paramValueConvert<ValueT: ValueProtocol>(srcValue: ValueT, destValue: ValueT, strictValidation: Bool) -> Bool {
        let rv = ((g_param_value_convert(param_spec_ptr, srcValue.value_ptr, destValue.value_ptr, gboolean((strictValidation) ? 1 : 0))) != 0)
        return rv
    }

    /// Checks whether `value` contains the default value as specified in `pspec`.
    @inlinable func paramValueDefaults<ValueT: ValueProtocol>(value: ValueT) -> Bool {
        let rv = ((g_param_value_defaults(param_spec_ptr, value.value_ptr)) != 0)
        return rv
    }

    /// Sets `value` to its default value as specified in `pspec`.
    @inlinable func paramValueSetDefault<ValueT: ValueProtocol>(value: ValueT) {
        g_param_value_set_default(param_spec_ptr, value.value_ptr)
    
    }

    /// Ensures that the contents of `value` comply with the specifications
    /// set out by `pspec`. For example, a `GParamSpecInt` might require
    /// that integers stored in `value` may not be smaller than -42 and not be
    /// greater than +42. If `value` contains an integer outside of this range,
    /// it is modified accordingly, so the resulting value will fit into the
    /// range -42 .. +42.
    @inlinable func paramValueValidate<ValueT: ValueProtocol>(value: ValueT) -> Bool {
        let rv = ((g_param_value_validate(param_spec_ptr, value.value_ptr)) != 0)
        return rv
    }

    /// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
    /// if `value1` is found to be less than, equal to or greater than `value2`,
    /// respectively.
    @inlinable func paramValuesCmp<ValueT: ValueProtocol>(value1: ValueT, value2: ValueT) -> Int {
        let rv = Int(g_param_values_cmp(param_spec_ptr, value1.value_ptr, value2.value_ptr))
        return rv
    }
    /// Get the short description of a `GParamSpec`.
    @inlinable var blurb: String! {
        /// Get the short description of a `GParamSpec`.
        get {
            let rv = g_param_spec_get_blurb(param_spec_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the default value of `pspec` as a pointer to a `GValue`.
    /// 
    /// The `GValue` will remain valid for the life of `pspec`.
    @inlinable var defaultValue: ValueRef! {
        /// Gets the default value of `pspec` as a pointer to a `GValue`.
        /// 
        /// The `GValue` will remain valid for the life of `pspec`.
        get {
            let rv = ValueRef(gconstpointer: gconstpointer(g_param_spec_get_default_value(param_spec_ptr)))
            return rv
        }
    }

    /// Get the name of a `GParamSpec`.
    /// 
    /// The name is always an "interned" string (as per `g_intern_string()`).
    /// This allows for pointer-value comparisons.
    @inlinable var name: String! {
        /// Get the name of a `GParamSpec`.
        /// 
        /// The name is always an "interned" string (as per `g_intern_string()`).
        /// This allows for pointer-value comparisons.
        get {
            let rv = g_param_spec_get_name(param_spec_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// Gets the GQuark for the name.
    @inlinable var nameQuark: GQuark {
        /// Gets the GQuark for the name.
        get {
            let rv = g_param_spec_get_name_quark(param_spec_ptr)
            return rv
        }
    }

    /// Get the nickname of a `GParamSpec`.
    @inlinable var nick: String! {
        /// Get the nickname of a `GParamSpec`.
        get {
            let rv = g_param_spec_get_nick(param_spec_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// If the paramspec redirects operations to another paramspec,
    /// returns that paramspec. Redirect is used typically for
    /// providing a new implementation of a property in a derived
    /// type while preserving all the properties from the parent
    /// type. Redirection is established by creating a property
    /// of type `GParamSpecOverride`. See `g_object_class_override_property()`
    /// for an example of the use of this capability.
    @inlinable var redirectTarget: ParamSpecRef! {
        /// If the paramspec redirects operations to another paramspec,
        /// returns that paramspec. Redirect is used typically for
        /// providing a new implementation of a property in a derived
        /// type while preserving all the properties from the parent
        /// type. Redirection is established by creating a property
        /// of type `GParamSpecOverride`. See `g_object_class_override_property()`
        /// for an example of the use of this capability.
        get {
            guard let rv = ParamSpecRef(gconstpointer: gconstpointer(g_param_spec_get_redirect_target(param_spec_ptr))) else { return nil }
            return rv
        }
    }

    /// private `GTypeInstance` portion
    @inlinable var gTypeInstance: GTypeInstance {
        /// private `GTypeInstance` portion
        get {
            let rv = param_spec_ptr.pointee.g_type_instance
            return rv
        }
    }

    /// name of this parameter: always an interned string
    @inlinable var _name: UnsafePointer<gchar>! {
        /// name of this parameter: always an interned string
        get {
            let rv = param_spec_ptr.pointee.name
            return rv
        }
    }

    /// `GParamFlags` flags for this parameter
    @inlinable var flags: ParamFlags {
        /// `GParamFlags` flags for this parameter
        get {
            let rv = ParamFlags(param_spec_ptr.pointee.flags)
            return rv
        }
    }

    /// the `GValue` type for this parameter
    @inlinable var valueType: GType {
        /// the `GValue` type for this parameter
        get {
            let rv = param_spec_ptr.pointee.value_type
            return rv
        }
    }

    /// `GType` type that uses (introduces) this parameter
    @inlinable var ownerType: GType {
        /// `GType` type that uses (introduces) this parameter
        get {
            let rv = param_spec_ptr.pointee.owner_type
            return rv
        }
    }

    // var Nick is unavailable because _nick is private

    // var Blurb is unavailable because _blurb is private

    // var qdata is unavailable because qdata is private

    // var refCount is unavailable because ref_count is private

    // var paramID is unavailable because param_id is private

}



