import CGLib
import GLib
import GObjectCHelpers

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
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GObject` instance.
    var object_ptr: UnsafeMutablePointer<GObject>! { get }

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
    public let ptr: UnsafeMutableRawPointer!
}

public extension ObjectRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GObject>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GObject>?) {
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

    /// Reference intialiser for a related type that implements `ObjectProtocol`
    @inlinable init<T: ObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    
    // *** new() is not available because it has a varargs (...) parameter!


    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable init(valist object_type: GType, firstPropertyName first_property_name: UnsafePointer<gchar>!, varArgs var_args: CVaListPointer) {
        let rv = g_object_new_valist(object_type, first_property_name, var_args)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable init(properties object_type: GType, nProperties n_properties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) {
        let rv = g_object_new_with_properties(object_type, guint(n_properties), names, values)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable init(objectType object_type: GType, nParameters n_parameters: Int, parameters: UnsafeMutablePointer<GParameter>!) {
        let rv = g_object_newv(object_type, guint(n_parameters), parameters)
        ptr = UnsafeMutableRawPointer(rv)
    }
    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable static func new(valist object_type: GType, firstPropertyName first_property_name: UnsafePointer<gchar>!, varArgs var_args: CVaListPointer) -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_object_new_valist(object_type, first_property_name, var_args))) else { return nil }
        return rv
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable static func newWith(properties object_type: GType, nProperties n_properties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_object_new_with_properties(object_type, guint(n_properties), names, values))) else { return nil }
        return rv
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable static func newv(objectType object_type: GType, nParameters n_parameters: Int, parameters: UnsafeMutablePointer<GParameter>!) -> ObjectRef! {
        guard let rv = ObjectRef(gpointer: g_object_newv(object_type, guint(n_parameters), parameters)) else { return nil }
        return rv
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
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GObject>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GObject>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GObject`.
    /// i.e., ownership is transferred to the `Object` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GObject>) {
        ptr = UnsafeMutableRawPointer(op)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Reference intialiser for a related type that implements `ObjectProtocol`
    /// Will retain `GObject`.
    /// - Parameter other: an instance of a related type that implements `ObjectProtocol`
    @inlinable public init<T: ObjectProtocol>(_ other: T) {
        ptr = other.ptr
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Releases the underlying `GObject` instance using `g_object_unref`.
    deinit {
        g_object_unref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_object_ref(ptr.assumingMemoryBound(to: GObject.self))
    }


    // *** new() is not available because it has a varargs (...) parameter!



    // *** newValist() is currently not available because g_object_new_valist takes a va_list pointer!


    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable public init(properties object_type: GType, nProperties n_properties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) {
        let rv = g_object_new_with_properties(object_type, guint(n_properties), names, values)
        ptr = UnsafeMutableRawPointer(rv)
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable public init(objectType object_type: GType, nParameters n_parameters: Int, parameters: UnsafeMutablePointer<GParameter>!) {
        let rv = g_object_newv(object_type, guint(n_parameters), parameters)
        ptr = UnsafeMutableRawPointer(rv)
    }


    // *** newValist() is currently not available because g_object_new_valist takes a va_list pointer!


    /// Creates a new instance of a `GObject` subtype and sets its properties using
    /// the provided arrays. Both arrays must have exactly `n_properties` elements,
    /// and the names and values correspond by index.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    @inlinable public static func newWith(properties object_type: GType, nProperties n_properties: Int, names: UnsafeMutablePointer<UnsafePointer<CChar>?>!, values: UnsafePointer<GValue>!) -> Object! {
        guard let rv = Object(gconstpointer: gconstpointer(g_object_new_with_properties(object_type, guint(n_properties), names, values))) else { return nil }
        return rv
    }

    /// Creates a new instance of a `GObject` subtype and sets its properties.
    /// 
    /// Construction parameters (see `G_PARAM_CONSTRUCT`, `G_PARAM_CONSTRUCT_ONLY`)
    /// which are not explicitly specified are set to their default values.
    ///
    /// **newv is deprecated:**
    /// Use g_object_new_with_properties() instead.
    /// deprecated. See #GParameter for more information.
    @available(*, deprecated) @inlinable public static func newv(objectType object_type: GType, nParameters n_parameters: Int, parameters: UnsafeMutablePointer<GParameter>!) -> Object! {
        guard let rv = Object(gpointer: g_object_newv(object_type, guint(n_parameters), parameters)) else { return nil }
        return rv
    }

}

// MARK: no Object properties

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
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

public extension ObjectProtocol {
    /// Connect a `ObjectSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @inlinable @discardableResult func connect(signal kind: ObjectSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> Int {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> Int {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(raw: ptr).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

// MARK: Object Class: ObjectProtocol extension (methods and fields)
public extension ObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObject` instance.
    @inlinable var object_ptr: UnsafeMutablePointer<GObject>! { return ptr?.assumingMemoryBound(to: GObject.self) }

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
    @inlinable func addToggleRef(notify: GToggleNotify?, data: gpointer! = nil) {
        g_object_add_toggle_ref(object_ptr, notify, data)
    
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
    @inlinable func addWeakPointer(weakPointerLocation weak_pointer_location: UnsafeMutablePointer<gpointer?>!) {
        g_object_add_weak_pointer(object_ptr, weak_pointer_location)
    
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
    @inlinable func bindProperty<ObjectT: ObjectProtocol>(sourceProperty source_property: UnsafePointer<gchar>!, target: ObjectT, targetProperty target_property: UnsafePointer<gchar>!, flags: BindingFlags) -> BindingRef! {
        let rv = BindingRef(gconstpointer: gconstpointer(g_object_bind_property(object_ptr, source_property, target.object_ptr, target_property, flags.value)))
        return rv
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
    @inlinable func bindPropertyFull<ObjectT: ObjectProtocol>(sourceProperty source_property: UnsafePointer<gchar>!, target: ObjectT, targetProperty target_property: UnsafePointer<gchar>!, flags: BindingFlags, transformTo transform_to: GBindingTransformFunc? = nil, transformFrom transform_from: GBindingTransformFunc? = nil, userData user_data: gpointer! = nil, notify: GDestroyNotify? = nil) -> BindingRef! {
        let rv = BindingRef(gconstpointer: gconstpointer(g_object_bind_property_full(object_ptr, source_property, target.object_ptr, target_property, flags.value, transform_to, transform_from, user_data, notify)))
        return rv
    }

    /// Creates a binding between `source_property` on `source` and `target_property`
    /// on `target`, allowing you to set the transformation functions to be used by
    /// the binding.
    /// 
    /// This function is the language bindings friendly version of
    /// `g_object_bind_property_full()`, using `GClosures` instead of
    /// function pointers.
    @inlinable func bindPropertyWithClosures<ClosureT: ClosureProtocol, ObjectT: ObjectProtocol>(sourceProperty source_property: UnsafePointer<gchar>!, target: ObjectT, targetProperty target_property: UnsafePointer<gchar>!, flags: BindingFlags, transformTo transform_to: ClosureT, transformFrom transform_from: ClosureT) -> BindingRef! {
        let rv = BindingRef(gconstpointer: gconstpointer(g_object_bind_property_with_closures(object_ptr, source_property, target.object_ptr, target_property, flags.value, transform_to.closure_ptr, transform_from.closure_ptr)))
        return rv
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
    @inlinable func dupData(key: UnsafePointer<gchar>!, dupFunc dup_func: GDuplicateFunc? = nil, userData user_data: gpointer! = nil) -> gpointer! {
        let rv = g_object_dup_data(object_ptr, key, dup_func, user_data)
        return rv
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
    @inlinable func dupQdata(quark: GQuark, dupFunc dup_func: GDuplicateFunc? = nil, userData user_data: gpointer! = nil) -> gpointer! {
        let rv = g_object_dup_qdata(object_ptr, quark, dup_func, user_data)
        return rv
    }

    /// This function is intended for `GObject` implementations to re-enforce
    /// a [floating](#floating-ref) object reference. Doing this is seldom
    /// required: all `GInitiallyUnowneds` are created with a floating reference
    /// which usually just needs to be sunken by calling `g_object_ref_sink()`.
    @inlinable func forceFloating() {
        g_object_force_floating(object_ptr)
    
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
    @inlinable func freezeNotify() {
        g_object_freeze_notify(object_ptr)
    
    }


    // *** get() is not available because it has a varargs (...) parameter!


    /// Gets a named field from the objects table of associations (see `g_object_set_data()`).
    @inlinable func getData(key: UnsafePointer<gchar>!) -> gpointer! {
        let rv = g_object_get_data(object_ptr, key)
        return rv
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
    @inlinable func getProperty<ValueT: ValueProtocol>(propertyName property_name: UnsafePointer<gchar>!, value: ValueT) {
        g_object_get_property(object_ptr, property_name, value.value_ptr)
    
    }

    /// This function gets back user data pointers stored via
    /// `g_object_set_qdata()`.
    @inlinable func getQdata(quark: GQuark) -> gpointer! {
        let rv = g_object_get_qdata(object_ptr, quark)
        return rv
    }

    /// Gets properties of an object.
    /// 
    /// In general, a copy is made of the property contents and the caller
    /// is responsible for freeing the memory in the appropriate manner for
    /// the type, for instance by calling `g_free()` or `g_object_unref()`.
    /// 
    /// See `g_object_get()`.
    @inlinable func getValist(firstPropertyName first_property_name: UnsafePointer<gchar>!, varArgs var_args: CVaListPointer) {
        g_object_get_valist(object_ptr, first_property_name, var_args)
    
    }

    /// Gets `n_properties` properties for an `object`.
    /// Obtained properties will be set to `values`. All properties must be valid.
    /// Warnings will be emitted and undefined behaviour may result if invalid
    /// properties are passed in.
    @inlinable func getv(nProperties n_properties: Int, names: UnsafeMutablePointer<UnsafePointer<gchar>?>!, values: UnsafeMutablePointer<GValue>!) {
        g_object_getv(object_ptr, guint(n_properties), names, values)
    
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
    @inlinable func notify(propertyName property_name: UnsafePointer<gchar>!) {
        g_object_notify(object_ptr, property_name)
    
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
    @inlinable func notifyBy<ParamSpecT: ParamSpecProtocol>(pspec: ParamSpecT) {
        g_object_notify_by_pspec(object_ptr, pspec.param_spec_ptr)
    
    }

    /// Increases the reference count of `object`.
    /// 
    /// Since GLib 2.56, if `GLIB_VERSION_MAX_ALLOWED` is 2.56 or greater, the type
    /// of `object` will be propagated to the return type (using the GCC `typeof()`
    /// extension), so any casting the caller needs to do on the return type must be
    /// explicit.
    @discardableResult @inlinable func ref() -> ObjectRef! {
        guard let rv = ObjectRef(gpointer: g_object_ref(object_ptr)) else { return nil }
        return rv
    }

    /// Increase the reference count of `object`, and possibly remove the
    /// [floating](#floating-ref) reference, if `object` has a floating reference.
    /// 
    /// In other words, if the object is floating, then this call "assumes
    /// ownership" of the floating reference, converting it to a normal
    /// reference by clearing the floating flag while leaving the reference
    /// count unchanged.  If the object is not floating, then this call
    /// adds a new normal reference increasing the reference count by one.
    /// 
    /// Since GLib 2.56, the type of `object` will be propagated to the return type
    /// under the same conditions as for `g_object_ref()`.
    @inlinable @discardableResult func refSink() -> ObjectRef! {
        guard let rv = ObjectRef(gpointer: g_object_ref_sink(object_ptr)) else { return nil }
        return rv
    }

    /// Removes a reference added with `g_object_add_toggle_ref()`. The
    /// reference count of the object is decreased by one.
    @inlinable func removeToggleRef(notify: GToggleNotify?, data: gpointer! = nil) {
        g_object_remove_toggle_ref(object_ptr, notify, data)
    
    }

    /// Removes a weak reference from `object` that was previously added
    /// using `g_object_add_weak_pointer()`. The `weak_pointer_location` has
    /// to match the one used with `g_object_add_weak_pointer()`.
    @inlinable func removeWeakPointer(weakPointerLocation weak_pointer_location: UnsafeMutablePointer<gpointer?>!) {
        g_object_remove_weak_pointer(object_ptr, weak_pointer_location)
    
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
    @inlinable func replaceData(key: UnsafePointer<gchar>!, oldval: gpointer! = nil, newval: gpointer! = nil, destroy: GDestroyNotify? = nil, oldDestroy old_destroy: UnsafeMutablePointer<GDestroyNotify?>! = nil) -> Bool {
        let rv = ((g_object_replace_data(object_ptr, key, oldval, newval, destroy, old_destroy)) != 0)
        return rv
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
    @inlinable func replaceQdata(quark: GQuark, oldval: gpointer! = nil, newval: gpointer! = nil, destroy: GDestroyNotify? = nil, oldDestroy old_destroy: UnsafeMutablePointer<GDestroyNotify?>! = nil) -> Bool {
        let rv = ((g_object_replace_qdata(object_ptr, quark, oldval, newval, destroy, old_destroy)) != 0)
        return rv
    }

    /// Releases all references to other objects. This can be used to break
    /// reference cycles.
    /// 
    /// This function should only be called from object system implementations.
    @inlinable func runDispose() {
        g_object_run_dispose(object_ptr)
    
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
    @inlinable func setData(key: UnsafePointer<gchar>!, data: gpointer! = nil) {
        g_object_set_data(object_ptr, key, data)
    
    }

    /// Like `g_object_set_data()` except it adds notification
    /// for when the association is destroyed, either by setting it
    /// to a different value or when the object is destroyed.
    /// 
    /// Note that the `destroy` callback is not called if `data` is `nil`.
    @inlinable func setDataFull(key: UnsafePointer<gchar>!, data: gpointer! = nil, destroy: GDestroyNotify? = nil) {
        g_object_set_data_full(object_ptr, key, data, destroy)
    
    }

    /// Sets a property on an object.
    @inlinable func setProperty<ValueT: ValueProtocol>(propertyName property_name: UnsafePointer<gchar>!, value: ValueT) {
        g_object_set_property(object_ptr, property_name, value.value_ptr)
    
    }

    /// This sets an opaque, named pointer on an object.
    /// The name is specified through a `GQuark` (retrived e.g. via
    /// `g_quark_from_static_string()`), and the pointer
    /// can be gotten back from the `object` with `g_object_get_qdata()`
    /// until the `object` is finalized.
    /// Setting a previously set user data pointer, overrides (frees)
    /// the old pointer set, using `NULL` as pointer essentially
    /// removes the data stored.
    @inlinable func setQdata(quark: GQuark, data: gpointer! = nil) {
        g_object_set_qdata(object_ptr, quark, data)
    
    }

    /// This function works like `g_object_set_qdata()`, but in addition,
    /// a void (*destroy) (gpointer) function may be specified which is
    /// called with `data` as argument when the `object` is finalized, or
    /// the data is being overwritten by a call to `g_object_set_qdata()`
    /// with the same `quark`.
    @inlinable func setQdataFull(quark: GQuark, data: gpointer! = nil, destroy: GDestroyNotify? = nil) {
        g_object_set_qdata_full(object_ptr, quark, data, destroy)
    
    }

    /// Sets properties on an object.
    @inlinable func setValist(firstPropertyName first_property_name: UnsafePointer<gchar>!, varArgs var_args: CVaListPointer) {
        g_object_set_valist(object_ptr, first_property_name, var_args)
    
    }

    /// Sets `n_properties` properties for an `object`.
    /// Properties to be set will be taken from `values`. All properties must be
    /// valid. Warnings will be emitted and undefined behaviour may result if invalid
    /// properties are passed in.
    @inlinable func setv(nProperties n_properties: Int, names: UnsafeMutablePointer<UnsafePointer<gchar>?>!, values: UnsafePointer<GValue>!) {
        g_object_setv(object_ptr, guint(n_properties), names, values)
    
    }

    /// Remove a specified datum from the object's data associations,
    /// without invoking the association's destroy handler.
    @inlinable func stealData(key: UnsafePointer<gchar>!) -> gpointer! {
        let rv = g_object_steal_data(object_ptr, key)
        return rv
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
    @inlinable func stealQdata(quark: GQuark) -> gpointer! {
        let rv = g_object_steal_qdata(object_ptr, quark)
        return rv
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
    @inlinable func thawNotify() {
        g_object_thaw_notify(object_ptr)
    
    }

    /// Decreases the reference count of `object`. When its reference count
    /// drops to 0, the object is finalized (i.e. its memory is freed).
    /// 
    /// If the pointer to the `GObject` may be reused in future (for example, if it is
    /// an instance variable of another object), it is recommended to clear the
    /// pointer to `nil` rather than retain a dangling pointer to a potentially
    /// invalid `GObject` instance. Use `g_clear_object()` for this.
    @inlinable func unref() {
        g_object_unref(object_ptr)
    
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
    @inlinable func watch<ClosureT: ClosureProtocol>(closure: ClosureT) {
        g_object_watch_closure(object_ptr, closure.closure_ptr)
    
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
    @inlinable func weakRef(notify: GWeakNotify?, data: gpointer! = nil) {
        g_object_weak_ref(object_ptr, notify, data)
    
    }

    /// Removes a weak reference callback to an object.
    @inlinable func weakUnref(notify: GWeakNotify?, data: gpointer! = nil) {
        g_object_weak_unref(object_ptr, notify, data)
    
    }

    /// A variant of `g_cclosure_new()` which uses `object` as `user_data` and
    /// calls `g_object_watch_closure()` on `object` and the created
    /// closure. This function is useful when you have a callback closely
    /// associated with a `GObject`, and want the callback to no longer run
    /// after the object is is freed.
    @inlinable func cclosureNewObject(callbackFunc callback_func: @escaping GCallback) -> ClosureRef! {
        let rv = ClosureRef(gconstpointer: gconstpointer(g_cclosure_new_object(callback_func, object_ptr)))
        return rv
    }

    /// A variant of `g_cclosure_new_swap()` which uses `object` as `user_data`
    /// and calls `g_object_watch_closure()` on `object` and the created
    /// closure. This function is useful when you have a callback closely
    /// associated with a `GObject`, and want the callback to no longer run
    /// after the object is is freed.
    @inlinable func cclosureNewObjectSwap(callbackFunc callback_func: @escaping GCallback) -> ClosureRef! {
        let rv = ClosureRef(gconstpointer: gconstpointer(g_cclosure_new_object_swap(callback_func, object_ptr)))
        return rv
    }

    /// Disconnects a handler from `instance` so it will not be called during
    /// any future or currently ongoing emissions of the signal it has been
    /// connected to. The `handler_id_ptr` is then set to zero, which is never a valid handler ID value (see `g_signal_connect()`).
    /// 
    /// If the handler ID is 0 then this function does nothing.
    /// 
    /// A macro is also included that allows this function to be used without
    /// pointer casts.
    @inlinable func clearSignalHandler(handlerIDPtr handler_id_ptr: UnsafeMutablePointer<gulong>!) {
        g_clear_signal_handler(handler_id_ptr, object_ptr)
    
    }

    /// Connects a closure to a signal for a particular object.
    @inlinable func signalConnectClosure<ClosureT: ClosureProtocol>(detailedSignal detailed_signal: UnsafePointer<gchar>!, closure: ClosureT, after: Bool) -> Int {
        let rv = Int(g_signal_connect_closure(object_ptr, detailed_signal, closure.closure_ptr, gboolean((after) ? 1 : 0)))
        return rv
    }

    /// Connects a closure to a signal for a particular object.
    @inlinable func signalConnectClosureByID<ClosureT: ClosureProtocol>(signalID signal_id: Int, detail: GQuark, closure: ClosureT, after: Bool) -> Int {
        let rv = Int(g_signal_connect_closure_by_id(object_ptr, guint(signal_id), detail, closure.closure_ptr, gboolean((after) ? 1 : 0)))
        return rv
    }

    /// Connects a `GCallback` function to a signal for a particular object. Similar
    /// to `g_signal_connect()`, but allows to provide a `GClosureNotify` for the data
    /// which will be called when the signal handler is disconnected and no longer
    /// used. Specify `connect_flags` if you need ``..._after()`` or
    /// ``..._swapped()`` variants of this function.
    @inlinable func signalConnectData(detailedSignal detailed_signal: UnsafePointer<gchar>!, cHandler c_handler: @escaping GCallback, data: gpointer! = nil, destroyData destroy_data: GClosureNotify?, connectFlags connect_flags: ConnectFlags) -> Int {
        let rv = Int(g_signal_connect_data(object_ptr, detailed_signal, c_handler, data, destroy_data, connect_flags.value))
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
    @inlinable func signalConnectObject<TypeInstanceT: TypeInstanceProtocol>(instance: TypeInstanceT, detailedSignal detailed_signal: UnsafePointer<gchar>!, cHandler c_handler: @escaping GCallback, connectFlags connect_flags: ConnectFlags) -> Int {
        let rv = Int(g_signal_connect_object(instance._ptr, detailed_signal, c_handler, object_ptr, connect_flags.value))
        return rv
    }


    // *** signalEmit() is not available because it has a varargs (...) parameter!



    // *** signalEmitByName() is not available because it has a varargs (...) parameter!


    /// Returns the invocation hint of the innermost signal emission of instance.
    @inlinable func signalGetInvocationHint() -> SignalInvocationHintRef! {
        let rv = SignalInvocationHintRef(gconstpointer: gconstpointer(g_signal_get_invocation_hint(object_ptr)))
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
    @inlinable func signalHandlerBlock(handlerID handler_id: Int) {
        g_signal_handler_block(object_ptr, gulong(handler_id))
    
    }

    /// Disconnects a handler from an instance so it will not be called during
    /// any future or currently ongoing emissions of the signal it has been
    /// connected to. The `handler_id` becomes invalid and may be reused.
    /// 
    /// The `handler_id` has to be a valid signal handler id, connected to a
    /// signal of `instance`.
    @inlinable func signalHandlerDisconnect(handlerID handler_id: Int) {
        g_signal_handler_disconnect(object_ptr, gulong(handler_id))
    
    }

    /// Finds the first signal handler that matches certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// The match `mask` has to be non-0 for successful matches.
    /// If no handler was found, 0 is returned.
    @inlinable func signalHandlerFind<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID signal_id: Int, detail: GQuark, closure: ClosureT? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
        let rv = Int(g_signal_handler_find(object_ptr, mask.value, guint(signal_id), detail, closure?.closure_ptr, `func`, data))
        return rv
    }

    /// Returns whether `handler_id` is the ID of a handler connected to `instance`.
    @inlinable func signalHandlerIsConnected(handlerID handler_id: Int) -> Bool {
        let rv = ((g_signal_handler_is_connected(object_ptr, gulong(handler_id))) != 0)
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
    @inlinable func signalHandlerUnblock(handlerID handler_id: Int) {
        g_signal_handler_unblock(object_ptr, gulong(handler_id))
    
    }

    /// Blocks all handlers on an instance that match a certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of blocked handlers
    /// otherwise.
    @inlinable func signalHandlersBlockMatched<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID signal_id: Int, detail: GQuark, closure: ClosureT? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
        let rv = Int(g_signal_handlers_block_matched(object_ptr, mask.value, guint(signal_id), detail, closure?.closure_ptr, `func`, data))
        return rv
    }

    /// Destroy all signal handlers of a type instance. This function is
    /// an implementation detail of the `GObject` dispose implementation,
    /// and should not be used outside of the type system.
    @inlinable func signalHandlersDestroy() {
        g_signal_handlers_destroy(object_ptr)
    
    }

    /// Disconnects all handlers on an instance that match a certain
    /// selection criteria. The criteria mask is passed as an OR-ed
    /// combination of `GSignalMatchType` flags, and the criteria values are
    /// passed as arguments.  Passing at least one of the
    /// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
    /// `G_SIGNAL_MATCH_DATA` match flags is required for successful
    /// matches.  If no handlers were found, 0 is returned, the number of
    /// disconnected handlers otherwise.
    @inlinable func signalHandlersDisconnectMatched<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID signal_id: Int, detail: GQuark, closure: ClosureT? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
        let rv = Int(g_signal_handlers_disconnect_matched(object_ptr, mask.value, guint(signal_id), detail, closure?.closure_ptr, `func`, data))
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
    @inlinable func signalHandlersUnblockMatched<ClosureT: ClosureProtocol>(mask: SignalMatchType, signalID signal_id: Int, detail: GQuark, closure: ClosureT? = nil, `func`: gpointer! = nil, data: gpointer! = nil) -> Int {
        let rv = Int(g_signal_handlers_unblock_matched(object_ptr, mask.value, guint(signal_id), detail, closure?.closure_ptr, `func`, data))
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
    @inlinable func signalHasHandlerPending(signalID signal_id: Int, detail: GQuark, mayBeBlocked may_be_blocked: Bool) -> Bool {
        let rv = ((g_signal_has_handler_pending(object_ptr, guint(signal_id), detail, gboolean((may_be_blocked) ? 1 : 0))) != 0)
        return rv
    }

    /// Stops a signal's current emission.
    /// 
    /// This will prevent the default method from running, if the signal was
    /// `G_SIGNAL_RUN_LAST` and you connected normally (i.e. without the "after"
    /// flag).
    /// 
    /// Prints a warning if used on a signal which isn't being emitted.
    @inlinable func signalStopEmission(signalID signal_id: Int, detail: GQuark) {
        g_signal_stop_emission(object_ptr, guint(signal_id), detail)
    
    }

    /// Stops a signal's current emission.
    /// 
    /// This is just like `g_signal_stop_emission()` except it will look up the
    /// signal id for you.
    @inlinable func signalStopEmissionByName(detailedSignal detailed_signal: UnsafePointer<gchar>!) {
        g_signal_stop_emission_by_name(object_ptr, detailed_signal)
    
    }
    /// Checks whether `object` has a [floating](#floating-ref) reference.
    @inlinable var isFloating: Bool {
        /// Checks whether `object` has a [floating](#floating-ref) reference.
        get {
            let rv = ((g_object_is_floating(object_ptr)) != 0)
            return rv
        }
    }

    @inlinable var gTypeInstance: GTypeInstance {
        get {
            let rv = object_ptr.pointee.g_type_instance
            return rv
        }
    }

    // var refCount is unavailable because ref_count is private

    // var qdata is unavailable because qdata is private

}



