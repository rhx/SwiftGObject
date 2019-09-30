import CGLib
import GLib

// MARK: - InterfaceInfo Record

/// The `InterfaceInfoProtocol` protocol exposes the methods and properties of an underlying `GInterfaceInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `InterfaceInfo`.
/// Alternatively, use `InterfaceInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
public protocol InterfaceInfoProtocol {
    /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GInterfaceInfo` instance.
    var _ptr: UnsafeMutablePointer<GInterfaceInfo> { get }
}

/// The `InterfaceInfoRef` type acts as a lightweight Swift reference to an underlying `GInterfaceInfo` instance.
/// It exposes methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfoRef` only as an `unowned` reference to an existing `GInterfaceInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
public struct InterfaceInfoRef: InterfaceInfoProtocol {
    /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension InterfaceInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `InterfaceInfoProtocol`
    init<T: InterfaceInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `InterfaceInfo` type acts as an owner of an underlying `GInterfaceInfo` instance.
/// It provides the methods that can operate on this data type through `InterfaceInfoProtocol` conformance.
/// Use `InterfaceInfo` as a strong reference or owner of a `GInterfaceInfo` instance.
///
/// A structure that provides information to the type system which is
/// used specifically for managing interface types.
open class InterfaceInfo: InterfaceInfoProtocol {
    /// Untyped pointer to the underlying `GInterfaceInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `InterfaceInfo` instance.
    public init(_ op: UnsafeMutablePointer<GInterfaceInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `InterfaceInfoProtocol`
    /// `GInterfaceInfo` does not allow reference counting.
    public convenience init<T: InterfaceInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GInterfaceInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GInterfaceInfo`.
    deinit {
        // no reference counting for GInterfaceInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GInterfaceInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GInterfaceInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `InterfaceInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GInterfaceInfo>(opaquePointer))
    }



}

// MARK: - no InterfaceInfo properties

// MARK: - no signals


public extension InterfaceInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GInterfaceInfo` instance.
    var _ptr: UnsafeMutablePointer<GInterfaceInfo> { return ptr.assumingMemoryBound(to: GInterfaceInfo.self) }

    /// Adds the static `interface_type` to `instantiable_type`.
    /// The information contained in the `GInterfaceInfo` structure
    /// pointed to by `info` is used to manage the relationship.
    func typeAddInterfaceStatic(instanceType instance_type: GType, interfaceType interface_type: GType) {
        g_type_add_interface_static(instance_type, interface_type, cast(_ptr))
    
    }
}



