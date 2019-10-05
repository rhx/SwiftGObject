import CGLib
import GLib

// MARK: - FlagsClass Record

/// The `FlagsClassProtocol` protocol exposes the methods and properties of an underlying `GFlagsClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `FlagsClass`.
/// Alternatively, use `FlagsClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class of a flags type holds information about its
/// possible values.
public protocol FlagsClassProtocol {
    /// Untyped pointer to the underlying `GFlagsClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GFlagsClass` instance.
    var _ptr: UnsafeMutablePointer<GFlagsClass> { get }
}

/// The `FlagsClassRef` type acts as a lightweight Swift reference to an underlying `GFlagsClass` instance.
/// It exposes methods that can operate on this data type through `FlagsClassProtocol` conformance.
/// Use `FlagsClassRef` only as an `unowned` reference to an existing `GFlagsClass` instance.
///
/// The class of a flags type holds information about its
/// possible values.
public struct FlagsClassRef: FlagsClassProtocol {
    /// Untyped pointer to the underlying `GFlagsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension FlagsClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `FlagsClassProtocol`
    init<T: FlagsClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `FlagsClass` type acts as an owner of an underlying `GFlagsClass` instance.
/// It provides the methods that can operate on this data type through `FlagsClassProtocol` conformance.
/// Use `FlagsClass` as a strong reference or owner of a `GFlagsClass` instance.
///
/// The class of a flags type holds information about its
/// possible values.
open class FlagsClass: FlagsClassProtocol {
    /// Untyped pointer to the underlying `GFlagsClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `FlagsClass` instance.
    public init(_ op: UnsafeMutablePointer<GFlagsClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `FlagsClassProtocol`
    /// `GFlagsClass` does not allow reference counting.
    public convenience init<T: FlagsClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GFlagsClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GFlagsClass`.
    deinit {
        // no reference counting for GFlagsClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GFlagsClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GFlagsClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GFlagsClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `FlagsClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GFlagsClass>(opaquePointer))
    }



}

// MARK: - no FlagsClass properties

// MARK: - no signals


public extension FlagsClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GFlagsClass` instance.
    var _ptr: UnsafeMutablePointer<GFlagsClass> { return ptr.assumingMemoryBound(to: GFlagsClass.self) }

    /// Returns the first `GFlagsValue` which is set in `value.`
    func flagsGetFirst(value: CUnsignedInt) -> UnsafeMutablePointer<GFlagsValue>! {
        let rv = g_flags_get_first_value(cast(_ptr), guint(value))
        return cast(rv)
    }

    /// Looks up a `GFlagsValue` by name.
    func flagsGetValueBy(name: UnsafePointer<gchar>) -> UnsafeMutablePointer<GFlagsValue>! {
        let rv = g_flags_get_value_by_name(cast(_ptr), name)
        return cast(rv)
    }

    /// Looks up a `GFlagsValue` by nickname.
    func flagsGetValueBy(nick: UnsafePointer<gchar>) -> UnsafeMutablePointer<GFlagsValue>! {
        let rv = g_flags_get_value_by_nick(cast(_ptr), nick)
        return cast(rv)
    }
}



