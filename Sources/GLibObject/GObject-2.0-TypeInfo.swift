import CGLib
import GLib

// MARK: - TypeInfo Record

/// The `TypeInfoProtocol` protocol exposes the methods and properties of an underlying `GTypeInfo` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeInfo`.
/// Alternatively, use `TypeInfoRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
public protocol TypeInfoProtocol {
    /// Untyped pointer to the underlying `GTypeInfo` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeInfo> { get }
}

/// The `TypeInfoRef` type acts as a lightweight Swift reference to an underlying `GTypeInfo` instance.
/// It exposes methods that can operate on this data type through `TypeInfoProtocol` conformance.
/// Use `TypeInfoRef` only as an `unowned` reference to an existing `GTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
public struct TypeInfoRef: TypeInfoProtocol {
    /// Untyped pointer to the underlying `GTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeInfoRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeInfoProtocol`
    init<T: TypeInfoProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `TypeInfo` type acts as an owner of an underlying `GTypeInfo` instance.
/// It provides the methods that can operate on this data type through `TypeInfoProtocol` conformance.
/// Use `TypeInfo` as a strong reference or owner of a `GTypeInfo` instance.
///
/// This structure is used to provide the type system with the information
/// required to initialize and destruct (finalize) a type's class and
/// its instances.
/// 
/// The initialized structure is passed to the `g_type_register_static()` function
/// (or is copied into the provided `GTypeInfo` structure in the
/// `g_type_plugin_complete_type_info()`). The type system will perform a deep
/// copy of this structure, so its memory does not need to be persistent
/// across invocation of `g_type_register_static()`.
open class TypeInfo: TypeInfoProtocol {
    /// Untyped pointer to the underlying `GTypeInfo` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TypeInfo` instance.
    public init(_ op: UnsafeMutablePointer<GTypeInfo>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypeInfoProtocol`
    /// `GTypeInfo` does not allow reference counting.
    public convenience init<T: TypeInfoProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypeInfo, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeInfo`.
    deinit {
        // no reference counting for GTypeInfo, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeInfo.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeInfo.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeInfoProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeInfo>(opaquePointer))
    }



}

// MARK: - no TypeInfo properties

// MARK: - no signals


public extension TypeInfoProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeInfo` instance.
    var _ptr: UnsafeMutablePointer<GTypeInfo> { return ptr.assumingMemoryBound(to: GTypeInfo.self) }

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
    func enumCompleteTypeInfo(gEnumType g_enum_type: GType, constValues const_values: EnumValueProtocol) {
        g_enum_complete_type_info(g_enum_type, cast(_ptr), cast(const_values.ptr))
    
    }

    /// This function is meant to be called from the `complete_type_info()`
    /// function of a `GTypePlugin` implementation, see the example for
    /// `g_enum_complete_type_info()` above.
    func flagsCompleteTypeInfo(gFlagsType g_flags_type: GType, constValues const_values: FlagsValueProtocol) {
        g_flags_complete_type_info(g_flags_type, cast(_ptr), cast(const_values.ptr))
    
    }

    /// Registers `type_id` as the predefined identifier and `type_name` as the
    /// name of a fundamental type. If `type_id` is already registered, or a
    /// type named `type_name` is already registered, the behaviour is undefined.
    /// The type system uses the information contained in the `GTypeInfo` structure
    /// pointed to by `info` and the `GTypeFundamentalInfo` structure pointed to by
    /// `finfo` to manage the type and its instances. The value of `flags` determines
    /// additional characteristics of the fundamental type.
    func typeRegisterFundamental(typeID type_id: GType, typeName type_name: UnsafePointer<gchar>, finfo: TypeFundamentalInfoProtocol, flags: TypeFlags) -> GType {
        let rv = g_type_register_fundamental(type_id, type_name, cast(_ptr), cast(finfo.ptr), flags)
        return rv
    }

    /// Registers `type_name` as the name of a new static type derived from
    /// `parent_type`. The type system uses the information contained in the
    /// `GTypeInfo` structure pointed to by `info` to manage the type and its
    /// instances (if not abstract). The value of `flags` determines the nature
    /// (e.g. abstract or not) of the type.
    func typeRegisterStatic(parentType parent_type: GType, typeName type_name: UnsafePointer<gchar>, flags: TypeFlags) -> GType {
        let rv = g_type_register_static(parent_type, type_name, cast(_ptr), flags)
        return rv
    }
}



