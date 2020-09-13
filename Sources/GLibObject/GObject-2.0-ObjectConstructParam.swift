import CGLib
import GLib
import GObjectCHelpers

// MARK: - ObjectConstructParam Record

/// The `ObjectConstructParamProtocol` protocol exposes the methods and properties of an underlying `GObjectConstructParam` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ObjectConstructParam`.
/// Alternatively, use `ObjectConstructParamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// The GObjectConstructParam struct is an auxiliary
/// structure used to hand `GParamSpec`/`GValue` pairs to the `constructor` of
/// a `GObjectClass`.
public protocol ObjectConstructParamProtocol {
        /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GObjectConstructParam` instance.
    var _ptr: UnsafeMutablePointer<GObjectConstructParam>! { get }

}

/// The `ObjectConstructParamRef` type acts as a lightweight Swift reference to an underlying `GObjectConstructParam` instance.
/// It exposes methods that can operate on this data type through `ObjectConstructParamProtocol` conformance.
/// Use `ObjectConstructParamRef` only as an `unowned` reference to an existing `GObjectConstructParam` instance.
///
/// The GObjectConstructParam struct is an auxiliary
/// structure used to hand `GParamSpec`/`GValue` pairs to the `constructor` of
/// a `GObjectClass`.
public struct ObjectConstructParamRef: ObjectConstructParamProtocol {
        /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ObjectConstructParamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GObjectConstructParam>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GObjectConstructParam>?) {
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

    /// Reference intialiser for a related type that implements `ObjectConstructParamProtocol`
    @inlinable init<T: ObjectConstructParamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `ObjectConstructParam` type acts as an owner of an underlying `GObjectConstructParam` instance.
/// It provides the methods that can operate on this data type through `ObjectConstructParamProtocol` conformance.
/// Use `ObjectConstructParam` as a strong reference or owner of a `GObjectConstructParam` instance.
///
/// The GObjectConstructParam struct is an auxiliary
/// structure used to hand `GParamSpec`/`GValue` pairs to the `constructor` of
/// a `GObjectClass`.
open class ObjectConstructParam: ObjectConstructParamProtocol {
        /// Untyped pointer to the underlying `GObjectConstructParam` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GObjectConstructParam>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GObjectConstructParam>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GObjectConstructParam` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ObjectConstructParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GObjectConstructParam>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ObjectConstructParamProtocol`
    /// `GObjectConstructParam` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ObjectConstructParamProtocol`
    @inlinable public init<T: ObjectConstructParamProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GObjectConstructParam`.
    deinit {
        // no reference counting for GObjectConstructParam, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ObjectConstructParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GObjectConstructParam, cannot ref(_ptr)
    }



}

// MARK: no ObjectConstructParam properties

// MARK: no ObjectConstructParam signals


// MARK: ObjectConstructParam Record: ObjectConstructParamProtocol extension (methods and fields)
public extension ObjectConstructParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GObjectConstructParam` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GObjectConstructParam>! { return ptr?.assumingMemoryBound(to: GObjectConstructParam.self) }


    /// the `GParamSpec` of the construct parameter
    @inlinable var pspec: ParamSpecRef! {
        /// the `GParamSpec` of the construct parameter
        get {
            let rv = ParamSpecRef(gconstpointer: gconstpointer(_ptr.pointee.pspec))
            return rv
        }
        /// the `GParamSpec` of the construct parameter
         set {
            _ptr.pointee.pspec = UnsafeMutablePointer<GParamSpec>(newValue.param_spec_ptr)
        }
    }

    /// the value to set the parameter to
    @inlinable var value: ValueRef! {
        /// the value to set the parameter to
        get {
            let rv = ValueRef(gconstpointer: gconstpointer(_ptr.pointee.value))
            return rv
        }
        /// the value to set the parameter to
         set {
            _ptr.pointee.value = UnsafeMutablePointer<GValue>(newValue.value_ptr)
        }
    }

}



