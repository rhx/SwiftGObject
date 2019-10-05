import CGLib
import GLib

// MARK: - TypeModule Class

/// The `TypeModuleProtocol` protocol exposes the methods and properties of an underlying `GTypeModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeModule`.
/// Alternatively, use `TypeModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface. The model of `GTypeModule` is a dynamically loaded module
/// which implements some number of types and interface implementations.
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// unref cannot happen in module code, since that would lead to the
/// caller's code being unloaded before `g_object_unref()` returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass.`
public protocol TypeModuleProtocol: ObjectProtocol, TypePluginProtocol {
    /// Untyped pointer to the underlying `GTypeModule` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeModule` instance.
    var type_module_ptr: UnsafeMutablePointer<GTypeModule> { get }
}

/// The `TypeModuleRef` type acts as a lightweight Swift reference to an underlying `GTypeModule` instance.
/// It exposes methods that can operate on this data type through `TypeModuleProtocol` conformance.
/// Use `TypeModuleRef` only as an `unowned` reference to an existing `GTypeModule` instance.
///
/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface. The model of `GTypeModule` is a dynamically loaded module
/// which implements some number of types and interface implementations.
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// unref cannot happen in module code, since that would lead to the
/// caller's code being unloaded before `g_object_unref()` returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass.`
public struct TypeModuleRef: TypeModuleProtocol {
    /// Untyped pointer to the underlying `GTypeModule` instance.
    /// For type-safe access, use the generated, typed pointer `type_module_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeModuleRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeModule>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeModuleProtocol`
    init<T: TypeModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeModule` type acts as a reference-counted owner of an underlying `GTypeModule` instance.
/// It provides the methods that can operate on this data type through `TypeModuleProtocol` conformance.
/// Use `TypeModule` as a strong reference or owner of a `GTypeModule` instance.
///
/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface. The model of `GTypeModule` is a dynamically loaded module
/// which implements some number of types and interface implementations.
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// unref cannot happen in module code, since that would lead to the
/// caller's code being unloaded before `g_object_unref()` returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass.`
open class TypeModule: Object, TypeModuleProtocol {
    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TypeModule` instance.
    public init(_ op: UnsafeMutablePointer<GTypeModule>) {
        super.init(cast(op))
    }

    /// Reference convenience intialiser for a related type that implements `TypeModuleProtocol`
    /// Will retain `GTypeModule`.
    public convenience init<T: TypeModuleProtocol>(_ other: T) {
        self.init(cast(other.type_module_ptr))
        g_object_ref(cast(type_module_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeModule.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeModule.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeModule.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeModule>(opaquePointer))
    }



}

// MARK: - no TypeModule properties

public enum TypeModuleSignalName: String, SignalNameProtocol {
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

public extension TypeModuleProtocol {
    /// Connect a `TypeModuleSignalName` signal to a given signal handler.
    /// - Parameter signal: the signal to connect
    /// - Parameter flags: signal connection flags
    /// - Parameter handler: signal handler to use
    /// - Returns: positive handler ID, or a value less than or equal to `0` in case of an error
    @discardableResult func connect(signal kind: TypeModuleSignalName, flags f: ConnectFlags = ConnectFlags(0), to handler: @escaping GLibObject.SignalHandler) -> CUnsignedLong {
        func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: GLibObject.SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
            let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
            let callback = unsafeBitCast(handler, to: GLibObject.Callback.self)
            let rv = GLibObject.ObjectRef(cast(type_module_ptr)).signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
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

public extension TypeModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeModule` instance.
    var type_module_ptr: UnsafeMutablePointer<GTypeModule> { return ptr.assumingMemoryBound(to: GTypeModule.self) }

    /// Registers an additional interface for a type, whose interface lives
    /// in the given type plugin. If the interface was already registered
    /// for the type in this plugin, nothing will be done.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_add_interface_static()`
    /// instead. This can be used when making a static build of the module.
    func addInterface(instanceType instance_type: GType, interfaceType interface_type: GType, interfaceInfo interface_info: InterfaceInfoProtocol) {
        g_type_module_add_interface(cast(type_module_ptr), instance_type, interface_type, cast(interface_info.ptr))
    
    }

    /// Looks up or registers an enumeration that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    func registerEnum(name: UnsafePointer<gchar>, constStaticValues const_static_values: EnumValueProtocol) -> GType {
        let rv = g_type_module_register_enum(cast(type_module_ptr), name, cast(const_static_values.ptr))
        return rv
    }

    /// Looks up or registers a flags type that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    func registerFlags(name: UnsafePointer<gchar>, constStaticValues const_static_values: FlagsValueProtocol) -> GType {
        let rv = g_type_module_register_flags(cast(type_module_ptr), name, cast(const_static_values.ptr))
        return rv
    }

    /// Looks up or registers a type that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// When reregistering a type (typically because a module is unloaded
    /// then reloaded, and reinitialized), `module` and `parent_type` must
    /// be the same as they were previously.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    func registerType(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>, typeInfo type_info: TypeInfoProtocol, flags: TypeFlags) -> GType {
        let rv = g_type_module_register_type(cast(type_module_ptr), parent_type, type_name, cast(type_info.ptr), flags)
        return rv
    }

    /// Sets the name for a `GTypeModule`
    func set(name: UnsafePointer<gchar>) {
        g_type_module_set_name(cast(type_module_ptr), name)
    
    }

    /// Decreases the use count of a `GTypeModule` by one. If the
    /// result is zero, the module will be unloaded. (However, the
    /// `GTypeModule` will not be freed, and types associated with the
    /// `GTypeModule` are not unregistered. Once a `GTypeModule` is
    /// initialized, it must exist forever.)
    func unuse() {
        g_type_module_unuse(cast(type_module_ptr))
    
    }

    /// Increases the use count of a `GTypeModule` by one. If the
    /// use count was zero before, the plugin will be loaded.
    /// If loading the plugin fails, the use count is reset to
    /// its prior value.
    func use() -> Bool {
        let rv = g_type_module_use(cast(type_module_ptr))
        return Bool(rv != 0)
    }
}



