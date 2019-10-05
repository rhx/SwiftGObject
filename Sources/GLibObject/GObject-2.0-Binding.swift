import CGLib
import GLib

// MARK: - Binding Class

/// The `BindingProtocol` protocol exposes the methods and properties of an underlying `GBinding` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Binding`.
/// Alternatively, use `BindingRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GBinding` is the representation of a binding between a property on a
/// `GObject` instance (or source) and another property on another `GObject`
/// instance (or target). Whenever the source property changes, the same
/// value is applied to the target property; for instance, the following
/// binding:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property (object1, "property-a",
///                           object2, "property-b",
///                           G_BINDING_DEFAULT);
/// ```
/// 
/// will cause the property named "property-b" of `object2` to be updated
/// every time `g_object_set()` or the specific accessor changes the value of
/// the property "property-a" of `object1`.
/// 
/// It is possible to create a bidirectional binding between two properties
/// of two `GObject` instances, so that if either property changes, the
/// other is updated as well, for instance:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property (object1, "property-a",
///                           object2, "property-b",
///                           G_BINDING_BIDIRECTIONAL);
/// ```
/// 
/// will keep the two properties in sync.
/// 
/// It is also possible to set a custom transformation function (in both
/// directions, in case of a bidirectional binding) to apply a custom
/// transformation from the source value to the target value before
/// applying it; for instance, the following binding:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property_full (adjustment1, "value",
///                                adjustment2, "value",
///                                G_BINDING_BIDIRECTIONAL,
///                                celsius_to_fahrenheit,
///                                fahrenheit_to_celsius,
///                                NULL, NULL);
/// ```
/// 
/// will keep the "value" property of the two adjustments in sync; the
/// `celsius_to_fahrenheit` function will be called whenever the "value"
/// property of `adjustment1` changes and will transform the current value
/// of the property before applying it to the "value" property of `adjustment2`.
/// 
/// Vice versa, the `fahrenheit_to_celsius` function will be called whenever
/// the "value" property of `adjustment2` changes, and will transform the
/// current value of the property before applying it to the "value" property
/// of `adjustment1`.
/// 
/// Note that `GBinding` does not resolve cycles by itself; a cycle like
/// 
/// ```
///   object1:propertyA -> object2:propertyB
///   object2:propertyB -> object3:propertyC
///   object3:propertyC -> object1:propertyA
/// ```
/// 
/// might lead to an infinite loop. The loop, in this particular case,
/// can be avoided if the objects emit the `GObject::notify` signal only
/// if the value has effectively been changed. A binding is implemented
/// using the `GObject::notify` signal, so it is susceptible to all the
/// various ways of blocking a signal emission, like `g_signal_stop_emission()`
/// or `g_signal_handler_block()`.
/// 
/// A binding will be severed, and the resources it allocates freed, whenever
/// either one of the `GObject` instances it refers to are finalized, or when
/// the `GBinding` instance loses its last reference.
/// 
/// Bindings for languages with garbage collection can use
/// `g_binding_unbind()` to explicitly release a binding between the source
/// and target properties, instead of relying on the last reference on the
/// binding, source, and target instances to drop.
/// 
/// `GBinding` is available since GObject 2.26
public protocol BindingProtocol: ObjectProtocol {
    /// Untyped pointer to the underlying `GBinding` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GBinding` instance.
    var binding_ptr: UnsafeMutablePointer<GBinding> { get }
}

/// The `BindingRef` type acts as a lightweight Swift reference to an underlying `GBinding` instance.
/// It exposes methods that can operate on this data type through `BindingProtocol` conformance.
/// Use `BindingRef` only as an `unowned` reference to an existing `GBinding` instance.
///
/// `GBinding` is the representation of a binding between a property on a
/// `GObject` instance (or source) and another property on another `GObject`
/// instance (or target). Whenever the source property changes, the same
/// value is applied to the target property; for instance, the following
/// binding:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property (object1, "property-a",
///                           object2, "property-b",
///                           G_BINDING_DEFAULT);
/// ```
/// 
/// will cause the property named "property-b" of `object2` to be updated
/// every time `g_object_set()` or the specific accessor changes the value of
/// the property "property-a" of `object1`.
/// 
/// It is possible to create a bidirectional binding between two properties
/// of two `GObject` instances, so that if either property changes, the
/// other is updated as well, for instance:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property (object1, "property-a",
///                           object2, "property-b",
///                           G_BINDING_BIDIRECTIONAL);
/// ```
/// 
/// will keep the two properties in sync.
/// 
/// It is also possible to set a custom transformation function (in both
/// directions, in case of a bidirectional binding) to apply a custom
/// transformation from the source value to the target value before
/// applying it; for instance, the following binding:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property_full (adjustment1, "value",
///                                adjustment2, "value",
///                                G_BINDING_BIDIRECTIONAL,
///                                celsius_to_fahrenheit,
///                                fahrenheit_to_celsius,
///                                NULL, NULL);
/// ```
/// 
/// will keep the "value" property of the two adjustments in sync; the
/// `celsius_to_fahrenheit` function will be called whenever the "value"
/// property of `adjustment1` changes and will transform the current value
/// of the property before applying it to the "value" property of `adjustment2`.
/// 
/// Vice versa, the `fahrenheit_to_celsius` function will be called whenever
/// the "value" property of `adjustment2` changes, and will transform the
/// current value of the property before applying it to the "value" property
/// of `adjustment1`.
/// 
/// Note that `GBinding` does not resolve cycles by itself; a cycle like
/// 
/// ```
///   object1:propertyA -> object2:propertyB
///   object2:propertyB -> object3:propertyC
///   object3:propertyC -> object1:propertyA
/// ```
/// 
/// might lead to an infinite loop. The loop, in this particular case,
/// can be avoided if the objects emit the `GObject::notify` signal only
/// if the value has effectively been changed. A binding is implemented
/// using the `GObject::notify` signal, so it is susceptible to all the
/// various ways of blocking a signal emission, like `g_signal_stop_emission()`
/// or `g_signal_handler_block()`.
/// 
/// A binding will be severed, and the resources it allocates freed, whenever
/// either one of the `GObject` instances it refers to are finalized, or when
/// the `GBinding` instance loses its last reference.
/// 
/// Bindings for languages with garbage collection can use
/// `g_binding_unbind()` to explicitly release a binding between the source
/// and target properties, instead of relying on the last reference on the
/// binding, source, and target instances to drop.
/// 
/// `GBinding` is available since GObject 2.26
public struct BindingRef: BindingProtocol {
    /// Untyped pointer to the underlying `GBinding` instance.
    /// For type-safe access, use the generated, typed pointer `binding_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension BindingRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GBinding>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `BindingProtocol`
    init<T: BindingProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `Binding` type acts as a reference-counted owner of an underlying `GBinding` instance.
/// It provides the methods that can operate on this data type through `BindingProtocol` conformance.
/// Use `Binding` as a strong reference or owner of a `GBinding` instance.
///
/// `GBinding` is the representation of a binding between a property on a
/// `GObject` instance (or source) and another property on another `GObject`
/// instance (or target). Whenever the source property changes, the same
/// value is applied to the target property; for instance, the following
/// binding:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property (object1, "property-a",
///                           object2, "property-b",
///                           G_BINDING_DEFAULT);
/// ```
/// 
/// will cause the property named "property-b" of `object2` to be updated
/// every time `g_object_set()` or the specific accessor changes the value of
/// the property "property-a" of `object1`.
/// 
/// It is possible to create a bidirectional binding between two properties
/// of two `GObject` instances, so that if either property changes, the
/// other is updated as well, for instance:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property (object1, "property-a",
///                           object2, "property-b",
///                           G_BINDING_BIDIRECTIONAL);
/// ```
/// 
/// will keep the two properties in sync.
/// 
/// It is also possible to set a custom transformation function (in both
/// directions, in case of a bidirectional binding) to apply a custom
/// transformation from the source value to the target value before
/// applying it; for instance, the following binding:
/// 
/// (C Language Example):
/// ```C
///   g_object_bind_property_full (adjustment1, "value",
///                                adjustment2, "value",
///                                G_BINDING_BIDIRECTIONAL,
///                                celsius_to_fahrenheit,
///                                fahrenheit_to_celsius,
///                                NULL, NULL);
/// ```
/// 
/// will keep the "value" property of the two adjustments in sync; the
/// `celsius_to_fahrenheit` function will be called whenever the "value"
/// property of `adjustment1` changes and will transform the current value
/// of the property before applying it to the "value" property of `adjustment2`.
/// 
/// Vice versa, the `fahrenheit_to_celsius` function will be called whenever
/// the "value" property of `adjustment2` changes, and will transform the
/// current value of the property before applying it to the "value" property
/// of `adjustment1`.
/// 
/// Note that `GBinding` does not resolve cycles by itself; a cycle like
/// 
/// ```
///   object1:propertyA -> object2:propertyB
///   object2:propertyB -> object3:propertyC
///   object3:propertyC -> object1:propertyA
/// ```
/// 
/// might lead to an infinite loop. The loop, in this particular case,
/// can be avoided if the objects emit the `GObject::notify` signal only
/// if the value has effectively been changed. A binding is implemented
/// using the `GObject::notify` signal, so it is susceptible to all the
/// various ways of blocking a signal emission, like `g_signal_stop_emission()`
/// or `g_signal_handler_block()`.
/// 
/// A binding will be severed, and the resources it allocates freed, whenever
/// either one of the `GObject` instances it refers to are finalized, or when
/// the `GBinding` instance loses its last reference.
/// 
/// Bindings for languages with garbage collection can use
/// `g_binding_unbind()` to explicitly release a binding between the source
/// and target properties, instead of relying on the last reference on the
/// binding, source, and target instances to drop.
/// 
/// `GBinding` is available since GObject 2.26
open class Binding: Object, BindingProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Binding` instance.
    public init(_ op: UnsafeMutablePointer<GBinding>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `BindingProtocol`
    /// Will retain `GBinding`.
    public convenience init<T: BindingProtocol>(_ other: T) {
        self.init(cast(other.binding_ptr))
        g_object_ref(cast(binding_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GBinding.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GBinding.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GBinding.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GBinding>(opaquePointer))
    }



}

public enum BindingPropertyName: String, PropertyNameProtocol {
    /// Flags to be used to control the `GBinding`
    case flags = "flags"
    /// The `GObject` that should be used as the source of the binding
    case source = "source"
    /// The name of the property of `GBinding:source` that should be used
    /// as the source of the binding
    case sourceProperty = "source-property"
    /// The `GObject` that should be used as the target of the binding
    case target = "target"
    /// The name of the property of `GBinding:target` that should be used
    /// as the target of the binding
    case targetProperty = "target-property"
}

public extension BindingProtocol {
    /// Bind a `BindingPropertyName` source property to a given target object.
    /// - Parameter source_property: the source property to bind
    /// - Parameter target: the target object to bind to
    /// - Parameter target_property: the target property to bind to
    /// - Parameter flags: the flags to pass to the `Binding`
    /// - Parameter transform_from: `ValueTransformer` to use for forward transformation
    /// - Parameter transform_to: `ValueTransformer` to use for backwards transformation
    /// - Returns: binding reference or `nil` in case of an error
    @discardableResult func bind<Q: PropertyNameProtocol, T: ObjectProtocol>(property source_property: BindingPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(cast(binding_ptr)).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef(cast($0)) }
        }

        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(GLibObject.ValueRef(raw: $1), GLibObject.ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }
}

public enum BindingSignalName: String, SignalNameProtocol {
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
    /// Flags to be used to control the `GBinding`
    case notifyFlags = "notify::flags"
    /// The `GObject` that should be used as the source of the binding
    case notifySource = "notify::source"
    /// The name of the property of `GBinding:source` that should be used
    /// as the source of the binding
    case notifySourceProperty = "notify::source-property"
    /// The `GObject` that should be used as the target of the binding
    case notifyTarget = "notify::target"
    /// The name of the property of `GBinding:target` that should be used
    /// as the target of the binding
    case notifyTargetProperty = "notify::target-property"
}

public extension BindingProtocol {
    /// Connect a `BindingSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: BindingSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(binding_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension BindingProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBinding` instance.
    var binding_ptr: UnsafeMutablePointer<GBinding> { return ptr.assumingMemoryBound(to: GBinding.self) }

    /// Retrieves the flags passed when constructing the `GBinding.`
    func getFlags() -> GBindingFlags {
        let rv = g_binding_get_flags(cast(binding_ptr))
        return rv
    }

    /// Retrieves the `GObject` instance used as the source of the binding.
    func getSource() -> UnsafeMutablePointer<GObject>! {
        let rv = g_binding_get_source(cast(binding_ptr))
        return cast(rv)
    }

    /// Retrieves the name of the property of `GBinding:source` used as the source
    /// of the binding.
    func getSourceProperty() -> String! {
        let rv = g_binding_get_source_property(cast(binding_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Retrieves the `GObject` instance used as the target of the binding.
    func getTarget() -> UnsafeMutablePointer<GObject>! {
        let rv = g_binding_get_target(cast(binding_ptr))
        return cast(rv)
    }

    /// Retrieves the name of the property of `GBinding:target` used as the target
    /// of the binding.
    func getTargetProperty() -> String! {
        let rv = g_binding_get_target_property(cast(binding_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }

    /// Explicitly releases the binding between the source and the target
    /// property expressed by `binding`.
    /// 
    /// This function will release the reference that is being held on
    /// the `binding` instance; if you want to hold on to the `GBinding` instance
    /// after calling `g_binding_unbind()`, you will need to hold a reference
    /// to it.
    func unbind() {
        g_binding_unbind(cast(binding_ptr))
    
    }
    /// Flags to be used to control the `GBinding`
    var flags: GBindingFlags {
        /// Retrieves the flags passed when constructing the `GBinding.`
        get {
            let rv = g_binding_get_flags(cast(binding_ptr))
            return rv
        }
    }

    /// The `GObject` that should be used as the source of the binding
    var source: UnsafeMutablePointer<GObject>! {
        /// Retrieves the `GObject` instance used as the source of the binding.
        get {
            let rv = g_binding_get_source(cast(binding_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the name of the property of `GBinding:source` used as the source
    /// of the binding.
    var sourceProperty: String! {
        /// Retrieves the name of the property of `GBinding:source` used as the source
        /// of the binding.
        get {
            let rv = g_binding_get_source_property(cast(binding_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }

    /// The `GObject` that should be used as the target of the binding
    var target: UnsafeMutablePointer<GObject>! {
        /// Retrieves the `GObject` instance used as the target of the binding.
        get {
            let rv = g_binding_get_target(cast(binding_ptr))
            return cast(rv)
        }
    }

    /// Retrieves the name of the property of `GBinding:target` used as the target
    /// of the binding.
    var targetProperty: String! {
        /// Retrieves the name of the property of `GBinding:target` used as the target
        /// of the binding.
        get {
            let rv = g_binding_get_target_property(cast(binding_ptr))
            return rv.map { String(cString: UnsafePointer<CChar>($0)) }
        }
    }
}



