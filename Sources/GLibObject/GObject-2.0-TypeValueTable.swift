import CGLib
import GLib

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
        let rv = g_type_value_table_peek(type)
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
    /// Ownership is transferred to the `TypeValueTable` instance.
    public init(_ op: UnsafeMutablePointer<GTypeValueTable>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypeValueTableProtocol`
    /// `GTypeValueTable` does not allow reference counting.
    public convenience init<T: TypeValueTableProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypeValueTable, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GTypeValueTable`.
    deinit {
        // no reference counting for GTypeValueTable, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeValueTable.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeValueTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeValueTable.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeValueTableProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeValueTable>(opaquePointer))
    }


    /// Returns the location of the `GTypeValueTable` associated with `type`.
    /// 
    /// Note that this function should only be used from source code
    /// that implements or has internal knowledge of the implementation of
    /// `type`.
    public static func peek(type: GType) -> TypeValueTable! {
        let rv = g_type_value_table_peek(type)
        return rv.map { TypeValueTable(cast($0)) }
    }

}

// MARK: - no TypeValueTable properties

// MARK: - no signals


public extension TypeValueTableProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeValueTable` instance.
    var _ptr: UnsafeMutablePointer<GTypeValueTable> { return ptr.assumingMemoryBound(to: GTypeValueTable.self) }

}



