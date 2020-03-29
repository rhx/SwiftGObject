import CGLib
import GLib

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
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFlagsValue` instance.
    var _ptr: UnsafeMutablePointer<GFlagsValue> { get }
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
    public let ptr: UnsafeMutableRawPointer
}

public extension FlagsValueRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlagsValueProtocol`
    init<T: FlagsValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    init(opaquePointer: OpaquePointer) {
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
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GFlagsValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `FlagsValue` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GFlagsValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GFlagsValue, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `FlagsValueProtocol`
    /// `GFlagsValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `FlagsValueProtocol`
    public init<T: FlagsValueProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GFlagsValue, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GFlagsValue`.
    deinit {
        // no reference counting for GFlagsValue, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GFlagsValue, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GFlagsValue, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GFlagsValue, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GFlagsValue, cannot ref(cast(_ptr))
    }



}

// MARK: - no FlagsValue properties

// MARK: - no signals


public extension FlagsValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFlagsValue` instance.
    var _ptr: UnsafeMutablePointer<GFlagsValue> { return ptr.assumingMemoryBound(to: GFlagsValue.self) }

    /// This function is meant to be called from the `complete_type_info()`
    /// function of a `GTypePlugin` implementation, see the example for
    /// `g_enum_complete_type_info()` above.
    func flagsCompleteTypeInfo(gFlagsType g_flags_type: GType, info: TypeInfoProtocol) {
        g_flags_complete_type_info(g_flags_type, cast(info.ptr), cast(_ptr))
    
    }

    /// Registers a new static flags type with the name `name`.
    /// 
    /// It is normally more convenient to let [glib-mkenums](#glib-mkenums)
    /// generate a `my_flags_get_type()` function from a usual C enumeration
    /// definition than to write one yourself using `g_flags_register_static()`.
    func flagsRegisterStatic(name: UnsafePointer<gchar>) -> GType {
        let rv = g_flags_register_static(name, cast(_ptr))
        return rv
    }
}



