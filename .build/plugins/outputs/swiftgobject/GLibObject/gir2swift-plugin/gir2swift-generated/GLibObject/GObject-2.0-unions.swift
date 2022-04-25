import CGLib
import GLib
import GObjectCHelpers

// MARK: - TypeCValue Union


///
/// The `TypeCValueProtocol` protocol exposes the methods and properties of an underlying `GTypeCValue` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeCValue`.
/// Alternatively, use `TypeCValueRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeCValueProtocol {
        /// Untyped pointer to the underlying `GTypeCValue` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeCValue` instance.
    var _ptr: UnsafeMutablePointer<GTypeCValue>! { get }

    /// Required Initialiser for types conforming to `TypeCValueProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `TypeCValueRef` type acts as a lightweight Swift reference to an underlying `GTypeCValue` instance.
/// It exposes methods that can operate on this data type through `TypeCValueProtocol` conformance.
/// Use `TypeCValueRef` only as an `unowned` reference to an existing `GTypeCValue` instance.
///
public struct TypeCValueRef: TypeCValueProtocol {
        /// Untyped pointer to the underlying `GTypeCValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeCValueRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeCValue>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeCValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeCValue>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeCValue>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `TypeCValueProtocol`
    @inlinable init<T: TypeCValueProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `TypeCValue` type acts as an owner of an underlying `GTypeCValue` instance.
/// It provides the methods that can operate on this data type through `TypeCValueProtocol` conformance.
/// Use `TypeCValue` as a strong reference or owner of a `GTypeCValue` instance.
///
open class TypeCValue: TypeCValueProtocol {
        /// Untyped pointer to the underlying `GTypeCValue` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeCValue>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeCValue>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeCValue>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeCValue>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GTypeCValue` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `TypeCValue` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeCValue>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GTypeCValue, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `TypeCValueProtocol`
    /// `GTypeCValue` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `TypeCValueProtocol`
    @inlinable public init<T: TypeCValueProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GTypeCValue, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GTypeCValue`.
    deinit {
        // no reference counting for GTypeCValue, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GTypeCValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GTypeCValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GTypeCValue, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeCValueProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GTypeCValue, cannot ref(_ptr)
    }



}

// MARK: no TypeCValue properties

// MARK: no TypeCValue signals

// MARK: TypeCValue has no signals
// MARK: TypeCValue Union: TypeCValueProtocol extension (methods and fields)
public extension TypeCValueProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeCValue` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GTypeCValue>! { return ptr?.assumingMemoryBound(to: GTypeCValue.self) }



}



// MARK: - _Value__data__union Union


///
/// The `_Value__data__unionProtocol` protocol exposes the methods and properties of an underlying `_Value__data__union` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `_Value__data__union`.
/// Alternatively, use `_Value__data__unionRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol _Value__data__unionProtocol {
        /// Untyped pointer to the underlying `_Value__data__union` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `_Value__data__union` instance.
    var _ptr: UnsafeMutablePointer<GObjectTypeValueUnion>! { get }

    /// Required Initialiser for types conforming to `_Value__data__unionProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `_Value__data__unionRef` type acts as a lightweight Swift reference to an underlying `_Value__data__union` instance.
/// It exposes methods that can operate on this data type through `_Value__data__unionProtocol` conformance.
/// Use `_Value__data__unionRef` only as an `unowned` reference to an existing `_Value__data__union` instance.
///
public struct _Value__data__unionRef: _Value__data__unionProtocol {
        /// Untyped pointer to the underlying `_Value__data__union` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension _Value__data__unionRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GObjectTypeValueUnion>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GObjectTypeValueUnion>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GObjectTypeValueUnion>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GObjectTypeValueUnion>?) {
        guard let p = UnsafeMutablePointer(mutating: maybePointer) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional `gpointer`
    @inlinable init!(gpointer g: gpointer?) {
        guard let p = g else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable `gconstpointer`
    @inlinable init!(gconstpointer g: gconstpointer?) {
        guard let p = UnsafeMutableRawPointer(mutating: g) else { return nil }
        ptr = p
    }

    /// Reference intialiser for a related type that implements `_Value__data__unionProtocol`
    @inlinable init<T: _Value__data__unionProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `_Value__data__union` type acts as an owner of an underlying `_Value__data__union` instance.
/// It provides the methods that can operate on this data type through `_Value__data__unionProtocol` conformance.
/// Use `_Value__data__union` as a strong reference or owner of a `_Value__data__union` instance.
///
open class _Value__data__union: _Value__data__unionProtocol {
        /// Untyped pointer to the underlying `_Value__data__union` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GObjectTypeValueUnion>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GObjectTypeValueUnion>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GObjectTypeValueUnion>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GObjectTypeValueUnion>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `_Value__data__union` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `_Value__data__union` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GObjectTypeValueUnion>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for _Value__data__union, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `_Value__data__unionProtocol`
    /// `_Value__data__union` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `_Value__data__unionProtocol`
    @inlinable public init<T: _Value__data__unionProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for _Value__data__union, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `_Value__data__union`.
    deinit {
        // no reference counting for _Value__data__union, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for _Value__data__union, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for _Value__data__union, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for _Value__data__union, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `_Value__data__unionProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for _Value__data__union, cannot ref(_ptr)
    }



}

// MARK: no _Value__data__union properties

// MARK: no _Value__data__union signals

// MARK: _Value__data__union has no signals
// MARK: _Value__data__union Union: _Value__data__unionProtocol extension (methods and fields)
public extension _Value__data__unionProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `_Value__data__union` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GObjectTypeValueUnion>! { return ptr?.assumingMemoryBound(to: GObjectTypeValueUnion.self) }


    @inlinable var vInt: gint {
        get {
            let rv = _ptr.pointee.v_int
    return rv
        }
         set {
            _ptr.pointee.v_int = newValue
        }
    }

    @inlinable var vUint: guint {
        get {
            let rv = _ptr.pointee.v_uint
    return rv
        }
         set {
            _ptr.pointee.v_uint = newValue
        }
    }

    @inlinable var vLong: glong {
        get {
            let rv = _ptr.pointee.v_long
    return rv
        }
         set {
            _ptr.pointee.v_long = newValue
        }
    }

    @inlinable var vUlong: gulong {
        get {
            let rv = _ptr.pointee.v_ulong
    return rv
        }
         set {
            _ptr.pointee.v_ulong = newValue
        }
    }

    @inlinable var vInt64: gint64 {
        get {
            let rv = _ptr.pointee.v_int64
    return rv
        }
         set {
            _ptr.pointee.v_int64 = newValue
        }
    }

    @inlinable var vUint64: guint64 {
        get {
            let rv = _ptr.pointee.v_uint64
    return rv
        }
         set {
            _ptr.pointee.v_uint64 = newValue
        }
    }

    @inlinable var vFloat: gfloat {
        get {
            let rv = _ptr.pointee.v_float
    return rv
        }
         set {
            _ptr.pointee.v_float = newValue
        }
    }

    @inlinable var vDouble: gdouble {
        get {
            let rv = _ptr.pointee.v_double
    return rv
        }
         set {
            _ptr.pointee.v_double = newValue
        }
    }

    @inlinable var vPointer: gpointer? {
        get {
            let rv = _ptr.pointee.v_pointer
    return rv
        }
         set {
            _ptr.pointee.v_pointer = newValue
        }
    }

}

