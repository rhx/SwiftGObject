import CGLib
import GLib
import GObjectCHelpers

// MARK: - Binding Class

/// `GBinding` is the representation of a binding between a property on a
/// `GObject` instance (or source) and another property on another `GObject`
/// instance (or target).
/// 
/// Whenever the source property changes, the same value is applied to the
/// target property; for instance, the following binding:
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
///
/// The `BindingProtocol` protocol exposes the methods and properties of an underlying `GBinding` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Binding`.
/// Alternatively, use `BindingRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol BindingProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GBinding` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GBinding` instance.
    var binding_ptr: UnsafeMutablePointer<GBinding>! { get }

    /// Required Initialiser for types conforming to `BindingProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GBinding` is the representation of a binding between a property on a
/// `GObject` instance (or source) and another property on another `GObject`
/// instance (or target).
/// 
/// Whenever the source property changes, the same value is applied to the
/// target property; for instance, the following binding:
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
///
/// The `BindingRef` type acts as a lightweight Swift reference to an underlying `GBinding` instance.
/// It exposes methods that can operate on this data type through `BindingProtocol` conformance.
/// Use `BindingRef` only as an `unowned` reference to an existing `GBinding` instance.
///
public struct BindingRef: BindingProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GBinding` instance.
    /// For type-safe access, use the generated, typed pointer `binding_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension BindingRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GBinding>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GBinding>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GBinding>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GBinding>?) {
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

    /// Reference intialiser for a related type that implements `BindingProtocol`
    @inlinable init<T: BindingProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: BindingProtocol>(_ other: T) -> BindingRef { BindingRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GBinding` is the representation of a binding between a property on a
/// `GObject` instance (or source) and another property on another `GObject`
/// instance (or target).
/// 
/// Whenever the source property changes, the same value is applied to the
/// target property; for instance, the following binding:
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
///
/// The `Binding` type acts as a reference-counted owner of an underlying `GBinding` instance.
/// It provides the methods that can operate on this data type through `BindingProtocol` conformance.
/// Use `Binding` as a strong reference or owner of a `GBinding` instance.
///
open class Binding: Object, BindingProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GBinding>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GBinding>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GBinding>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GBinding>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GBinding`.
    /// i.e., ownership is transferred to the `Binding` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GBinding>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `BindingProtocol`
    /// Will retain `GBinding`.
    /// - Parameter other: an instance of a related type that implements `BindingProtocol`
    @inlinable public init<T: BindingProtocol>(binding other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `BindingProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

public enum BindingPropertyName: String, PropertyNameProtocol {
    /// Flags to be used to control the `GBinding`
    case flags = "flags"
    /// The `GObject` that should be used as the source of the binding
    case source = "source"
    /// The name of the property of `GBinding:source` that should be used
    /// as the source of the binding.
    /// 
    /// This should be in [canonical form](#canonical-parameter-names) to get the
    /// best performance.
    case sourceProperty = "source-property"
    /// The `GObject` that should be used as the target of the binding
    case target = "target"
    /// The name of the property of `GBinding:target` that should be used
    /// as the target of the binding.
    /// 
    /// This should be in [canonical form](#canonical-parameter-names) to get the
    /// best performance.
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
    @discardableResult @inlinable func bind<Q: PropertyNameProtocol, T: GLibObject.ObjectProtocol>(property source_property: BindingPropertyName, to target: T, _ target_property: Q, flags f: BindingFlags = .default, transformFrom transform_from: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping GLibObject.ValueTransformer = { $0.transform(destValue: $1) }) -> BindingRef! {
        func _bind(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
            let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
            let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
            let rv = GLibObject.ObjectRef(raw: ptr).bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
                if let swift = UnsafeRawPointer($0) {
                    let holder = Unmanaged<GLibObject.SignalHandlerClosureHolder>.fromOpaque(swift)
                    holder.release()
                }
            }
            return rv.map { BindingRef($0) }
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

    /// Get the value of a Binding property
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func get(property: BindingPropertyName) -> GLibObject.Value {
        let v = GLibObject.Value()
        g_object_get_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
        return v
    }

    /// Set the value of a Binding property.
    /// *Note* that this will only have an effect on properties that are writable and not construct-only!
    /// - Parameter property: the property to get the value for
    /// - Returns: the value of the named property
    @inlinable func set(property: BindingPropertyName, value v: GLibObject.Value) {
        g_object_set_property(ptr.assumingMemoryBound(to: GObject.self), property.rawValue, v.value_ptr)
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"
    /// Flags to be used to control the `GBinding`
    case notifyFlags = "notify::flags"
    /// The `GObject` that should be used as the source of the binding
    case notifySource = "notify::source"
    /// The name of the property of `GBinding:source` that should be used
    /// as the source of the binding.
    /// 
    /// This should be in [canonical form](#canonical-parameter-names) to get the
    /// best performance.
    case notifySourceProperty = "notify::source-property"
    /// The `GObject` that should be used as the target of the binding
    case notifyTarget = "notify::target"
    /// The name of the property of `GBinding:target` that should be used
    /// as the target of the binding.
    /// 
    /// This should be in [canonical form](#canonical-parameter-names) to get the
    /// best performance.
    case notifyTargetProperty = "notify::target-property"
}

// MARK: Binding has no signals
// MARK: Binding Class: BindingProtocol extension (methods and fields)
public extension BindingProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GBinding` instance.
    @inlinable var binding_ptr: UnsafeMutablePointer<GBinding>! { return ptr?.assumingMemoryBound(to: GBinding.self) }

    /// Retrieves the `GObject` instance used as the source of the binding.
    /// 
    /// A `GBinding` can outlive the source `GObject` as the binding does not hold a
    /// strong reference to the source. If the source is destroyed before the
    /// binding then this function will return `nil`.
    @inlinable func dupSource() -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_binding_dup_source(binding_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the `GObject` instance used as the target of the binding.
    /// 
    /// A `GBinding` can outlive the target `GObject` as the binding does not hold a
    /// strong reference to the target. If the target is destroyed before the
    /// binding then this function will return `nil`.
    @inlinable func dupTarget() -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_binding_dup_target(binding_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the flags passed when constructing the `GBinding`.
    @inlinable func getFlags() -> BindingFlags {
        let rv = BindingFlags(g_binding_get_flags(binding_ptr))
        return rv
    }

    /// Retrieves the `GObject` instance used as the source of the binding.
    /// 
    /// A `GBinding` can outlive the source `GObject` as the binding does not hold a
    /// strong reference to the source. If the source is destroyed before the
    /// binding then this function will return `nil`.
    /// 
    /// Use `g_binding_dup_source()` if the source or binding are used from different
    /// threads as otherwise the pointer returned from this function might become
    /// invalid if the source is finalized from another thread in the meantime.
    ///
    /// **get_source is deprecated:**
    /// Use g_binding_dup_source() for a safer version of this
    /// function.
    @available(*, deprecated) @inlinable func getSource() -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_binding_get_source(binding_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the name of the property of `GBinding:source` used as the source
    /// of the binding.
    @inlinable func getSourceProperty() -> String! {
        let rv = g_binding_get_source_property(binding_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Retrieves the `GObject` instance used as the target of the binding.
    /// 
    /// A `GBinding` can outlive the target `GObject` as the binding does not hold a
    /// strong reference to the target. If the target is destroyed before the
    /// binding then this function will return `nil`.
    /// 
    /// Use `g_binding_dup_target()` if the target or binding are used from different
    /// threads as otherwise the pointer returned from this function might become
    /// invalid if the target is finalized from another thread in the meantime.
    ///
    /// **get_target is deprecated:**
    /// Use g_binding_dup_target() for a safer version of this
    /// function.
    @available(*, deprecated) @inlinable func getTarget() -> ObjectRef! {
        guard let rv = ObjectRef(gconstpointer: gconstpointer(g_binding_get_target(binding_ptr))) else { return nil }
        return rv
    }

    /// Retrieves the name of the property of `GBinding:target` used as the target
    /// of the binding.
    @inlinable func getTargetProperty() -> String! {
        let rv = g_binding_get_target_property(binding_ptr).map({ String(cString: $0) })
        return rv
    }

    /// Explicitly releases the binding between the source and the target
    /// property expressed by `binding`.
    /// 
    /// This function will release the reference that is being held on
    /// the `binding` instance if the binding is still bound; if you want to hold on
    /// to the `GBinding` instance after calling `g_binding_unbind()`, you will need
    /// to hold a reference to it.
    /// 
    /// Note however that this function does not take ownership of `binding`, it
    /// only unrefs the reference that was initially created by
    /// `g_object_bind_property()` and is owned by the binding.
    @inlinable func unbind() {
        g_binding_unbind(binding_ptr)
    
    }
    /// Flags to be used to control the `GBinding`
    @inlinable var flags: BindingFlags {
        /// Retrieves the flags passed when constructing the `GBinding`.
        get {
            let rv = BindingFlags(g_binding_get_flags(binding_ptr))
            return rv
        }
    }

    /// The `GObject` that should be used as the source of the binding
    @inlinable var source: ObjectRef! {
        /// Retrieves the `GObject` instance used as the source of the binding.
        /// 
        /// A `GBinding` can outlive the source `GObject` as the binding does not hold a
        /// strong reference to the source. If the source is destroyed before the
        /// binding then this function will return `nil`.
        /// 
        /// Use `g_binding_dup_source()` if the source or binding are used from different
        /// threads as otherwise the pointer returned from this function might become
        /// invalid if the source is finalized from another thread in the meantime.
        ///
        /// **get_source is deprecated:**
        /// Use g_binding_dup_source() for a safer version of this
        /// function.
        @available(*, deprecated) get {
            guard let rv = ObjectRef(gconstpointer: gconstpointer(g_binding_get_source(binding_ptr))) else { return nil }
            return rv
        }
    }

    /// Retrieves the name of the property of `GBinding:source` used as the source
    /// of the binding.
    @inlinable var sourceProperty: String! {
        /// Retrieves the name of the property of `GBinding:source` used as the source
        /// of the binding.
        get {
            let rv = g_binding_get_source_property(binding_ptr).map({ String(cString: $0) })
            return rv
        }
    }

    /// The `GObject` that should be used as the target of the binding
    @inlinable var target: ObjectRef! {
        /// Retrieves the `GObject` instance used as the target of the binding.
        /// 
        /// A `GBinding` can outlive the target `GObject` as the binding does not hold a
        /// strong reference to the target. If the target is destroyed before the
        /// binding then this function will return `nil`.
        /// 
        /// Use `g_binding_dup_target()` if the target or binding are used from different
        /// threads as otherwise the pointer returned from this function might become
        /// invalid if the target is finalized from another thread in the meantime.
        ///
        /// **get_target is deprecated:**
        /// Use g_binding_dup_target() for a safer version of this
        /// function.
        @available(*, deprecated) get {
            guard let rv = ObjectRef(gconstpointer: gconstpointer(g_binding_get_target(binding_ptr))) else { return nil }
            return rv
        }
    }

    /// Retrieves the name of the property of `GBinding:target` used as the target
    /// of the binding.
    @inlinable var targetProperty: String! {
        /// Retrieves the name of the property of `GBinding:target` used as the target
        /// of the binding.
        get {
            let rv = g_binding_get_target_property(binding_ptr).map({ String(cString: $0) })
            return rv
        }
    }


}



// MARK: - InitiallyUnowned Class

/// A type for objects that have an initially floating reference.
/// 
/// All the fields in the `GInitiallyUnowned` structure are private to the
/// implementation and should never be accessed directly.
///
/// The `InitiallyUnownedProtocol` protocol exposes the methods and properties of an underlying `GInitiallyUnowned` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InitiallyUnowned`.
/// Alternatively, use `InitiallyUnownedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InitiallyUnownedProtocol: ObjectProtocol {
        /// Untyped pointer to the underlying `GInitiallyUnowned` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInitiallyUnowned` instance.
    var initially_unowned_ptr: UnsafeMutablePointer<GInitiallyUnowned>! { get }

    /// Required Initialiser for types conforming to `InitiallyUnownedProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A type for objects that have an initially floating reference.
/// 
/// All the fields in the `GInitiallyUnowned` structure are private to the
/// implementation and should never be accessed directly.
///
/// The `InitiallyUnownedRef` type acts as a lightweight Swift reference to an underlying `GInitiallyUnowned` instance.
/// It exposes methods that can operate on this data type through `InitiallyUnownedProtocol` conformance.
/// Use `InitiallyUnownedRef` only as an `unowned` reference to an existing `GInitiallyUnowned` instance.
///
public struct InitiallyUnownedRef: InitiallyUnownedProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GInitiallyUnowned` instance.
    /// For type-safe access, use the generated, typed pointer `initially_unowned_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InitiallyUnownedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInitiallyUnowned>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInitiallyUnowned>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInitiallyUnowned>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInitiallyUnowned>?) {
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

    /// Reference intialiser for a related type that implements `InitiallyUnownedProtocol`
    @inlinable init<T: InitiallyUnownedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: InitiallyUnownedProtocol>(_ other: T) -> InitiallyUnownedRef { InitiallyUnownedRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A type for objects that have an initially floating reference.
/// 
/// All the fields in the `GInitiallyUnowned` structure are private to the
/// implementation and should never be accessed directly.
///
/// The `InitiallyUnowned` type acts as a reference-counted owner of an underlying `GInitiallyUnowned` instance.
/// It provides the methods that can operate on this data type through `InitiallyUnownedProtocol` conformance.
/// Use `InitiallyUnowned` as a strong reference or owner of a `GInitiallyUnowned` instance.
///
open class InitiallyUnowned: Object, InitiallyUnownedProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init(_ op: UnsafeMutablePointer<GInitiallyUnowned>) {
        super.init(cPointer: op)
        refSink()
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init(_ op: UnsafePointer<GInitiallyUnowned>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
        refSink()
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
        refSink()
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
        refSink()
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(_ op: UnsafePointer<GInitiallyUnowned>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
        refSink()
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(_ op: UnsafeMutablePointer<GInitiallyUnowned>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
        refSink()
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GInitiallyUnowned`.
    /// i.e., ownership is transferred to the `InitiallyUnowned` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init(retaining op: UnsafeMutablePointer<GInitiallyUnowned>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `InitiallyUnownedProtocol`
    /// Will retain `GInitiallyUnowned`.
    /// - Parameter other: an instance of a related type that implements `InitiallyUnownedProtocol`
    @inlinable public init<T: InitiallyUnownedProtocol>(initiallyUnowned other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no InitiallyUnowned properties

public enum InitiallyUnownedSignalName: String, SignalNameProtocol {
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
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: InitiallyUnowned has no signals
// MARK: InitiallyUnowned Class: InitiallyUnownedProtocol extension (methods and fields)
public extension InitiallyUnownedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInitiallyUnowned` instance.
    @inlinable var initially_unowned_ptr: UnsafeMutablePointer<GInitiallyUnowned>! { return ptr?.assumingMemoryBound(to: GInitiallyUnowned.self) }


    @inlinable var gTypeInstance: GTypeInstance {
        get {
            let rv = initially_unowned_ptr.pointee.g_type_instance
            return rv
        }
    }

    // var refCount is unavailable because ref_count is private

    // var qdata is unavailable because qdata is private

}



