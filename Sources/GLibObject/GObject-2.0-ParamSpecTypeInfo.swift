import CGLib
import GLib

// MARK: - ParamSpecTypeInfo Record

/// The `ParamSpecTypeInfoProtocol` protocol exposes the methods and properties of an underlying `GParamSpecTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecTypeInfo`.
/// Alternatively, use `ParamSpecTypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
public protocol ParamSpecTypeInfoProtocol {
    /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GParamSpecTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo> { get }
}

/// The `ParamSpecTypeInfoRef` type acts as a lightweight Swift reference to an underlying `GParamSpecTypeInfo` instance.
/// It exposes methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfoRef` only as an `unowned` reference to an existing `GParamSpecTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
public struct ParamSpecTypeInfoRef: ParamSpecTypeInfoProtocol {
    /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ParamSpecTypeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ParamSpecTypeInfoProtocol`
    init<T: ParamSpecTypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ParamSpecTypeInfo` type acts as an owner of an underlying `GParamSpecTypeInfo` instance.
/// It provides the methods that can operate on this data type through `ParamSpecTypeInfoProtocol` conformance.
/// Use `ParamSpecTypeInfo` as a strong reference or owner of a `GParamSpecTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a parameter's class and
/// instances thereof.
/// The initialized structure is passed to the `g_param_type_register_static()`
/// The type system will perform a deep copy of this structure, so its memory
/// does not need to be persistent across invocation of
/// `g_param_type_register_static()`.
open class ParamSpecTypeInfo: ParamSpecTypeInfoProtocol {
    /// Untyped pointer to the underlying `GParamSpecTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `ParamSpecTypeInfo` instance.
    public init(_ op: UnsafeMutablePointer<GParamSpecTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ParamSpecTypeInfoProtocol`
    /// `GParamSpecTypeInfo` does not allow reference counting.
    public convenience init<T: ParamSpecTypeInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GParamSpecTypeInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GParamSpecTypeInfo`.
    deinit {
        // no reference counting for GParamSpecTypeInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GParamSpecTypeInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GParamSpecTypeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GParamSpecTypeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecTypeInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GParamSpecTypeInfo>(opaquePointer))
    }



}

// MARK: - no ParamSpecTypeInfo properties

// MARK: - no signals


public extension ParamSpecTypeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GParamSpecTypeInfo> { return ptr.assumingMemoryBound(to: GParamSpecTypeInfo.self) }

    /// Registers `name` as the name of a new static type derived from
    /// `G_TYPE_PARAM`. The type system uses the information contained in
    /// the `GParamSpecTypeInfo` structure pointed to by `info` to manage the
    /// `GParamSpec` type and its instances.
    func paramTypeRegisterStatic(name: UnsafePointer<gchar>) -> GType {
        let rv = g_param_type_register_static(name, cast(_ptr))
        return rv
    }
}



