import CGLib
import GLib

// MARK: - InitiallyUnownedClass Record

/// The `InitiallyUnownedClassProtocol` protocol exposes the methods and properties of an underlying `GInitiallyUnownedClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InitiallyUnownedClass`.
/// Alternatively, use `InitiallyUnownedClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The class structure for the GInitiallyUnowned type.
public protocol InitiallyUnownedClassProtocol {
    /// Untyped pointer to the underlying `GInitiallyUnownedClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInitiallyUnownedClass` instance.
    var _ptr: UnsafeMutablePointer<GInitiallyUnownedClass> { get }
}

/// The `InitiallyUnownedClassRef` type acts as a lightweight Swift reference to an underlying `GInitiallyUnownedClass` instance.
/// It exposes methods that can operate on this data type through `InitiallyUnownedClassProtocol` conformance.
/// Use `InitiallyUnownedClassRef` only as an `unowned` reference to an existing `GInitiallyUnownedClass` instance.
///
/// The class structure for the GInitiallyUnowned type.
public struct InitiallyUnownedClassRef: InitiallyUnownedClassProtocol {
    /// Untyped pointer to the underlying `GInitiallyUnownedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InitiallyUnownedClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInitiallyUnownedClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InitiallyUnownedClassProtocol`
    init<T: InitiallyUnownedClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InitiallyUnownedClass` type acts as an owner of an underlying `GInitiallyUnownedClass` instance.
/// It provides the methods that can operate on this data type through `InitiallyUnownedClassProtocol` conformance.
/// Use `InitiallyUnownedClass` as a strong reference or owner of a `GInitiallyUnownedClass` instance.
///
/// The class structure for the GInitiallyUnowned type.
open class InitiallyUnownedClass: InitiallyUnownedClassProtocol {
    /// Untyped pointer to the underlying `GInitiallyUnownedClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InitiallyUnownedClass` instance.
    public init(_ op: UnsafeMutablePointer<GInitiallyUnownedClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InitiallyUnownedClassProtocol`
    /// `GInitiallyUnownedClass` does not allow reference counting.
    public convenience init<T: InitiallyUnownedClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInitiallyUnownedClass, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInitiallyUnownedClass`.
    deinit {
        // no reference counting for GInitiallyUnownedClass, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInitiallyUnownedClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInitiallyUnownedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInitiallyUnownedClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InitiallyUnownedClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInitiallyUnownedClass>(opaquePointer))
    }



}

// MARK: - no InitiallyUnownedClass properties

// MARK: - no signals


public extension InitiallyUnownedClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInitiallyUnownedClass` instance.
    var _ptr: UnsafeMutablePointer<GInitiallyUnownedClass> { return ptr.assumingMemoryBound(to: GInitiallyUnownedClass.self) }

}



