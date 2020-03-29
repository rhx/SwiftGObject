import CGLib
import GLib

// MARK: - EnumClass Record

/// The `EnumClassProtocol` protocol exposes the methods and properties of an underlying `GEnumClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EnumClass`.
/// Alternatively, use `EnumClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class of an enumeration type holds information about its
/// possible values.
public protocol EnumClassProtocol {
    /// Untyped pointer to the underlying `GEnumClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEnumClass` instance.
    var _ptr: UnsafeMutablePointer<GEnumClass> { get }
}

/// The `EnumClassRef` type acts as a lightweight Swift reference to an underlying `GEnumClass` instance.
/// It exposes methods that can operate on this data type through `EnumClassProtocol` conformance.
/// Use `EnumClassRef` only as an `unowned` reference to an existing `GEnumClass` instance.
///
/// The class of an enumeration type holds information about its
/// possible values.
public struct EnumClassRef: EnumClassProtocol {
    /// Untyped pointer to the underlying `GEnumClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EnumClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EnumClassProtocol`
    init<T: EnumClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EnumClass` type acts as an owner of an underlying `GEnumClass` instance.
/// It provides the methods that can operate on this data type through `EnumClassProtocol` conformance.
/// Use `EnumClass` as a strong reference or owner of a `GEnumClass` instance.
///
/// The class of an enumeration type holds information about its
/// possible values.
open class EnumClass: EnumClassProtocol {
    /// Untyped pointer to the underlying `GEnumClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GEnumClass` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EnumClass` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GEnumClass>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GEnumClass, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EnumClassProtocol`
    /// `GEnumClass` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EnumClassProtocol`
    public init<T: EnumClassProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GEnumClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GEnumClass`.
    deinit {
        // no reference counting for GEnumClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GEnumClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GEnumClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GEnumClass, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumClassProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GEnumClass, cannot ref(cast(_ptr))
    }



}

// MARK: - no EnumClass properties

// MARK: - no signals


public extension EnumClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEnumClass` instance.
    var _ptr: UnsafeMutablePointer<GEnumClass> { return ptr.assumingMemoryBound(to: GEnumClass.self) }

    /// Returns the `GEnumValue` for a value.
    func enumGet(value: CInt) -> UnsafeMutablePointer<GEnumValue>! {
        let rv = g_enum_get_value(cast(_ptr), gint(value))
        return cast(rv)
    }

    /// Looks up a `GEnumValue` by name.
    func enumGetValueBy(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GEnumValue>! {
        let rv = g_enum_get_value_by_name(cast(_ptr), name)
        return cast(rv)
    }

    /// Looks up a `GEnumValue` by nickname.
    func enumGetValueBy(nick: UnsafePointer<gchar>) -> UnsafeMutablePointer<GEnumValue>! {
        let rv = g_enum_get_value_by_nick(cast(_ptr), nick)
        return cast(rv)
    }
}



