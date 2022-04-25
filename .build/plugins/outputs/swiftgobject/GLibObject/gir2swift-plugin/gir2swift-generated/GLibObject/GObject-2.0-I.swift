import CGLib
import GLib
import GObjectCHelpers

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



/// Metatype/GType declaration for InitiallyUnowned
public extension InitiallyUnownedClassRef {
    
    /// This getter returns the GLib type identifier registered for `InitiallyUnowned`
    static var metatypeReference: GType { g_initially_unowned_get_type() }
    
    private static var metatypePointer: UnsafeMutablePointer<GInitiallyUnownedClass>? { g_type_class_peek_static(metatypeReference)?.assumingMemoryBound(to: GInitiallyUnownedClass.self) }
    
    static var metatype: GInitiallyUnownedClass? { metatypePointer?.pointee } 
    
    static var wrapper: InitiallyUnownedClassRef? { InitiallyUnownedClassRef(metatypePointer) }
    
    
}

// MARK: - InitiallyUnownedClass Record

/// The class structure for the GInitiallyUnowned type.
///
/// The `InitiallyUnownedClassProtocol` protocol exposes the methods and properties of an underlying `GInitiallyUnownedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InitiallyUnownedClass`.
/// Alternatively, use `InitiallyUnownedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InitiallyUnownedClassProtocol {
        /// Untyped pointer to the underlying `GInitiallyUnownedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInitiallyUnownedClass` instance.
    var _ptr: UnsafeMutablePointer<GInitiallyUnownedClass>! { get }

    /// Required Initialiser for types conforming to `InitiallyUnownedClassProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// The class structure for the GInitiallyUnowned type.
///
/// The `InitiallyUnownedClassRef` type acts as a lightweight Swift reference to an underlying `GInitiallyUnownedClass` instance.
/// It exposes methods that can operate on this data type through `InitiallyUnownedClassProtocol` conformance.
/// Use `InitiallyUnownedClassRef` only as an `unowned` reference to an existing `GInitiallyUnownedClass` instance.
///
public struct InitiallyUnownedClassRef: InitiallyUnownedClassProtocol {
        /// Untyped pointer to the underlying `GInitiallyUnownedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InitiallyUnownedClassRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInitiallyUnownedClass>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInitiallyUnownedClass>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInitiallyUnownedClass>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInitiallyUnownedClass>?) {
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

    /// Reference intialiser for a related type that implements `InitiallyUnownedClassProtocol`
    @inlinable init<T: InitiallyUnownedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

// MARK: InitiallyUnownedClass Record: InitiallyUnownedClassProtocol extension (methods and fields)
public extension InitiallyUnownedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInitiallyUnownedClass` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInitiallyUnownedClass>! { return ptr?.assumingMemoryBound(to: GInitiallyUnownedClass.self) }


    /// the parent class
    @inlinable var gTypeClass: GTypeClass {
        /// the parent class
        get {
            let rv = _ptr.pointee.g_type_class
    return rv
        }
    }

    // var constructProperties is unavailable because construct_properties is private

    // var constructor is unavailable because constructor is void

    // var setProperty is unavailable because set_property is void

    // var getProperty is unavailable because get_property is void

    // var dispose is unavailable because dispose is void

    // var finalize is unavailable because finalize is void

    // var dispatchPropertiesChanged is unavailable because dispatch_properties_changed is void

    // var notify is unavailable because notify is void

    // var constructed is unavailable because constructed is void

    // var flags is unavailable because flags is private

    // var pdummy is unavailable because pdummy is private

}



// MARK: - InterfaceInfo Record

/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
///
/// The `InterfaceInfoProtocol` protocol exposes the methods and properties of an underlying `GInterfaceInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InterfaceInfo`.
/// Alternatively, use `InterfaceInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInterfaceInfo` instance.
    var _ptr: UnsafeMutablePointer<GInterfaceInfo>! { get }

    /// Required Initialiser for types conforming to `InterfaceInfoProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
///
/// The `InterfaceInfoRef` type acts as a lightweight Swift reference to an underlying `GInterfaceInfo` instance.
/// It exposes methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfoRef` only as an `unowned` reference to an existing `GInterfaceInfo` instance.
///
public struct InterfaceInfoRef: InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension InterfaceInfoRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GInterfaceInfo>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GInterfaceInfo>?) {
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

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    @inlinable init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
///
/// The `InterfaceInfo` type acts as an owner of an underlying `GInterfaceInfo` instance.
/// It provides the methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfo` as a strong reference or owner of a `GInterfaceInfo` instance.
///
open class InterfaceInfo: InterfaceInfoProtocol {
        /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GInterfaceInfo>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GInterfaceInfo>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GInterfaceInfo` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `InterfaceInfo` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    /// `GInterfaceInfo` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `InterfaceInfoProtocol`
    @inlinable public init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GInterfaceInfo`.
    deinit {
        // no reference counting for GInterfaceInfo, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GInterfaceInfo, cannot ref(_ptr)
    }



}

// MARK: no InterfaceInfo properties

// MARK: no InterfaceInfo signals

// MARK: InterfaceInfo has no signals
// MARK: InterfaceInfo Record: InterfaceInfoProtocol extension (methods and fields)
public extension InterfaceInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInterfaceInfo` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GInterfaceInfo>! { return ptr?.assumingMemoryBound(to: GInterfaceInfo.self) }

    /// Adds `interface_type` to the static `instance_type`.
    /// The information contained in the `GInterfaceInfo` structure
    /// pointed to by `info` is used to manage the relationship.
    @inlinable func typeAddInterfaceStatic(instanceType: GType, interfaceType: GType) {
        
        g_type_add_interface_static(instanceType, interfaceType, _ptr)
        
    }

    /// location of the interface initialization function
    @inlinable var interfaceInit: GInterfaceInitFunc! {
        /// location of the interface initialization function
        get {
            let rv = _ptr.pointee.interface_init
    return rv
        }
        /// location of the interface initialization function
         set {
            _ptr.pointee.interface_init = newValue
        }
    }

    /// location of the interface finalization function
    @inlinable var interfaceFinalize: GInterfaceFinalizeFunc! {
        /// location of the interface finalization function
        get {
            let rv = _ptr.pointee.interface_finalize
    return rv
        }
        /// location of the interface finalization function
         set {
            _ptr.pointee.interface_finalize = newValue
        }
    }

    /// user-supplied data passed to the interface init/finalize functions
    @inlinable var interfaceData: gpointer? {
        /// user-supplied data passed to the interface init/finalize functions
        get {
            let rv = _ptr.pointee.interface_data
    return rv
        }
        /// user-supplied data passed to the interface init/finalize functions
         set {
            _ptr.pointee.interface_data = newValue
        }
    }

}



