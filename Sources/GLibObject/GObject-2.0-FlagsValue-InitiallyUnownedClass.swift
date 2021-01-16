import CGLib
import GLib
import GObjectCHelpers

// MARK: - FlagsValue Record

/// The `FlagsValueProtocol` protocol exposes the methods and properties of an underlying `GFlagsValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlagsValue`.
/// Alternatively, use `FlagsValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure which contains a single flags value, its name, and its
/// nickname.
public protocol FlagsValueProtocol {
        /// Untyped pointer to the underlying `GFlagsValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GFlagsValue` instance.
    var _ptr: UnsafeMutablePointer<GFlagsValue>! { get }

}

/// The `FlagsValueRef` type acts as a lightweight Swift reference to an underlying `GFlagsValue` instance.
/// It exposes methods that can operate on this data type through `FlagsValueProtocol` conformance.
/// Use `FlagsValueRef` only as an `unowned` reference to an existing `GFlagsValue` instance.
///
/// A structure which contains a single flags value, its name, and its
/// nickname.
public struct FlagsValueRef: FlagsValueProtocol {
        /// Untyped pointer to the underlying `GFlagsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension FlagsValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GFlagsValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GFlagsValue>?) {
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

    /// Reference intialiser for a related type that implements `FlagsValueProtocol`
    @inlinable init<T: FlagsValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlagsValue` type acts as an owner of an underlying `GFlagsValue` instance.
/// It provides the methods that can operate on this data type through `FlagsValueProtocol` conformance.
/// Use `FlagsValue` as a strong reference or owner of a `GFlagsValue` instance.
///
/// A structure which contains a single flags value, its name, and its
/// nickname.
open class FlagsValue: FlagsValueProtocol {
        /// Untyped pointer to the underlying `GFlagsValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GFlagsValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GFlagsValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFlagsValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `FlagsValueProtocol`
    /// `GFlagsValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FlagsValueProtocol`
    @inlinable public init<T: FlagsValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GFlagsValue`.
    deinit {
        // no reference counting for GFlagsValue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFlagsValue, cannot ref(_ptr)
    }



}

// MARK: no FlagsValue properties

// MARK: FlagsValue has no signals
// MARK: FlagsValue Record: FlagsValueProtocol extension (methods and fields)
public extension FlagsValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFlagsValue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GFlagsValue>! { return ptr?.assumingMemoryBound(to: GFlagsValue.self) }

    /// This function is meant to be called from the `complete_type_info()`
    /// function of a `GTypePlugin` implementation, see the example for
    /// `g_enum_complete_type_info()` above.
    @inlinable func flagsCompleteTypeInfo<TypeInfoT: TypeInfoProtocol>(gFlagsType: GType, info: TypeInfoT) {
        g_flags_complete_type_info(gFlagsType, info._ptr, _ptr)
    
    }

    /// Registers a new static flags type with the name `name`.
    /// 
    /// It is normally more convenient to let [glib-mkenums](#glib-mkenums)
    /// generate a `my_flags_get_type()` function from a usual C enumeration
    /// definition than to write one yourself using `g_flags_register_static()`.
    @inlinable func flagsRegisterStatic(name: UnsafePointer<gchar>!) -> GType {
        let rv = g_flags_register_static(name, _ptr)
        return rv
    }

    /// the flags value
    @inlinable var value: guint {
        /// the flags value
        get {
            let rv = _ptr.pointee.value
            return rv
        }
        /// the flags value
         set {
            _ptr.pointee.value = newValue
        }
    }

    /// the name of the value
    @inlinable var valueName: UnsafePointer<gchar>! {
        /// the name of the value
        get {
            let rv = _ptr.pointee.value_name
            return rv
        }
        /// the name of the value
         set {
            _ptr.pointee.value_name = newValue
        }
    }

    /// the nickname of the value
    @inlinable var valueNick: UnsafePointer<gchar>! {
        /// the nickname of the value
        get {
            let rv = _ptr.pointee.value_nick
            return rv
        }
        /// the nickname of the value
         set {
            _ptr.pointee.value_nick = newValue
        }
    }

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

/// The `InitiallyUnownedClassProtocol` protocol exposes the methods and properties of an underlying `GInitiallyUnownedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InitiallyUnownedClass`.
/// Alternatively, use `InitiallyUnownedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class structure for the GInitiallyUnowned type.
public protocol InitiallyUnownedClassProtocol {
        /// Untyped pointer to the underlying `GInitiallyUnownedClass` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GInitiallyUnownedClass` instance.
    var _ptr: UnsafeMutablePointer<GInitiallyUnownedClass>! { get }

}

/// The `InitiallyUnownedClassRef` type acts as a lightweight Swift reference to an underlying `GInitiallyUnownedClass` instance.
/// It exposes methods that can operate on this data type through `InitiallyUnownedClassProtocol` conformance.
/// Use `InitiallyUnownedClassRef` only as an `unowned` reference to an existing `GInitiallyUnownedClass` instance.
///
/// The class structure for the GInitiallyUnowned type.
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



