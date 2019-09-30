import CGLib
import GLib

// MARK: - ParamSpec Class

/// The `ParamSpecProtocol` protocol exposes the methods and properties of an underlying `GParamSpec` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpec`.
/// Alternatively, use `ParamSpecRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ``` Parameter names `` {`canonical`-parameter-names}
/// 
/// Parameter names need to start with a letter (a-z or A-Z).
/// Subsequent characters can be letters, numbers or a '-'.
/// All other characters are replaced by a '-' during construction.
/// The result of this replacement is called the canonical name of
/// the parameter.
public protocol ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpec` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpec` instance.
    var param_spec_ptr: UnsafeMutablePointer<GParamSpec> { get }
}

/// The `ParamSpecRef` type acts as a lightweight Swift reference to an underlying `GParamSpec` instance.
/// It exposes methods that can operate on this data type through `ParamSpecProtocol` conformance.
/// Use `ParamSpecRef` only as an `unowned` reference to an existing `GParamSpec` instance.
///
/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ``` Parameter names `` {`canonical`-parameter-names}
/// 
/// Parameter names need to start with a letter (a-z or A-Z).
/// Subsequent characters can be letters, numbers or a '-'.
/// All other characters are replaced by a '-' during construction.
/// The result of this replacement is called the canonical name of
/// the parameter.
public struct ParamSpecRef: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpec` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecProtocol`
    init<T: ParamSpecProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Creates a new `GParamSpec` instance.
    /// 
    /// A property name consists of segments consisting of ASCII letters and
    /// digits, separated by either the '-' or '_' character. The first
    /// character of a property name must be a letter. Names which violate these
    /// rules lead to undefined behaviour.
    /// 
    /// When creating and looking up a `GParamSpec`, either separator can be
    /// used, but they cannot be mixed. Using '-' is considerably more
    /// efficient and in fact required when using property names as detail
    /// strings for signals.
    /// 
    /// Beyond the name, `GParamSpecs` have two more descriptive
    /// strings associated with them, the `nick`, which should be suitable
    /// for use as a label for the property in a property editor, and the
    /// `blurb`, which should be a somewhat longer description, suitable for
    /// e.g. a tooltip. The `nick` and `blurb` should ideally be localized.
    static func internal_(paramType param_type: GType, name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, flags: ParamFlags) -> ParamSpecRef! {
        let rv = g_param_spec_internal(param_type, name, nick, blurb, flags)
        return rv.map { ParamSpecRef(cast($0)) }
    }
}

/// The `ParamSpec` type acts as a reference-counted owner of an underlying `GParamSpec` instance.
/// It provides the methods that can operate on this data type through `ParamSpecProtocol` conformance.
/// Use `ParamSpec` as a strong reference or owner of a `GParamSpec` instance.
///
/// `GParamSpec` is an object structure that encapsulates the metadata
/// required to specify parameters, such as e.g. `GObject` properties.
/// 
/// ``` Parameter names `` {`canonical`-parameter-names}
/// 
/// Parameter names need to start with a letter (a-z or A-Z).
/// Subsequent characters can be letters, numbers or a '-'.
/// All other characters are replaced by a '-' during construction.
/// The result of this replacement is called the canonical name of
/// the parameter.
open class ParamSpec: ParamSpecProtocol {
    /// Untyped pointer to the underlying `GParamSpec` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpec` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpec>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecProtocol`
    /// Will retain `GParamSpec`.
    public convenience init<T: ParamSpecProtocol>(_ other: T) {
        self.init(cast(other.param_spec_ptr))
        g_param_spec_ref(cast(param_spec_ptr))
    }

    /// Releases the underlying `GParamSpec` instance using `g_param_spec_unref`.
    deinit {
        g_param_spec_unref(cast(param_spec_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpec.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpec.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpec>(opaquePointer))
    }


    /// Creates a new `GParamSpec` instance.
    /// 
    /// A property name consists of segments consisting of ASCII letters and
    /// digits, separated by either the '-' or '_' character. The first
    /// character of a property name must be a letter. Names which violate these
    /// rules lead to undefined behaviour.
    /// 
    /// When creating and looking up a `GParamSpec`, either separator can be
    /// used, but they cannot be mixed. Using '-' is considerably more
    /// efficient and in fact required when using property names as detail
    /// strings for signals.
    /// 
    /// Beyond the name, `GParamSpecs` have two more descriptive
    /// strings associated with them, the `nick`, which should be suitable
    /// for use as a label for the property in a property editor, and the
    /// `blurb`, which should be a somewhat longer description, suitable for
    /// e.g. a tooltip. The `nick` and `blurb` should ideally be localized.
    public static func internal_(paramType param_type: GType, name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, flags: ParamFlags) -> ParamSpec! {
        let rv = g_param_spec_internal(param_type, name, nick, blurb, flags)
        return rv.map { ParamSpec(cast($0)) }
    }

}

// MARK: - no ParamSpec properties

// MARK: - no signals


public extension ParamSpecProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpec` instance.
    var param_spec_ptr: UnsafeMutablePointer<GParamSpec> { return ptr.assumingMemoryBound(to: GParamSpec.self) }

    /// Get the short description of a `GParamSpec`.
    func getBlurb() -> String! {
        let rv = g_param_spec_get_blurb(cast(param_spec_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the default value of `pspec` as a pointer to a `GValue`.
    /// 
    /// The `GValue` will remain valid for the life of `pspec`.
    func getDefaultValue() -> UnsafePointer<GValue>! {
        let rv = g_param_spec_get_default_value(cast(param_spec_ptr))
        return cast(rv)
    }

    /// Get the name of a `GParamSpec`.
    /// 
    /// The name is always an "interned" string (as per g_intern_string()).
    /// This allows for pointer-value comparisons.
    func getName() -> String! {
        let rv = g_param_spec_get_name(cast(param_spec_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets the GQuark for the name.
    func getNameQuark() -> GQuark {
        let rv = g_param_spec_get_name_quark(cast(param_spec_ptr))
        return rv
    }

    /// Get the nickname of a `GParamSpec`.
    func getNick() -> String! {
        let rv = g_param_spec_get_nick(cast(param_spec_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Gets back user data pointers stored via g_param_spec_set_qdata().
    func getQdata(quark: GLib.Quark) -> UnsafeMutableRawPointer! {
        let rv = g_param_spec_get_qdata(cast(param_spec_ptr), quark)
        return cast(rv)
    }

    /// If the paramspec redirects operations to another paramspec,
    /// returns that paramspec. Redirect is used typically for
    /// providing a new implementation of a property in a derived
    /// type while preserving all the properties from the parent
    /// type. Redirection is established by creating a property
    /// of type `GParamSpecOverride`. See g_object_class_override_property()
    /// for an example of the use of this capability.
    func getRedirectTarget() -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_param_spec_get_redirect_target(cast(param_spec_ptr))
        return cast(rv)
    }

    /// Increments the reference count of `pspec`.
    func ref() -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_param_spec_ref(cast(param_spec_ptr))
        return cast(rv)
    }

    /// Convenience function to ref and sink a `GParamSpec`.
    func refSink() -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_param_spec_ref_sink(cast(param_spec_ptr))
        return cast(rv)
    }

    /// Sets an opaque, named pointer on a `GParamSpec`. The name is
    /// specified through a `GQuark` (retrieved e.g. via
    /// g_quark_from_static_string()), and the pointer can be gotten back
    /// from the `pspec` with g_param_spec_get_qdata().  Setting a
    /// previously set user data pointer, overrides (frees) the old pointer
    /// set, using `nil` as pointer essentially removes the data stored.
    func setQdata(quark: GLib.Quark, data: UnsafeMutableRawPointer) {
        g_param_spec_set_qdata(cast(param_spec_ptr), quark, cast(data))
    
    }

    /// This function works like g_param_spec_set_qdata(), but in addition,
    /// a `void (*destroy) (gpointer)` function may be
    /// specified which is called with `data` as argument when the `pspec` is
    /// finalized, or the data is being overwritten by a call to
    /// g_param_spec_set_qdata() with the same `quark`.
    func setQdataFull(quark: GLib.Quark, data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        g_param_spec_set_qdata_full(cast(param_spec_ptr), quark, cast(data), destroy)
    
    }

    /// The initial reference count of a newly created `GParamSpec` is 1,
    /// even though no one has explicitly called g_param_spec_ref() on it
    /// yet. So the initial reference count is flagged as "floating", until
    /// someone calls `g_param_spec_ref (pspec); g_param_spec_sink
    /// (pspec);` in sequence on it, taking over the initial
    /// reference count (thus ending up with a `pspec` that has a reference
    /// count of 1 still, but is not flagged "floating" anymore).
    func sink() {
        g_param_spec_sink(cast(param_spec_ptr))
    
    }

    /// Gets back user data pointers stored via g_param_spec_set_qdata()
    /// and removes the `data` from `pspec` without invoking its destroy()
    /// function (if any was set).  Usually, calling this function is only
    /// required to update user data pointers with a destroy notifier.
    func stealQdata(quark: GLib.Quark) -> UnsafeMutableRawPointer! {
        let rv = g_param_spec_steal_qdata(cast(param_spec_ptr), quark)
        return cast(rv)
    }

    /// Decrements the reference count of a `pspec`.
    func unref() {
        g_param_spec_unref(cast(param_spec_ptr))
    
    }

    /// Creates a new property of type `GParamSpecOverride`. This is used
    /// to direct operations to another paramspec, and will not be directly
    /// useful unless you are implementing a new base type similar to GObject.
    func paramSpecOverride(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_param_spec_override(name, cast(param_spec_ptr))
        return cast(rv)
    }

    /// Creates a new `GParamSpecValueArray` instance specifying a
    /// `G_TYPE_VALUE_ARRAY` property. `G_TYPE_VALUE_ARRAY` is a
    /// `G_TYPE_BOXED` type, as such, `GValue` structures for this property
    /// can be accessed with g_value_set_boxed() and g_value_get_boxed().
    /// 
    /// See g_param_spec_internal() for details on property names.
    func paramSpecValueArray(name: UnsafePointer<gchar>, nick: UnsafePointer<gchar>, blurb: UnsafePointer<gchar>, flags: ParamFlags) -> UnsafeMutablePointer<GParamSpec>! {
        let rv = g_param_spec_value_array(name, nick, blurb, cast(param_spec_ptr), flags)
        return cast(rv)
    }

    /// Transforms `src_value` into `dest_value` if possible, and then
    /// validates `dest_value`, in order for it to conform to `pspec`.  If
    /// `strict_validation` is `true` this function will only succeed if the
    /// transformed `dest_value` complied to `pspec` without modifications.
    /// 
    /// See also g_value_type_transformable(), g_value_transform() and
    /// g_param_value_validate().
    func paramValueConvert(srcValue src_value: ValueProtocol, destValue dest_value: ValueProtocol, strictValidation strict_validation: Bool) -> Bool {
        let rv = g_param_value_convert(cast(param_spec_ptr), cast(src_value.ptr), cast(dest_value.ptr), gboolean(strict_validation ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Checks whether `value` contains the default value as specified in `pspec`.
    func paramValueDefaults(value: ValueProtocol) -> Bool {
        let rv = g_param_value_defaults(cast(param_spec_ptr), cast(value.ptr))
        return Bool(rv != 0)
    }

    /// Sets `value` to its default value as specified in `pspec`.
    func paramValueSetDefault(value: ValueProtocol) {
        g_param_value_set_default(cast(param_spec_ptr), cast(value.ptr))
    
    }

    /// Ensures that the contents of `value` comply with the specifications
    /// set out by `pspec`. For example, a `GParamSpecInt` might require
    /// that integers stored in `value` may not be smaller than -42 and not be
    /// greater than +42. If `value` contains an integer outside of this range,
    /// it is modified accordingly, so the resulting value will fit into the
    /// range -42 .. +42.
    func paramValueValidate(value: ValueProtocol) -> Bool {
        let rv = g_param_value_validate(cast(param_spec_ptr), cast(value.ptr))
        return Bool(rv != 0)
    }

    /// Compares `value1` with `value2` according to `pspec`, and return -1, 0 or +1,
    /// if `value1` is found to be less than, equal to or greater than `value2`,
    /// respectively.
    func paramValuesCmp(value1: ValueProtocol, value2: ValueProtocol) -> CInt {
        let rv = g_param_values_cmp(cast(param_spec_ptr), cast(value1.ptr), cast(value2.ptr))
        return CInt(rv)
    }
    /// Get the short description of a `GParamSpec`.
    var blurb: String! {
        /// Get the short description of a `GParamSpec`.
        get {
            let rv = g_param_spec_get_blurb(cast(param_spec_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the default value of `pspec` as a pointer to a `GValue`.
    /// 
    /// The `GValue` will remain valid for the life of `pspec`.
    var defaultValue: UnsafePointer<GValue>! {
        /// Gets the default value of `pspec` as a pointer to a `GValue`.
        /// 
        /// The `GValue` will remain valid for the life of `pspec`.
        get {
            let rv = g_param_spec_get_default_value(cast(param_spec_ptr))
            return cast(rv)
        }
    }

    /// Get the name of a `GParamSpec`.
    /// 
    /// The name is always an "interned" string (as per g_intern_string()).
    /// This allows for pointer-value comparisons.
    var name: String! {
        /// Get the name of a `GParamSpec`.
        /// 
        /// The name is always an "interned" string (as per g_intern_string()).
        /// This allows for pointer-value comparisons.
        get {
            let rv = g_param_spec_get_name(cast(param_spec_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// Gets the GQuark for the name.
    var nameQuark: GQuark {
        /// Gets the GQuark for the name.
        get {
            let rv = g_param_spec_get_name_quark(cast(param_spec_ptr))
            return rv
        }
    }

    /// Get the nickname of a `GParamSpec`.
    var nick: String! {
        /// Get the nickname of a `GParamSpec`.
        get {
            let rv = g_param_spec_get_nick(cast(param_spec_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// If the paramspec redirects operations to another paramspec,
    /// returns that paramspec. Redirect is used typically for
    /// providing a new implementation of a property in a derived
    /// type while preserving all the properties from the parent
    /// type. Redirection is established by creating a property
    /// of type `GParamSpecOverride`. See g_object_class_override_property()
    /// for an example of the use of this capability.
    var redirectTarget: UnsafeMutablePointer<GParamSpec>! {
        /// If the paramspec redirects operations to another paramspec,
        /// returns that paramspec. Redirect is used typically for
        /// providing a new implementation of a property in a derived
        /// type while preserving all the properties from the parent
        /// type. Redirection is established by creating a property
        /// of type `GParamSpecOverride`. See g_object_class_override_property()
        /// for an example of the use of this capability.
        get {
            let rv = g_param_spec_get_redirect_target(cast(param_spec_ptr))
            return cast(rv)
        }
    }
}



