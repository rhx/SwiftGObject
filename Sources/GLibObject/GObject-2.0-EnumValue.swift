import CGLib
import GLib

// MARK: - EnumValue Record

/// The `EnumValueProtocol` protocol exposes the methods and properties of an underlying `GEnumValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `EnumValue`.
/// Alternatively, use `EnumValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure which contains a single enum value, its name, and its
/// nickname.
public protocol EnumValueProtocol {
    /// Untyped pointer to the underlying `GEnumValue` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GEnumValue` instance.
    var _ptr: UnsafeMutablePointer<GEnumValue> { get }
}

/// The `EnumValueRef` type acts as a lightweight Swift reference to an underlying `GEnumValue` instance.
/// It exposes methods that can operate on this data type through `EnumValueProtocol` conformance.
/// Use `EnumValueRef` only as an `unowned` reference to an existing `GEnumValue` instance.
///
/// A structure which contains a single enum value, its name, and its
/// nickname.
public struct EnumValueRef: EnumValueProtocol {
    /// Untyped pointer to the underlying `GEnumValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension EnumValueRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `EnumValueProtocol`
    init<T: EnumValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `EnumValue` type acts as an owner of an underlying `GEnumValue` instance.
/// It provides the methods that can operate on this data type through `EnumValueProtocol` conformance.
/// Use `EnumValue` as a strong reference or owner of a `GEnumValue` instance.
///
/// A structure which contains a single enum value, its name, and its
/// nickname.
open class EnumValue: EnumValueProtocol {
    /// Untyped pointer to the underlying `GEnumValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GEnumValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `EnumValue` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GEnumValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GEnumValue, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `EnumValueProtocol`
    /// `GEnumValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `EnumValueProtocol`
    public init<T: EnumValueProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GEnumValue, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GEnumValue`.
    deinit {
        // no reference counting for GEnumValue, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GEnumValue, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GEnumValue, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GEnumValue, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `EnumValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GEnumValue, cannot ref(cast(_ptr))
    }



}

// MARK: - no EnumValue properties

// MARK: - no signals


public extension EnumValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GEnumValue` instance.
    var _ptr: UnsafeMutablePointer<GEnumValue> { return ptr.assumingMemoryBound(to: GEnumValue.self) }

    /// This function is meant to be called from the `complete_type_info`
    /// function of a `GTypePlugin` implementation, as in the following
    /// example:
    /// 
    /// (C Language Example):
    /// ```C
    /// static void
    /// my_enum_complete_type_info (GTypePlugin     *plugin,
    ///                             GType            g_type,
    ///                             GTypeInfo       *info,
    ///                             GTypeValueTable *value_table)
    /// {
    ///   static const GEnumValue values[] = {
    ///     { MY_ENUM_FOO, "MY_ENUM_FOO", "foo" },
    ///     { MY_ENUM_BAR, "MY_ENUM_BAR", "bar" },
    ///     { 0, NULL, NULL }
    ///   };
    /// 
    ///   g_enum_complete_type_info (type, info, values);
    /// }
    /// ```
    /// 
    func enumCompleteTypeInfo(gEnumType g_enum_type: GType, info: TypeInfoProtocol) {
        g_enum_complete_type_info(g_enum_type, cast(info.ptr), cast(_ptr))
    
    }

    /// Registers a new static enumeration type with the name `name`.
    /// 
    /// It is normally more convenient to let [glib-mkenums](#glib-mkenums),
    /// generate a `my_enum_get_type()` function from a usual C enumeration
    /// definition  than to write one yourself using `g_enum_register_static()`.
    func enumRegisterStatic(name: UnsafePointer<gchar>) -> GType {
        let rv = g_enum_register_static(name, cast(_ptr))
        return rv
    }
}



