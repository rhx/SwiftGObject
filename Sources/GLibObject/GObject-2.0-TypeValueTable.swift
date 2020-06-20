import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypeValueTable Record

/// The `TypeValueTableProtocol` protocol exposes the methods and properties of an underlying `GTypeValueTable` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeValueTable`.
/// Alternatively, use `TypeValueTableRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
public protocol TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeValueTable` instance.
    var _ptr: UnsafeMutablePointer<GTypeValueTable> { get }
}

/// The `TypeValueTableRef` type acts as a lightweight Swift reference to an underlying `GTypeValueTable` instance.
/// It exposes methods that can operate on this data type through `TypeValueTableProtocol` conformance.
/// Use `TypeValueTableRef` only as an `unowned` reference to an existing `GTypeValueTable` instance.
///
/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
public struct TypeValueTableRef: TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeValueTableRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeValueTableProtocol`
    init<T: TypeValueTableProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// Returns the location of the `GTypeValueTable` associated with `type`.
    /// 
    /// Note that this function should only be used from source code
    /// that implements or has internal knowledge of the implementation of
    /// `type`.
    static func peek(type: GType) -> TypeValueTableRef! {
        let rv: UnsafeMutablePointer<GTypeValueTable>! = cast(g_type_value_table_peek(type))
        return rv.map { TypeValueTableRef(cast($0)) }
    }
}

/// The `TypeValueTable` type acts as an owner of an underlying `GTypeValueTable` instance.
/// It provides the methods that can operate on this data type through `TypeValueTableProtocol` conformance.
/// Use `TypeValueTable` as a strong reference or owner of a `GTypeValueTable` instance.
///
/// The `GTypeValueTable` provides the functions required by the `GValue`
/// implementation, to serve as a container for values of a type.
open class TypeValueTable: TypeValueTableProtocol {
        /// Untyped pointer to the underlying `GTypeValueTable` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    public init(_ op: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeValueTable` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeValueTable` instance.
    /// - Parameter op: pointer to the underlying object
    public init(retaining op: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }

    /// Reference intialiser for a related type that implements `TypeValueTableProtocol`
    /// `GTypeValueTable` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeValueTableProtocol`
    public init<T: TypeValueTableProtocol>(_ other: T) {
        ptr = UnsafeMutableRawPointer(other._ptr)
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for `GTypeValueTable`.
    deinit {
        // no reference counting for GTypeValueTable, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }


    /// Returns the location of the `GTypeValueTable` associated with `type`.
    /// 
    /// Note that this function should only be used from source code
    /// that implements or has internal knowledge of the implementation of
    /// `type`.
    public static func peek(type: GType) -> TypeValueTable! {
        let rv: UnsafeMutablePointer<GTypeValueTable>! = cast(g_type_value_table_peek(type))
        return rv.map { TypeValueTable(cast($0)) }
    }

}

// MARK: no TypeValueTable properties

// MARK: no TypeValueTable signals


// MARK: TypeValueTable Record: TypeValueTableProtocol extension (methods and fields)
public extension TypeValueTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeValueTable` instance.
    var _ptr: UnsafeMutablePointer<GTypeValueTable> { return ptr.assumingMemoryBound(to: GTypeValueTable.self) }


    // var valueInit is unavailable because value_init is void

    // var valueFree is unavailable because value_free is void

    // var valueCopy is unavailable because value_copy is void

    // var valuePeekPointer is unavailable because value_peek_pointer is void

    /// A string format describing how to collect the contents of
    ///  this value bit-by-bit. Each character in the format represents
    ///  an argument to be collected, and the characters themselves indicate
    ///  the type of the argument. Currently supported arguments are:
    ///  - 'i' - Integers. passed as collect_values[].v_int.
    ///  - 'l' - Longs. passed as collect_values[].v_long.
    ///  - 'd' - Doubles. passed as collect_values[].v_double.
    ///  - 'p' - Pointers. passed as collect_values[].v_pointer.
    ///  It should be noted that for variable argument list construction,
    ///  ANSI C promotes every type smaller than an integer to an int, and
    ///  floats to doubles. So for collection of short int or char, 'i'
    ///  needs to be used, and for collection of floats 'd'.
    var collectFormat: UnsafePointer<CChar> {
        /// A string format describing how to collect the contents of
        ///  this value bit-by-bit. Each character in the format represents
        ///  an argument to be collected, and the characters themselves indicate
        ///  the type of the argument. Currently supported arguments are:
        ///  - 'i' - Integers. passed as collect_values[].v_int.
        ///  - 'l' - Longs. passed as collect_values[].v_long.
        ///  - 'd' - Doubles. passed as collect_values[].v_double.
        ///  - 'p' - Pointers. passed as collect_values[].v_pointer.
        ///  It should be noted that for variable argument list construction,
        ///  ANSI C promotes every type smaller than an integer to an int, and
        ///  floats to doubles. So for collection of short int or char, 'i'
        ///  needs to be used, and for collection of floats 'd'.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.collect_format)
            return rv
        }
        /// A string format describing how to collect the contents of
        ///  this value bit-by-bit. Each character in the format represents
        ///  an argument to be collected, and the characters themselves indicate
        ///  the type of the argument. Currently supported arguments are:
        ///  - 'i' - Integers. passed as collect_values[].v_int.
        ///  - 'l' - Longs. passed as collect_values[].v_long.
        ///  - 'd' - Doubles. passed as collect_values[].v_double.
        ///  - 'p' - Pointers. passed as collect_values[].v_pointer.
        ///  It should be noted that for variable argument list construction,
        ///  ANSI C promotes every type smaller than an integer to an int, and
        ///  floats to doubles. So for collection of short int or char, 'i'
        ///  needs to be used, and for collection of floats 'd'.
         set {
            _ptr.pointee.collect_format = cast(newValue)
        }
    }

    // var collectValue is unavailable because collect_value is void

    /// Format description of the arguments to collect for `lcopy_value`,
    ///  analogous to `collect_format`. Usually, `lcopy_format` string consists
    ///  only of 'p's to provide `lcopy_value()` with pointers to storage locations.
    var lcopyFormat: UnsafePointer<CChar> {
        /// Format description of the arguments to collect for `lcopy_value`,
        ///  analogous to `collect_format`. Usually, `lcopy_format` string consists
        ///  only of 'p's to provide `lcopy_value()` with pointers to storage locations.
        get {
            let rv: UnsafePointer<CChar> = cast(_ptr.pointee.lcopy_format)
            return rv
        }
        /// Format description of the arguments to collect for `lcopy_value`,
        ///  analogous to `collect_format`. Usually, `lcopy_format` string consists
        ///  only of 'p's to provide `lcopy_value()` with pointers to storage locations.
         set {
            _ptr.pointee.lcopy_format = cast(newValue)
        }
    }

    // var lcopyValue is unavailable because lcopy_value is void

}



