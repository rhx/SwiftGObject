import CGLib
import GLib

// MARK: - Object Class

/// The `ObjectProtocol` protocol exposes the methods and properties of an underlying `GObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Object`.
/// Alternatively, use `ObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// All the fields in the GObject structure are private
/// to the `GObject` implementation and should never be accessed directly.
public protocol ObjectProtocol {
    /// Untyped pointer to the underlying `GObject` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GObject` instance.
    var object_ptr: UnsafeMutablePointer<GObject> { get }
}

/// The `ObjectRef` type acts as a lightweight Swift reference to an underlying `GObject` instance.
/// It exposes methods that can operate on this data type through `ObjectProtocol` conformance.
/// Use `ObjectRef` only as an `unowned` reference to an existing `GObject` instance.
///
/// All the fields in the GObject structure are private
/// to the `GObject` implementation and should never be accessed directly.
public struct ObjectRef: ObjectProtocol {
    /// Untyped pointer to the underlying `GObject` instance.
    /// For type-safe access, use the generated, typed pointer `object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ObjectRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ObjectProtocol`
    init<T: ObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    init(valist object_type: GType, firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) {
        let rv = g_object_new_valist(object_type, first_property_name, var_args)
        self.init(cast(rv))
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    init(properties object_type: GType, nProperties n_properties: CUnsignedInt, names: UnsafePointer<UnsafePointer<CChar>>, values: UnsafePointer<GValue>) {
        let rv = g_object_new_with_properties(object_type, guint(n_properties), cast(names), cast(values))
        self.init(cast(rv))
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) init(objectType object_type: GType, nParameters n_parameters: CUnsignedInt, parameters: UnsafeMutablePointer<GParameter>) {
        let rv = g_object_newv(object_type, guint(n_parameters), cast(parameters))
        self.init(cast(rv))
    }
    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    static func new(valist object_type: GType, firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) -> ObjectRef! {
        let rv = g_object_new_valist(object_type, first_property_name, var_args)
        return rv.map { ObjectRef(cast($0)) }
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    static func newWith(properties object_type: GType, nProperties n_properties: CUnsignedInt, names: UnsafePointer<UnsafePointer<CChar>>, values: UnsafePointer<GValue>) -> ObjectRef! {
        let rv = g_object_new_with_properties(object_type, guint(n_properties), cast(names), cast(values))
        return rv.map { ObjectRef(cast($0)) }
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) static func newv(objectType object_type: GType, nParameters n_parameters: CUnsignedInt, parameters: UnsafeMutablePointer<GParameter>) -> ObjectRef! {
        let rv = g_object_newv(object_type, guint(n_parameters), cast(parameters))
        return rv.map { ObjectRef(cast($0)) }
    }
}

/// The `Object` type acts as a reference-counted owner of an underlying `GObject` instance.
/// It provides the methods that can operate on this data type through `ObjectProtocol` conformance.
/// Use `Object` as a strong reference or owner of a `GObject` instance.
///
/// All the fields in the GObject structure are private
/// to the `GObject` implementation and should never be accessed directly.
open class Object: ObjectProtocol {
    /// Untyped pointer to the underlying `GObject` instance.
    /// For type-safe access, use the generated, typed pointer `object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Object` instance.
    public init(_ op: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ObjectProtocol`
    /// Will retain `GObject`.
    public convenience init<T: ObjectProtocol>(_ other: T) {
        self.init(cast(other.object_ptr))
        g_object_ref(cast(object_ptr))
    }

    /// Releases the underlying `GObject` instance using `g_object_unref`.
    deinit {
        g_object_unref(cast(object_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GObject.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GObject>(opaquePointer))
    }


    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    public convenience init(valist object_type: GType, firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) {
        let rv = g_object_new_valist(object_type, first_property_name, var_args)
        self.init(cast(rv))
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    public convenience init(properties object_type: GType, nProperties n_properties: CUnsignedInt, names: UnsafePointer<UnsafePointer<CChar>>, values: UnsafePointer<GValue>) {
        let rv = g_object_new_with_properties(object_type, guint(n_properties), cast(names), cast(values))
        self.init(cast(rv))
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) public convenience init(objectType object_type: GType, nParameters n_parameters: CUnsignedInt, parameters: UnsafeMutablePointer<GParameter>) {
        let rv = g_object_newv(object_type, guint(n_parameters), cast(parameters))
        self.init(cast(rv))
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    public static func new(valist object_type: GType, firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) -> Object! {
        let rv = g_object_new_valist(object_type, first_property_name, var_args)
        return rv.map { Object(cast($0)) }
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    public static func newWith(properties object_type: GType, nProperties n_properties: CUnsignedInt, names: UnsafePointer<UnsafePointer<CChar>>, values: UnsafePointer<GValue>) -> Object! {
        let rv = g_object_new_with_properties(object_type, guint(n_properties), cast(names), cast(values))
        return rv.map { Object(cast($0)) }
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) public static func newv(objectType object_type: GType, nParameters n_parameters: CUnsignedInt, parameters: UnsafeMutablePointer<GParameter>) -> Object! {
        let rv = g_object_newv(object_type, guint(n_parameters), cast(parameters))
        return rv.map { Object(cast($0)) }
    }

}

// MARK: - no Object properties

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
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// It is important to note that you must use
    /// [canonical parameter names][canonical-parameter-names] as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension ObjectProtocol {
    /// Connect a `ObjectSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: ObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(object_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
                let _ = $1
            }, connectFlags: flags)
            return rv
        }
        let rv = _connect(signal: kind.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call(())
        }
        return rv
    }
}

public extension ObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObject` instance.
    var object_ptr: UnsafeMutablePointer<GObject> { return ptr.assumingMemoryBound(to: GObject.self) }

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
    func addToggleRef(notify: @escaping ToggleNotify, data: UnsafeMutableRawPointer) {
        g_object_add_toggle_ref(cast(object_ptr), notify, cast(data))
    
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
    func addWeakPointer(weakPointerLocation weak_pointer_location: UnsafeMutablePointer<UnsafeMutableRawPointer>) {
        g_object_add_weak_pointer(cast(object_ptr), cast(weak_pointer_location))
    
    }

    /// Creates a binding between `source_property` on `source` and `target_property`
    /// on `target`. Whenever the `source_property` is changed the `target_property` is
    /// updated using the same value. For instance:
    /// 
    /// ```
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
    /// A `GObject` can have multiple bindings.
    func bindProperty(sourceProperty source_property: UnsafePointer<gchar>, target: ObjectProtocol, targetProperty target_property: UnsafePointer<gchar>, flags: BindingFlags) -> UnsafeMutablePointer<GBinding>! {
        let rv = g_object_bind_property(cast(object_ptr), source_property, cast(target.ptr), target_property, flags)
        return cast(rv)
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
    func bindPropertyFull(sourceProperty source_property: UnsafePointer<gchar>, target: ObjectProtocol, targetProperty target_property: UnsafePointer<gchar>, flags: BindingFlags, transformTo transform_to: @escaping BindingTransformFunc, transformFrom transform_from: @escaping BindingTransformFunc, userData user_data: UnsafeMutableRawPointer, notify: @escaping GLib.DestroyNotify) -> UnsafeMutablePointer<GBinding>! {
        let rv = g_object_bind_property_full(cast(object_ptr), source_property, cast(target.ptr), target_property, flags, transform_to, transform_from, cast(user_data), notify)
        return cast(rv)
    }

    /// Creates a binding between `source_property` on `source` and `target_property`
    /// on `target`, allowing you to set the transformation functions to be used by
    /// the binding.
    /// 
    /// This function is the language bindings friendly version of
    /// `g_object_bind_property_full()`, using `GClosures` instead of
    /// function pointers.
    func bindPropertyWithClosures(sourceProperty source_property: UnsafePointer<gchar>, target: ObjectProtocol, targetProperty target_property: UnsafePointer<gchar>, flags: BindingFlags, transformTo transform_to: ClosureProtocol, transformFrom transform_from: ClosureProtocol) -> UnsafeMutablePointer<GBinding>! {
        let rv = g_object_bind_property_with_closures(cast(object_ptr), source_property, cast(target.ptr), target_property, flags, cast(transform_to.ptr), cast(transform_from.ptr))
        return cast(rv)
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
    func dupData(key: UnsafePointer<gchar>, dupFunc dup_func: @escaping GLib.DuplicateFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
        let rv = g_object_dup_data(cast(object_ptr), key, dup_func, cast(user_data))
        return cast(rv)
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
    func dupQdata(quark: GLib.Quark, dupFunc dup_func: @escaping GLib.DuplicateFunc, userData user_data: UnsafeMutableRawPointer) -> UnsafeMutableRawPointer! {
        let rv = g_object_dup_qdata(cast(object_ptr), quark, dup_func, cast(user_data))
        return cast(rv)
    }

    /// This function is intended for `GObject` implementations to re-enforce
    /// a [floating][floating-ref] object reference. Doing this is seldom
    /// required: all `GInitiallyUnowneds` are created with a floating reference
    /// which usually just needs to be sunken by calling `g_object_ref_sink()`.
    func forceFloating() {
        g_object_force_floating(cast(object_ptr))
    
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
    func freezeNotify() {
        g_object_freeze_notify(cast(object_ptr))
    
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Gets a named field from the objects table of associations (see `g_object_set_data()`).
    func getData(key: UnsafePointer<gchar>) -> UnsafeMutableRawPointer! {
        let rv = g_object_get_data(cast(object_ptr), key)
        return cast(rv)
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
    func getProperty(propertyName property_name: UnsafePointer<gchar>, value: ValueProtocol) {
        g_object_get_property(cast(object_ptr), property_name, cast(value.ptr))
    
    }

    /// This function gets back user data pointers stored via
    /// `g_object_set_qdata()`.
    func getQdata(quark: GLib.Quark) -> UnsafeMutableRawPointer! {
        let rv = g_object_get_qdata(cast(object_ptr), quark)
        return cast(rv)
    }

    /// Gets properties of an object.
    /// 
    /// In general, a copy is made of the property contents and the caller
    /// is responsible for freeing the memory in the appropriate manner for
    /// the type, for instance by calling `g_free()` or `g_object_unref()`.
    /// 
    /// See `g_object_get()`.
    func getValist(firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) {
        g_object_get_valist(cast(object_ptr), first_property_name, var_args)
    
    }

    /// Gets `n_properties` properties for an `object`.
    /// Obtained properties will be set to `values`. All properties must be valid.
    /// Warnings will be emitted and undefined behaviour may result if invalid
    /// properties are passed in.
    func getv(nProperties n_properties: CUnsignedInt, names: UnsafePointer<UnsafePointer<gchar>>, values: UnsafeMutablePointer<GValue>) {
        g_object_getv(cast(object_ptr), guint(n_properties), cast(names), cast(values))
    
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
    func notify(propertyName property_name: UnsafePointer<gchar>) {
        g_object_notify(cast(object_ptr), property_name)
    
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
    func notifyBy(pspec: ParamSpecProtocol) {
        g_object_notify_by_pspec(cast(object_ptr), cast(pspec.ptr))
    
    }

    /// Increases the reference count of `object`.
    /// 
    /// Since GLib 2.56, if `GLIB_VERSION_MAX_ALLOWED` is 2.56 or greater, the type
    /// of `object` will be propagated to the return type (using the GCC `typeof()`
    /// extension), so any casting the caller needs to do on the return type must be
    /// explicit.
    func ref() -> UnsafeMutableRawPointer! {
        let rv = g_object_ref(cast(object_ptr))
        return cast(rv)
    }

    /// Increase the reference count of `object`, and possibly remove the
    /// [floating][floating-ref] reference, if `object` has a floating reference.
    /// 
    /// In other words, if the object is floating, then this call "assumes
    /// ownership" of the floating reference, converting it to a normal
    /// reference by clearing the floating flag while leaving the reference
    /// count unchanged.  If the object is not floating, then this call
    /// adds a new normal reference increasing the reference count by one.
    /// 
    /// Since GLib 2.56, the type of `object` will be propagated to the return type
    /// under the same conditions as for `g_object_ref()`.
    func refSink() -> UnsafeMutableRawPointer! {
        let rv = g_object_ref_sink(cast(object_ptr))
        return cast(rv)
    }

    /// Removes a reference added with `g_object_add_toggle_ref()`. The
    /// reference count of the object is decreased by one.
    func removeToggleRef(notify: @escaping ToggleNotify, data: UnsafeMutableRawPointer) {
        g_object_remove_toggle_ref(cast(object_ptr), notify, cast(data))
    
    }

    /// Removes a weak reference from `object` that was previously added
    /// using `g_object_add_weak_pointer()`. The `weak_pointer_location` has
    /// to match the one used with `g_object_add_weak_pointer()`.
    func removeWeakPointer(weakPointerLocation weak_pointer_location: UnsafeMutablePointer<UnsafeMutableRawPointer>) {
        g_object_remove_weak_pointer(cast(object_ptr), cast(weak_pointer_location))
    
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
    func replaceData(key: UnsafePointer<gchar>, oldval: UnsafeMutableRawPointer, newval: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify, oldDestroy old_destroy: UnsafeMutablePointer<GDestroyNotify>) -> Bool {
        let rv = g_object_replace_data(cast(object_ptr), key, cast(oldval), cast(newval), destroy, cast(old_destroy))
        return Bool(rv != 0)
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
    func replaceQdata(quark: GLib.Quark, oldval: UnsafeMutableRawPointer, newval: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify, oldDestroy old_destroy: UnsafeMutablePointer<GDestroyNotify>) -> Bool {
        let rv = g_object_replace_qdata(cast(object_ptr), quark, cast(oldval), cast(newval), destroy, cast(old_destroy))
        return Bool(rv != 0)
    }

    /// Releases all references to other objects. This can be used to break
    /// reference cycles.
    /// 
    /// This function should only be called from object system implementations.
    func runDispose() {
        g_object_run_dispose(cast(object_ptr))
    
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
    func setData(key: UnsafePointer<gchar>, data: UnsafeMutableRawPointer) {
        g_object_set_data(cast(object_ptr), key, cast(data))
    
    }

    /// Like `g_object_set_data()` except it adds notification
    /// for when the association is destroyed, either by setting it
    /// to a different value or when the object is destroyed.
    /// 
    /// Note that the `destroy` callback is not called if `data` is `nil`.
    func setDataFull(key: UnsafePointer<gchar>, data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        g_object_set_data_full(cast(object_ptr), key, cast(data), destroy)
    
    }

    /// Sets a property on an object.
    func setProperty(propertyName property_name: UnsafePointer<gchar>, value: ValueProtocol) {
        g_object_set_property(cast(object_ptr), property_name, cast(value.ptr))
    
    }

    /// This sets an opaque, named pointer on an object.
    /// The name is specified through a `GQuark` (retrived e.g. via
    /// `g_quark_from_static_string()`), and the pointer
    /// can be gotten back from the `object` with `g_object_get_qdata()`
    /// until the `object` is finalized.
    /// Setting a previously set user data pointer, overrides (frees)
    /// the old pointer set, using `NULL` as pointer essentially
    /// removes the data stored.
    func setQdata(quark: GLib.Quark, data: UnsafeMutableRawPointer) {
        g_object_set_qdata(cast(object_ptr), quark, cast(data))
    
    }

    /// This function works like `g_object_set_qdata()`, but in addition,
    /// a void (*destroy) (gpointer) function may be specified which is
    /// called with `data` as argument when the `object` is finalized, or
    /// the data is being overwritten by a call to `g_object_set_qdata()`
    /// with the same `quark`.
    func setQdataFull(quark: GLib.Quark, data: UnsafeMutableRawPointer, destroy: @escaping GLib.DestroyNotify) {
        g_object_set_qdata_full(cast(object_ptr), quark, cast(data), destroy)
    
    }

    /// Sets properties on an object.
    func setValist(firstPropertyName first_property_name: UnsafePointer<gchar>, varArgs var_args: CVaListPointer) {
        g_object_set_valist(cast(object_ptr), first_property_name, var_args)
    
    }

    /// Sets `n_properties` properties for an `object`.
    /// Properties to be set will be taken from `values`. All properties must be
    /// valid. Warnings will be emitted and undefined behaviour may result if invalid
    /// properties are passed in.
    func setv(nProperties n_properties: CUnsignedInt, names: UnsafePointer<UnsafePointer<gchar>>, values: UnsafePointer<GValue>) {
        g_object_setv(cast(object_ptr), guint(n_properties), cast(names), cast(values))
    
    }

    /// Remove a specified datum from the object's data associations,
    /// without invoking the association's destroy handler.
    func stealData(key: UnsafePointer<gchar>) -> UnsafeMutableRawPointer! {
        let rv = g_object_steal_data(cast(object_ptr), key)
        return cast(rv)
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
    ///   // retrive the old string list
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
    func stealQdata(quark: GLib.Quark) -> UnsafeMutableRawPointer! {
        let rv = g_object_steal_qdata(cast(object_ptr), quark)
        return cast(rv)
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
    func thawNotify() {
        g_object_thaw_notify(cast(object_ptr))
    
    }

    /// Decreases the reference count of `object`. When its reference count
    /// drops to 0, the object is finalized (i.e. its memory is freed).
    /// 
    /// If the pointer to the `GObject` may be reused in future (for example, if it is
    /// an instance variable of another object), it is recommended to clear the
    /// pointer to `nil` rather than retain a dangling pointer to a potentially
    /// invalid `GObject` instance. Use `g_clear_object()` for this.
    func unref() {
        g_object_unref(cast(object_ptr))
    
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
    func watch(closure: ClosureProtocol) {
        g_object_watch_closure(cast(object_ptr), cast(closure.ptr))
    
    }

    /// Adds a weak reference callback to an object. Weak references are
    /// used for notification when an object is finalized. They are called
    /// "weak references" because they allow you to safely hold a pointer
    /// to an object without calling `g_object_ref()` (`g_object_ref()` adds a
    /// strong reference, that is, forces the object to stay alive).
    /// 
    /// Note that the weak references created by this method are not
    /// thread-safe: they cannot safely be used in one thread if the
    /// object's last `g_object_unref()` might happen in another thread.
    /// Use `GWeakRef` if thread-safety is required.
    func weakRef(notify: @escaping WeakNotify, data: UnsafeMutableRawPointer) {
        g_object_weak_ref(cast(object_ptr), notify, cast(data))
    
    }

    /// Removes a weak reference callback to an object.
    func weakUnref(notify: @escaping WeakNotify, data: UnsafeMutableRawPointer) {
        g_object_weak_unref(cast(object_ptr), notify, cast(data))
    
    }

    /// A variant of `g_cclosure_new()` which uses `object` as `user_data` and
    /// calls `g_object_watch_closure()` on `object` and the created
    /// closure. This function is useful when you have a callback closely
    /// associated with a `GObject`, and want the callback to no longer run
    /// after the object is is freed.
    func cclosureNewObject(callbackFunc callback_func: @escaping Callback) -> UnsafeMutablePointer<GClosure>! {
        let rv = g_cclosure_new_object(callback_func, cast(object_ptr))
        return cast(rv)
    }

    /// A variant of `g_cclosure_new_swap()` which uses `object` as `user_data`
    /// and calls `g_object_watch_closure()` on `object` and the created
    /// closure. This function is useful when you have a callback closely
    /// associated with a `GObject`, and want the callback to no longer run
    /// after the object is is freed.
    func cclosureNewObjectSwap(callbackFunc callback_func: @escaping Callback) -> UnsafeMutablePointer<GClosure>! {
        let rv = g_cclosure_new_object_swap(callback_func, cast(object_ptr))
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
    func clearObject() {
        g_clear_object(cast(object_ptr))
    
    }

    /// Disconnects a handler from `instance` so it will not be called during
    /// any future or currently ongoing emissions of the signal it has been
    /// connected to. The `handler_id_ptr` is then set to zero, which is never a valid handler ID value (see `g_signal_connect()`).
    /// 
    /// If the handler ID is 0 then this function does nothing.
    /// 
    /// A macro is also included that allows this function to be used without
    /// pointer casts.
    func clearSignalHandler(handlerIDPtr handler_id_ptr: UnsafeMutablePointer<CUnsignedLong>) {
        g_clear_signal_handler(cast(handler_id_ptr), cast(object_ptr))
    
    }

    /// Connects a closure to a signal for a particular object.
    func signalConnectClosure(detailedSignal detailed_signal: UnsafePointer<gchar>, closure: ClosureProtocol, after: Bool) -> CUnsignedLong {
        let rv = g_signal_connect_closure(cast(object_ptr), detailed_signal, cast(closure.ptr), gboolean(after ? 1 : 0))
        return CUnsignedLong(rv)
    }

    /// Connects a closure to a signal for a particular object.
    func signalConnectClosureByID(signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, after: Bool) -> CUnsignedLong {
        let rv = g_signal_connect_closure_by_id(cast(object_ptr), guint(signal_id), detail, cast(closure.ptr), gboolean(after ? 1 : 0))
        return CUnsignedLong(rv)
    }

    /// Connects a `GCallback` function to a signal for a particular object. Similar
    /// to `g_signal_connect()`, but allows to provide a `GClosureNotify` for the data
    /// which will be called when the signal handler is disconnected and no longer
    /// used. Specify `connect_flags` if you need ``..._after()`` or
    /// ``..._swapped()`` variants of this function.
    func signalConnectData(detailedSignal detailed_signal: UnsafePointer<gchar>, cHandler c_handler: @escaping Callback, data: UnsafeMutableRawPointer, destroyData destroy_data: @escaping ClosureNotify, connectFlags connect_flags: ConnectFlags) -> CUnsignedLong {
        let rv = g_signal_connect_data(cast(object_ptr), detailed_signal, c_handler, cast(data), destroy_data, connect_flags)
        return CUnsignedLong(rv)
    }

    /// This is similar to `g_signal_connect_data()`, but uses a closure which
    /// ensures that the `gobject` stays alive during the call to `c_handler`
    /// by temporarily adding a reference count to `gobject`.
    /// 
    /// When the `gobject` is destroyed the signal handler will be automatically
    /// disconnected.  Note that this is not currently threadsafe (ie:
    /// emitting a signal while `gobject` is being destroyed in another thread
    /// is not safe).
    func signalConnectObject(instance: TypeInstanceProtocol, detailedSignal detailed_signal: UnsafePointer<gchar>, cHandler c_handler: @escaping Callback, connectFlags connect_flags: ConnectFlags) -> CUnsignedLong {
        let rv = g_signal_connect_object(cast(instance.ptr), detailed_signal, c_handler, cast(object_ptr), connect_flags)
        return CUnsignedLong(rv)
    }


    // *** signalEmit() is not available because it has a varargs (...) parameter!



    // *** signalEmitByName() is not available because it has a varargs (...) parameter!


    /// Returns the invocation hint of the innermost signal emission of instance.
    func signalGetInvocationHint() -> UnsafeMutablePointer<GSignalInvocationHint>! {
        let rv = g_signal_get_invocation_hint(cast(object_ptr))
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
    func signalHandlerBlock(handlerID handler_id: CUnsignedLong) {
        g_signal_handler_block(cast(object_ptr), gulong(handler_id))
    
    }

    /// Disconnects a handler from an instance so it will not be called during
    /// any future or currently ongoing emissions of the signal it has been
    /// connected to. The `handler_id` becomes invalid and may be reused.
    /// 
    /// The `handler_id` has to be a valid signal handler id, connected to a
    /// signal of `instance`.
    func signalHandlerDisconnect(handlerID handler_id: CUnsignedLong) {
        g_signal_handler_disconnect(cast(object_ptr), gulong(handler_id))
    
    }

    /// Finds the first signal handler that matches certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// The match `mask` has to be non-0 for successful matches.
    /// If no handler was found, 0 is returned.
    func signalHandlerFind(mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedLong {
        let rv = g_signal_handler_find(cast(object_ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
        return CUnsignedLong(rv)
    }

    /// Returns whether `handler_id` is the ID of a handler connected to `instance`.
    func signalHandlerIsConnected(handlerID handler_id: CUnsignedLong) -> Bool {
        let rv = g_signal_handler_is_connected(cast(object_ptr), gulong(handler_id))
        return Bool(rv != 0)
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
    func signalHandlerUnblock(handlerID handler_id: CUnsignedLong) {
        g_signal_handler_unblock(cast(object_ptr), gulong(handler_id))
    
    }

    /// Blocks all handlers on an instance that match a certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of blocked handlers
    /// otherwise.
    func signalHandlersBlockMatched(mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_signal_handlers_block_matched(cast(object_ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
        return CUnsignedInt(rv)
    }

    /// Destroy all signal handlers of a type instance. This function is
    /// an implementation detail of the `GObject` dispose implementation,
    /// and should not be used outside of the type system.
    func signalHandlersDestroy() {
        g_signal_handlers_destroy(cast(object_ptr))
    
    }

    /// Disconnects all handlers on an instance that match a certain
    /// selection criteria. The criteria mask is passed as an OR-ed
    /// combination of `GSignalMatchType` flags, and the criteria values are
    /// passed as arguments.  Passing at least one of the
    /// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
    /// `G_SIGNAL_MATCH_DATA` match flags is required for successful
    /// matches.  If no handlers were found, 0 is returned, the number of
    /// disconnected handlers otherwise.
    func signalHandlersDisconnectMatched(mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_signal_handlers_disconnect_matched(cast(object_ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
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
    func signalHandlersUnblockMatched(mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, closure: ClosureProtocol, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_signal_handlers_unblock_matched(cast(object_ptr), mask, guint(signal_id), detail, cast(closure.ptr), cast(func_), cast(data))
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
    func signalHasHandlerPending(signalID signal_id: CUnsignedInt, detail: GLib.Quark, mayBeBlocked may_be_blocked: Bool) -> Bool {
        let rv = g_signal_has_handler_pending(cast(object_ptr), guint(signal_id), detail, gboolean(may_be_blocked ? 1 : 0))
        return Bool(rv != 0)
    }

    /// Stops a signal's current emission.
    /// 
    /// This will prevent the default method from running, if the signal was
    /// `G_SIGNAL_RUN_LAST` and you connected normally (i.e. without the "after"
    /// flag).
    /// 
    /// Prints a warning if used on a signal which isn't being emitted.
    func signalStopEmission(signalID signal_id: CUnsignedInt, detail: GLib.Quark) {
        g_signal_stop_emission(cast(object_ptr), guint(signal_id), detail)
    
    }

    /// Stops a signal's current emission.
    /// 
    /// This is just like `g_signal_stop_emission()` except it will look up the
    /// signal id for you.
    func signalStopEmissionByName(detailedSignal detailed_signal: UnsafePointer<gchar>) {
        g_signal_stop_emission_by_name(cast(object_ptr), detailed_signal)
    
    }
    /// Checks whether `object` has a [floating][floating-ref] reference.
    var isFloating: Bool {
        /// Checks whether `object` has a [floating][floating-ref] reference.
        get {
            let rv = g_object_is_floating(cast(object_ptr))
            return Bool(rv != 0)
        }
    }
}



