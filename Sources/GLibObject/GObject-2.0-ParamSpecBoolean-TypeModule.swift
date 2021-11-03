import CGLib
import GLib
import GObjectCHelpers

// MARK: - ParamSpecBoolean Class

/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
///
/// The `ParamSpecBooleanProtocol` protocol exposes the methods and properties of an underlying `GParamSpecBoolean` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecBoolean`.
/// Alternatively, use `ParamSpecBooleanRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecBooleanProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoolean` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecBoolean` instance.
    var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean>! { get }

    /// Required Initialiser for types conforming to `ParamSpecBooleanProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
///
/// The `ParamSpecBooleanRef` type acts as a lightweight Swift reference to an underlying `GParamSpecBoolean` instance.
/// It exposes methods that can operate on this data type through `ParamSpecBooleanProtocol` conformance.
/// Use `ParamSpecBooleanRef` only as an `unowned` reference to an existing `GParamSpecBoolean` instance.
///
public struct ParamSpecBooleanRef: ParamSpecBooleanProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoolean` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_boolean_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecBooleanRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecBoolean>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecBoolean>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecBoolean>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecBoolean>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecBooleanProtocol`
    @inlinable init<T: ParamSpecBooleanProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for boolean properties.
///
/// The `ParamSpecBoolean` type acts as a reference-counted owner of an underlying `GParamSpecBoolean` instance.
/// It provides the methods that can operate on this data type through `ParamSpecBooleanProtocol` conformance.
/// Use `ParamSpecBoolean` as a strong reference or owner of a `GParamSpecBoolean` instance.
///
open class ParamSpecBoolean: ParamSpec, ParamSpecBooleanProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecBoolean>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecBoolean>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecBoolean>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecBoolean`.
    /// i.e., ownership is transferred to the `ParamSpecBoolean` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecBoolean>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecBooleanProtocol`
    /// Will retain `GParamSpecBoolean`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecBooleanProtocol`
    @inlinable public init<T: ParamSpecBooleanProtocol>(paramSpecBoolean other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBooleanProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecBoolean properties

// MARK: no ParamSpecBoolean signals

// MARK: ParamSpecBoolean has no signals
// MARK: ParamSpecBoolean Class: ParamSpecBooleanProtocol extension (methods and fields)
public extension ParamSpecBooleanProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoolean` instance.
    @inlinable var param_spec_boolean_ptr: UnsafeMutablePointer<GParamSpecBoolean>! { return ptr?.assumingMemoryBound(to: GParamSpecBoolean.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_boolean_ptr.pointee.parent_instance
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gboolean {
        /// default value for the property specified
        get {
            let rv = param_spec_boolean_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecBoxed Class

/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
///
/// The `ParamSpecBoxedProtocol` protocol exposes the methods and properties of an underlying `GParamSpecBoxed` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecBoxed`.
/// Alternatively, use `ParamSpecBoxedRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecBoxedProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoxed` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecBoxed` instance.
    var param_spec_boxed_ptr: UnsafeMutablePointer<GParamSpecBoxed>! { get }

    /// Required Initialiser for types conforming to `ParamSpecBoxedProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
///
/// The `ParamSpecBoxedRef` type acts as a lightweight Swift reference to an underlying `GParamSpecBoxed` instance.
/// It exposes methods that can operate on this data type through `ParamSpecBoxedProtocol` conformance.
/// Use `ParamSpecBoxedRef` only as an `unowned` reference to an existing `GParamSpecBoxed` instance.
///
public struct ParamSpecBoxedRef: ParamSpecBoxedProtocol {
        /// Untyped pointer to the underlying `GParamSpecBoxed` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_boxed_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecBoxedRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecBoxed>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecBoxed>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecBoxed>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecBoxed>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecBoxedProtocol`
    @inlinable init<T: ParamSpecBoxedProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for boxed properties.
///
/// The `ParamSpecBoxed` type acts as a reference-counted owner of an underlying `GParamSpecBoxed` instance.
/// It provides the methods that can operate on this data type through `ParamSpecBoxedProtocol` conformance.
/// Use `ParamSpecBoxed` as a strong reference or owner of a `GParamSpecBoxed` instance.
///
open class ParamSpecBoxed: ParamSpec, ParamSpecBoxedProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecBoxed>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecBoxed>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecBoxed>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecBoxed>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecBoxed`.
    /// i.e., ownership is transferred to the `ParamSpecBoxed` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecBoxed>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecBoxedProtocol`
    /// Will retain `GParamSpecBoxed`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecBoxedProtocol`
    @inlinable public init<T: ParamSpecBoxedProtocol>(paramSpecBoxed other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecBoxedProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecBoxed properties

// MARK: no ParamSpecBoxed signals

// MARK: ParamSpecBoxed has no signals
// MARK: ParamSpecBoxed Class: ParamSpecBoxedProtocol extension (methods and fields)
public extension ParamSpecBoxedProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecBoxed` instance.
    @inlinable var param_spec_boxed_ptr: UnsafeMutablePointer<GParamSpecBoxed>! { return ptr?.assumingMemoryBound(to: GParamSpecBoxed.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_boxed_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ParamSpecChar Class

/// A `GParamSpec` derived structure that contains the meta data for character properties.
///
/// The `ParamSpecCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecChar`.
/// Alternatively, use `ParamSpecCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecCharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecChar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecChar` instance.
    var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar>! { get }

    /// Required Initialiser for types conforming to `ParamSpecCharProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for character properties.
///
/// The `ParamSpecCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecCharRef` only as an `unowned` reference to an existing `GParamSpecChar` instance.
///
public struct ParamSpecCharRef: ParamSpecCharProtocol {
        /// Untyped pointer to the underlying `GParamSpecChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_char_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecCharRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecChar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecChar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecChar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecChar>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    @inlinable init<T: ParamSpecCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for character properties.
///
/// The `ParamSpecChar` type acts as a reference-counted owner of an underlying `GParamSpecChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecCharProtocol` conformance.
/// Use `ParamSpecChar` as a strong reference or owner of a `GParamSpecChar` instance.
///
open class ParamSpecChar: ParamSpec, ParamSpecCharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecChar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecChar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecChar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecChar`.
    /// i.e., ownership is transferred to the `ParamSpecChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecChar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecCharProtocol`
    /// Will retain `GParamSpecChar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecCharProtocol`
    @inlinable public init<T: ParamSpecCharProtocol>(paramSpecChar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecChar properties

// MARK: no ParamSpecChar signals

// MARK: ParamSpecChar has no signals
// MARK: ParamSpecChar Class: ParamSpecCharProtocol extension (methods and fields)
public extension ParamSpecCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecChar` instance.
    @inlinable var param_spec_char_ptr: UnsafeMutablePointer<GParamSpecChar>! { return ptr?.assumingMemoryBound(to: GParamSpecChar.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_char_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gint8 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_char_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gint8 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_char_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint8 {
        /// default value for the property specified
        get {
            let rv = param_spec_char_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecDouble Class

/// A `GParamSpec` derived structure that contains the meta data for double properties.
///
/// The `ParamSpecDoubleProtocol` protocol exposes the methods and properties of an underlying `GParamSpecDouble` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecDouble`.
/// Alternatively, use `ParamSpecDoubleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecDoubleProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecDouble` instance.
    var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble>! { get }

    /// Required Initialiser for types conforming to `ParamSpecDoubleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for double properties.
///
/// The `ParamSpecDoubleRef` type acts as a lightweight Swift reference to an underlying `GParamSpecDouble` instance.
/// It exposes methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDoubleRef` only as an `unowned` reference to an existing `GParamSpecDouble` instance.
///
public struct ParamSpecDoubleRef: ParamSpecDoubleProtocol {
        /// Untyped pointer to the underlying `GParamSpecDouble` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_double_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecDoubleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecDouble>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecDouble>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecDouble>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecDouble>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    @inlinable init<T: ParamSpecDoubleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for double properties.
///
/// The `ParamSpecDouble` type acts as a reference-counted owner of an underlying `GParamSpecDouble` instance.
/// It provides the methods that can operate on this data type through `ParamSpecDoubleProtocol` conformance.
/// Use `ParamSpecDouble` as a strong reference or owner of a `GParamSpecDouble` instance.
///
open class ParamSpecDouble: ParamSpec, ParamSpecDoubleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecDouble>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecDouble>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecDouble>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecDouble`.
    /// i.e., ownership is transferred to the `ParamSpecDouble` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecDouble>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecDoubleProtocol`
    /// Will retain `GParamSpecDouble`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecDoubleProtocol`
    @inlinable public init<T: ParamSpecDoubleProtocol>(paramSpecDouble other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecDoubleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecDouble properties

// MARK: no ParamSpecDouble signals

// MARK: ParamSpecDouble has no signals
// MARK: ParamSpecDouble Class: ParamSpecDoubleProtocol extension (methods and fields)
public extension ParamSpecDoubleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecDouble` instance.
    @inlinable var param_spec_double_ptr: UnsafeMutablePointer<GParamSpecDouble>! { return ptr?.assumingMemoryBound(to: GParamSpecDouble.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_double_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gdouble {
        /// minimum value for the property specified
        get {
            let rv = param_spec_double_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gdouble {
        /// maximum value for the property specified
        get {
            let rv = param_spec_double_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gdouble {
        /// default value for the property specified
        get {
            let rv = param_spec_double_ptr.pointee.default_value
            return rv
        }
    }

    /// values closer than `epsilon` will be considered identical
    ///  by `g_param_values_cmp()`; the default value is 1e-90.
    @inlinable var epsilon: gdouble {
        /// values closer than `epsilon` will be considered identical
        ///  by `g_param_values_cmp()`; the default value is 1e-90.
        get {
            let rv = param_spec_double_ptr.pointee.epsilon
            return rv
        }
    }

}



// MARK: - ParamSpecEnum Class

/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
///
/// The `ParamSpecEnumProtocol` protocol exposes the methods and properties of an underlying `GParamSpecEnum` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecEnum`.
/// Alternatively, use `ParamSpecEnumRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecEnumProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecEnum` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecEnum` instance.
    var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum>! { get }

    /// Required Initialiser for types conforming to `ParamSpecEnumProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
///
/// The `ParamSpecEnumRef` type acts as a lightweight Swift reference to an underlying `GParamSpecEnum` instance.
/// It exposes methods that can operate on this data type through `ParamSpecEnumProtocol` conformance.
/// Use `ParamSpecEnumRef` only as an `unowned` reference to an existing `GParamSpecEnum` instance.
///
public struct ParamSpecEnumRef: ParamSpecEnumProtocol {
        /// Untyped pointer to the underlying `GParamSpecEnum` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_enum_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecEnumRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecEnum>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecEnum>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecEnum>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecEnum>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecEnumProtocol`
    @inlinable init<T: ParamSpecEnumProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for enum
/// properties.
///
/// The `ParamSpecEnum` type acts as a reference-counted owner of an underlying `GParamSpecEnum` instance.
/// It provides the methods that can operate on this data type through `ParamSpecEnumProtocol` conformance.
/// Use `ParamSpecEnum` as a strong reference or owner of a `GParamSpecEnum` instance.
///
open class ParamSpecEnum: ParamSpec, ParamSpecEnumProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecEnum>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecEnum>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecEnum>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecEnum`.
    /// i.e., ownership is transferred to the `ParamSpecEnum` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecEnum>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecEnumProtocol`
    /// Will retain `GParamSpecEnum`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecEnumProtocol`
    @inlinable public init<T: ParamSpecEnumProtocol>(paramSpecEnum other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecEnumProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecEnum properties

// MARK: no ParamSpecEnum signals

// MARK: ParamSpecEnum has no signals
// MARK: ParamSpecEnum Class: ParamSpecEnumProtocol extension (methods and fields)
public extension ParamSpecEnumProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecEnum` instance.
    @inlinable var param_spec_enum_ptr: UnsafeMutablePointer<GParamSpecEnum>! { return ptr?.assumingMemoryBound(to: GParamSpecEnum.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_enum_ptr.pointee.parent_instance
            return rv
        }
    }

    /// the `GEnumClass` for the enum
    @inlinable var enumClass: EnumClassRef! {
        /// the `GEnumClass` for the enum
        get {
            let rv = EnumClassRef(gconstpointer: gconstpointer(param_spec_enum_ptr.pointee.enum_class))
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint {
        /// default value for the property specified
        get {
            let rv = param_spec_enum_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecFlags Class

/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
///
/// The `ParamSpecFlagsProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFlags` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFlags`.
/// Alternatively, use `ParamSpecFlagsRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecFlagsProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecFlags` instance.
    var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags>! { get }

    /// Required Initialiser for types conforming to `ParamSpecFlagsProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
///
/// The `ParamSpecFlagsRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFlags` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlagsRef` only as an `unowned` reference to an existing `GParamSpecFlags` instance.
///
public struct ParamSpecFlagsRef: ParamSpecFlagsProtocol {
        /// Untyped pointer to the underlying `GParamSpecFlags` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_flags_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecFlagsRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecFlags>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecFlags>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecFlags>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecFlags>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    @inlinable init<T: ParamSpecFlagsProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for flags
/// properties.
///
/// The `ParamSpecFlags` type acts as a reference-counted owner of an underlying `GParamSpecFlags` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFlagsProtocol` conformance.
/// Use `ParamSpecFlags` as a strong reference or owner of a `GParamSpecFlags` instance.
///
open class ParamSpecFlags: ParamSpec, ParamSpecFlagsProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecFlags>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecFlags>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecFlags>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecFlags`.
    /// i.e., ownership is transferred to the `ParamSpecFlags` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecFlags>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecFlagsProtocol`
    /// Will retain `GParamSpecFlags`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecFlagsProtocol`
    @inlinable public init<T: ParamSpecFlagsProtocol>(paramSpecFlags other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFlagsProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecFlags properties

// MARK: no ParamSpecFlags signals

// MARK: ParamSpecFlags has no signals
// MARK: ParamSpecFlags Class: ParamSpecFlagsProtocol extension (methods and fields)
public extension ParamSpecFlagsProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFlags` instance.
    @inlinable var param_spec_flags_ptr: UnsafeMutablePointer<GParamSpecFlags>! { return ptr?.assumingMemoryBound(to: GParamSpecFlags.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_flags_ptr.pointee.parent_instance
            return rv
        }
    }

    /// the `GFlagsClass` for the flags
    @inlinable var flagsClass: FlagsClassRef! {
        /// the `GFlagsClass` for the flags
        get {
            let rv = FlagsClassRef(gconstpointer: gconstpointer(param_spec_flags_ptr.pointee.flags_class))
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint {
        /// default value for the property specified
        get {
            let rv = param_spec_flags_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecFloat Class

/// A `GParamSpec` derived structure that contains the meta data for float properties.
///
/// The `ParamSpecFloatProtocol` protocol exposes the methods and properties of an underlying `GParamSpecFloat` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecFloat`.
/// Alternatively, use `ParamSpecFloatRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecFloatProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecFloat` instance.
    var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat>! { get }

    /// Required Initialiser for types conforming to `ParamSpecFloatProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for float properties.
///
/// The `ParamSpecFloatRef` type acts as a lightweight Swift reference to an underlying `GParamSpecFloat` instance.
/// It exposes methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloatRef` only as an `unowned` reference to an existing `GParamSpecFloat` instance.
///
public struct ParamSpecFloatRef: ParamSpecFloatProtocol {
        /// Untyped pointer to the underlying `GParamSpecFloat` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_float_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecFloatRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecFloat>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecFloat>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecFloat>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecFloat>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    @inlinable init<T: ParamSpecFloatProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for float properties.
///
/// The `ParamSpecFloat` type acts as a reference-counted owner of an underlying `GParamSpecFloat` instance.
/// It provides the methods that can operate on this data type through `ParamSpecFloatProtocol` conformance.
/// Use `ParamSpecFloat` as a strong reference or owner of a `GParamSpecFloat` instance.
///
open class ParamSpecFloat: ParamSpec, ParamSpecFloatProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecFloat>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecFloat>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecFloat>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecFloat`.
    /// i.e., ownership is transferred to the `ParamSpecFloat` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecFloat>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecFloatProtocol`
    /// Will retain `GParamSpecFloat`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecFloatProtocol`
    @inlinable public init<T: ParamSpecFloatProtocol>(paramSpecFloat other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecFloatProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecFloat properties

// MARK: no ParamSpecFloat signals

// MARK: ParamSpecFloat has no signals
// MARK: ParamSpecFloat Class: ParamSpecFloatProtocol extension (methods and fields)
public extension ParamSpecFloatProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecFloat` instance.
    @inlinable var param_spec_float_ptr: UnsafeMutablePointer<GParamSpecFloat>! { return ptr?.assumingMemoryBound(to: GParamSpecFloat.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_float_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gfloat {
        /// minimum value for the property specified
        get {
            let rv = param_spec_float_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gfloat {
        /// maximum value for the property specified
        get {
            let rv = param_spec_float_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gfloat {
        /// default value for the property specified
        get {
            let rv = param_spec_float_ptr.pointee.default_value
            return rv
        }
    }

    /// values closer than `epsilon` will be considered identical
    ///  by `g_param_values_cmp()`; the default value is 1e-30.
    @inlinable var epsilon: gfloat {
        /// values closer than `epsilon` will be considered identical
        ///  by `g_param_values_cmp()`; the default value is 1e-30.
        get {
            let rv = param_spec_float_ptr.pointee.epsilon
            return rv
        }
    }

}



// MARK: - ParamSpecGType Class

/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
///
/// The `ParamSpecGTypeProtocol` protocol exposes the methods and properties of an underlying `GParamSpecGType` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecGType`.
/// Alternatively, use `ParamSpecGTypeRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecGTypeProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecGType` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecGType` instance.
    var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType>! { get }

    /// Required Initialiser for types conforming to `ParamSpecGTypeProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
///
/// The `ParamSpecGTypeRef` type acts as a lightweight Swift reference to an underlying `GParamSpecGType` instance.
/// It exposes methods that can operate on this data type through `ParamSpecGTypeProtocol` conformance.
/// Use `ParamSpecGTypeRef` only as an `unowned` reference to an existing `GParamSpecGType` instance.
///
public struct ParamSpecGTypeRef: ParamSpecGTypeProtocol {
        /// Untyped pointer to the underlying `GParamSpecGType` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_gtype_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecGTypeRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecGType>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecGType>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecGType>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecGType>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecGTypeProtocol`
    @inlinable init<T: ParamSpecGTypeProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `GType` properties.
///
/// The `ParamSpecGType` type acts as a reference-counted owner of an underlying `GParamSpecGType` instance.
/// It provides the methods that can operate on this data type through `ParamSpecGTypeProtocol` conformance.
/// Use `ParamSpecGType` as a strong reference or owner of a `GParamSpecGType` instance.
///
open class ParamSpecGType: ParamSpec, ParamSpecGTypeProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecGType>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecGType>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecGType>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecGType`.
    /// i.e., ownership is transferred to the `ParamSpecGType` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecGType>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecGTypeProtocol`
    /// Will retain `GParamSpecGType`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecGTypeProtocol`
    @inlinable public init<T: ParamSpecGTypeProtocol>(paramSpecGType other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecGTypeProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecGType properties

// MARK: no ParamSpecGType signals

// MARK: ParamSpecGType has no signals
// MARK: ParamSpecGType Class: ParamSpecGTypeProtocol extension (methods and fields)
public extension ParamSpecGTypeProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecGType` instance.
    @inlinable var param_spec_gtype_ptr: UnsafeMutablePointer<GParamSpecGType>! { return ptr?.assumingMemoryBound(to: GParamSpecGType.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_gtype_ptr.pointee.parent_instance
            return rv
        }
    }

    /// a `GType` whose subtypes can occur as values
    @inlinable var isAType: GType {
        /// a `GType` whose subtypes can occur as values
        get {
            let rv = param_spec_gtype_ptr.pointee.is_a_type
            return rv
        }
    }

}



// MARK: - ParamSpecInt Class

/// A `GParamSpec` derived structure that contains the meta data for integer properties.
///
/// The `ParamSpecIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt`.
/// Alternatively, use `ParamSpecIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecIntProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecInt` instance.
    var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt>! { get }

    /// Required Initialiser for types conforming to `ParamSpecIntProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for integer properties.
///
/// The `ParamSpecIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecIntRef` only as an `unowned` reference to an existing `GParamSpecInt` instance.
///
public struct ParamSpecIntRef: ParamSpecIntProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecIntRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecInt>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecInt>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecInt>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    @inlinable init<T: ParamSpecIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for integer properties.
///
/// The `ParamSpecInt` type acts as a reference-counted owner of an underlying `GParamSpecInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecIntProtocol` conformance.
/// Use `ParamSpecInt` as a strong reference or owner of a `GParamSpecInt` instance.
///
open class ParamSpecInt: ParamSpec, ParamSpecIntProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecInt>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecInt>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecInt>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecInt`.
    /// i.e., ownership is transferred to the `ParamSpecInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecInt>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecIntProtocol`
    /// Will retain `GParamSpecInt`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecIntProtocol`
    @inlinable public init<T: ParamSpecIntProtocol>(paramSpecInt other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecInt properties

// MARK: no ParamSpecInt signals

// MARK: ParamSpecInt has no signals
// MARK: ParamSpecInt Class: ParamSpecIntProtocol extension (methods and fields)
public extension ParamSpecIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt` instance.
    @inlinable var param_spec_int_ptr: UnsafeMutablePointer<GParamSpecInt>! { return ptr?.assumingMemoryBound(to: GParamSpecInt.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_int_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gint {
        /// minimum value for the property specified
        get {
            let rv = param_spec_int_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gint {
        /// maximum value for the property specified
        get {
            let rv = param_spec_int_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint {
        /// default value for the property specified
        get {
            let rv = param_spec_int_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecInt64 Class

/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
///
/// The `ParamSpecInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecInt64`.
/// Alternatively, use `ParamSpecInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecInt64Protocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecInt64` instance.
    var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64>! { get }

    /// Required Initialiser for types conforming to `ParamSpecInt64Protocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
///
/// The `ParamSpecInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64Ref` only as an `unowned` reference to an existing `GParamSpecInt64` instance.
///
public struct ParamSpecInt64Ref: ParamSpecInt64Protocol {
        /// Untyped pointer to the underlying `GParamSpecInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_int64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecInt64>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecInt64>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecInt64>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecInt64>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    @inlinable init<T: ParamSpecInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for 64bit integer properties.
///
/// The `ParamSpecInt64` type acts as a reference-counted owner of an underlying `GParamSpecInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecInt64Protocol` conformance.
/// Use `ParamSpecInt64` as a strong reference or owner of a `GParamSpecInt64` instance.
///
open class ParamSpecInt64: ParamSpec, ParamSpecInt64Protocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecInt64>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecInt64>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecInt64>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecInt64`.
    /// i.e., ownership is transferred to the `ParamSpecInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecInt64>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecInt64Protocol`
    /// Will retain `GParamSpecInt64`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecInt64Protocol`
    @inlinable public init<T: ParamSpecInt64Protocol>(paramSpecInt64 other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecInt64 properties

// MARK: no ParamSpecInt64 signals

// MARK: ParamSpecInt64 has no signals
// MARK: ParamSpecInt64 Class: ParamSpecInt64Protocol extension (methods and fields)
public extension ParamSpecInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecInt64` instance.
    @inlinable var param_spec_int64_ptr: UnsafeMutablePointer<GParamSpecInt64>! { return ptr?.assumingMemoryBound(to: GParamSpecInt64.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_int64_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gint64 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_int64_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gint64 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_int64_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gint64 {
        /// default value for the property specified
        get {
            let rv = param_spec_int64_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecLong Class

/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
///
/// The `ParamSpecLongProtocol` protocol exposes the methods and properties of an underlying `GParamSpecLong` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecLong`.
/// Alternatively, use `ParamSpecLongRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecLongProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecLong` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecLong` instance.
    var param_spec_long_ptr: UnsafeMutablePointer<GParamSpecLong>! { get }

    /// Required Initialiser for types conforming to `ParamSpecLongProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
///
/// The `ParamSpecLongRef` type acts as a lightweight Swift reference to an underlying `GParamSpecLong` instance.
/// It exposes methods that can operate on this data type through `ParamSpecLongProtocol` conformance.
/// Use `ParamSpecLongRef` only as an `unowned` reference to an existing `GParamSpecLong` instance.
///
public struct ParamSpecLongRef: ParamSpecLongProtocol {
        /// Untyped pointer to the underlying `GParamSpecLong` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_long_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecLongRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecLong>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecLong>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecLong>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecLong>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecLongProtocol`
    @inlinable init<T: ParamSpecLongProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for long integer properties.
///
/// The `ParamSpecLong` type acts as a reference-counted owner of an underlying `GParamSpecLong` instance.
/// It provides the methods that can operate on this data type through `ParamSpecLongProtocol` conformance.
/// Use `ParamSpecLong` as a strong reference or owner of a `GParamSpecLong` instance.
///
open class ParamSpecLong: ParamSpec, ParamSpecLongProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecLong>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecLong>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecLong>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecLong>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecLong`.
    /// i.e., ownership is transferred to the `ParamSpecLong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecLong>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecLongProtocol`
    /// Will retain `GParamSpecLong`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecLongProtocol`
    @inlinable public init<T: ParamSpecLongProtocol>(paramSpecLong other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecLongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecLong properties

// MARK: no ParamSpecLong signals

// MARK: ParamSpecLong has no signals
// MARK: ParamSpecLong Class: ParamSpecLongProtocol extension (methods and fields)
public extension ParamSpecLongProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecLong` instance.
    @inlinable var param_spec_long_ptr: UnsafeMutablePointer<GParamSpecLong>! { return ptr?.assumingMemoryBound(to: GParamSpecLong.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_long_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: glong {
        /// minimum value for the property specified
        get {
            let rv = param_spec_long_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: glong {
        /// maximum value for the property specified
        get {
            let rv = param_spec_long_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: glong {
        /// default value for the property specified
        get {
            let rv = param_spec_long_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecObject Class

/// A `GParamSpec` derived structure that contains the meta data for object properties.
///
/// The `ParamSpecObjectProtocol` protocol exposes the methods and properties of an underlying `GParamSpecObject` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecObject`.
/// Alternatively, use `ParamSpecObjectRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecObjectProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecObject` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecObject` instance.
    var param_spec_object_ptr: UnsafeMutablePointer<GParamSpecObject>! { get }

    /// Required Initialiser for types conforming to `ParamSpecObjectProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for object properties.
///
/// The `ParamSpecObjectRef` type acts as a lightweight Swift reference to an underlying `GParamSpecObject` instance.
/// It exposes methods that can operate on this data type through `ParamSpecObjectProtocol` conformance.
/// Use `ParamSpecObjectRef` only as an `unowned` reference to an existing `GParamSpecObject` instance.
///
public struct ParamSpecObjectRef: ParamSpecObjectProtocol {
        /// Untyped pointer to the underlying `GParamSpecObject` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_object_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecObjectRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecObject>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecObject>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecObject>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecObject>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecObjectProtocol`
    @inlinable init<T: ParamSpecObjectProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for object properties.
///
/// The `ParamSpecObject` type acts as a reference-counted owner of an underlying `GParamSpecObject` instance.
/// It provides the methods that can operate on this data type through `ParamSpecObjectProtocol` conformance.
/// Use `ParamSpecObject` as a strong reference or owner of a `GParamSpecObject` instance.
///
open class ParamSpecObject: ParamSpec, ParamSpecObjectProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecObject>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecObject>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecObject>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecObject>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecObject`.
    /// i.e., ownership is transferred to the `ParamSpecObject` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecObject>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecObjectProtocol`
    /// Will retain `GParamSpecObject`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecObjectProtocol`
    @inlinable public init<T: ParamSpecObjectProtocol>(paramSpecObject other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecObjectProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecObject properties

// MARK: no ParamSpecObject signals

// MARK: ParamSpecObject has no signals
// MARK: ParamSpecObject Class: ParamSpecObjectProtocol extension (methods and fields)
public extension ParamSpecObjectProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecObject` instance.
    @inlinable var param_spec_object_ptr: UnsafeMutablePointer<GParamSpecObject>! { return ptr?.assumingMemoryBound(to: GParamSpecObject.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_object_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ParamSpecOverride Class

/// A `GParamSpec` derived structure that redirects operations to
/// other types of `GParamSpec`.
/// 
/// All operations other than getting or setting the value are redirected,
/// including accessing the nick and blurb, validating a value, and so
/// forth.
/// 
/// See `g_param_spec_get_redirect_target()` for retrieving the overridden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
///
/// The `ParamSpecOverrideProtocol` protocol exposes the methods and properties of an underlying `GParamSpecOverride` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecOverride`.
/// Alternatively, use `ParamSpecOverrideRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecOverrideProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecOverride` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecOverride` instance.
    var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride>! { get }

    /// Required Initialiser for types conforming to `ParamSpecOverrideProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that redirects operations to
/// other types of `GParamSpec`.
/// 
/// All operations other than getting or setting the value are redirected,
/// including accessing the nick and blurb, validating a value, and so
/// forth.
/// 
/// See `g_param_spec_get_redirect_target()` for retrieving the overridden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
///
/// The `ParamSpecOverrideRef` type acts as a lightweight Swift reference to an underlying `GParamSpecOverride` instance.
/// It exposes methods that can operate on this data type through `ParamSpecOverrideProtocol` conformance.
/// Use `ParamSpecOverrideRef` only as an `unowned` reference to an existing `GParamSpecOverride` instance.
///
public struct ParamSpecOverrideRef: ParamSpecOverrideProtocol {
        /// Untyped pointer to the underlying `GParamSpecOverride` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_override_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecOverrideRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecOverride>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecOverride>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecOverride>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    @inlinable init<T: ParamSpecOverrideProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that redirects operations to
/// other types of `GParamSpec`.
/// 
/// All operations other than getting or setting the value are redirected,
/// including accessing the nick and blurb, validating a value, and so
/// forth.
/// 
/// See `g_param_spec_get_redirect_target()` for retrieving the overridden
/// property. `GParamSpecOverride` is used in implementing
/// `g_object_class_override_property()`, and will not be directly useful
/// unless you are implementing a new base type similar to GObject.
///
/// The `ParamSpecOverride` type acts as a reference-counted owner of an underlying `GParamSpecOverride` instance.
/// It provides the methods that can operate on this data type through `ParamSpecOverrideProtocol` conformance.
/// Use `ParamSpecOverride` as a strong reference or owner of a `GParamSpecOverride` instance.
///
open class ParamSpecOverride: ParamSpec, ParamSpecOverrideProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecOverride>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecOverride>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecOverride>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecOverride`.
    /// i.e., ownership is transferred to the `ParamSpecOverride` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecOverride>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecOverrideProtocol`
    /// Will retain `GParamSpecOverride`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecOverrideProtocol`
    @inlinable public init<T: ParamSpecOverrideProtocol>(paramSpecOverride other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecOverrideProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecOverride properties

// MARK: no ParamSpecOverride signals

// MARK: ParamSpecOverride has no signals
// MARK: ParamSpecOverride Class: ParamSpecOverrideProtocol extension (methods and fields)
public extension ParamSpecOverrideProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecOverride` instance.
    @inlinable var param_spec_override_ptr: UnsafeMutablePointer<GParamSpecOverride>! { return ptr?.assumingMemoryBound(to: GParamSpecOverride.self) }


    // var parentInstance is unavailable because parent_instance is private

    // var overridden is unavailable because overridden is private

}



// MARK: - ParamSpecParam Class

/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
///
/// The `ParamSpecParamProtocol` protocol exposes the methods and properties of an underlying `GParamSpecParam` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecParam`.
/// Alternatively, use `ParamSpecParamRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecParamProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecParam` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecParam` instance.
    var param_spec_param_ptr: UnsafeMutablePointer<GParamSpecParam>! { get }

    /// Required Initialiser for types conforming to `ParamSpecParamProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
///
/// The `ParamSpecParamRef` type acts as a lightweight Swift reference to an underlying `GParamSpecParam` instance.
/// It exposes methods that can operate on this data type through `ParamSpecParamProtocol` conformance.
/// Use `ParamSpecParamRef` only as an `unowned` reference to an existing `GParamSpecParam` instance.
///
public struct ParamSpecParamRef: ParamSpecParamProtocol {
        /// Untyped pointer to the underlying `GParamSpecParam` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_param_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecParamRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecParam>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecParam>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecParam>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecParam>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecParamProtocol`
    @inlinable init<T: ParamSpecParamProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `G_TYPE_PARAM`
/// properties.
///
/// The `ParamSpecParam` type acts as a reference-counted owner of an underlying `GParamSpecParam` instance.
/// It provides the methods that can operate on this data type through `ParamSpecParamProtocol` conformance.
/// Use `ParamSpecParam` as a strong reference or owner of a `GParamSpecParam` instance.
///
open class ParamSpecParam: ParamSpec, ParamSpecParamProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecParam>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecParam>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecParam>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecParam>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecParam`.
    /// i.e., ownership is transferred to the `ParamSpecParam` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecParam>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecParamProtocol`
    /// Will retain `GParamSpecParam`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecParamProtocol`
    @inlinable public init<T: ParamSpecParamProtocol>(paramSpecParam other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecParamProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecParam properties

// MARK: no ParamSpecParam signals

// MARK: ParamSpecParam has no signals
// MARK: ParamSpecParam Class: ParamSpecParamProtocol extension (methods and fields)
public extension ParamSpecParamProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecParam` instance.
    @inlinable var param_spec_param_ptr: UnsafeMutablePointer<GParamSpecParam>! { return ptr?.assumingMemoryBound(to: GParamSpecParam.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_param_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ParamSpecPointer Class

/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
///
/// The `ParamSpecPointerProtocol` protocol exposes the methods and properties of an underlying `GParamSpecPointer` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecPointer`.
/// Alternatively, use `ParamSpecPointerRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecPointerProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecPointer` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecPointer` instance.
    var param_spec_pointer_ptr: UnsafeMutablePointer<GParamSpecPointer>! { get }

    /// Required Initialiser for types conforming to `ParamSpecPointerProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
///
/// The `ParamSpecPointerRef` type acts as a lightweight Swift reference to an underlying `GParamSpecPointer` instance.
/// It exposes methods that can operate on this data type through `ParamSpecPointerProtocol` conformance.
/// Use `ParamSpecPointerRef` only as an `unowned` reference to an existing `GParamSpecPointer` instance.
///
public struct ParamSpecPointerRef: ParamSpecPointerProtocol {
        /// Untyped pointer to the underlying `GParamSpecPointer` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_pointer_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecPointerRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecPointer>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecPointer>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecPointer>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecPointer>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecPointerProtocol`
    @inlinable init<T: ParamSpecPointerProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for pointer properties.
///
/// The `ParamSpecPointer` type acts as a reference-counted owner of an underlying `GParamSpecPointer` instance.
/// It provides the methods that can operate on this data type through `ParamSpecPointerProtocol` conformance.
/// Use `ParamSpecPointer` as a strong reference or owner of a `GParamSpecPointer` instance.
///
open class ParamSpecPointer: ParamSpec, ParamSpecPointerProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecPointer>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecPointer>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecPointer>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecPointer>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecPointer`.
    /// i.e., ownership is transferred to the `ParamSpecPointer` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecPointer>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecPointerProtocol`
    /// Will retain `GParamSpecPointer`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecPointerProtocol`
    @inlinable public init<T: ParamSpecPointerProtocol>(paramSpecPointer other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecPointerProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecPointer properties

// MARK: no ParamSpecPointer signals

// MARK: ParamSpecPointer has no signals
// MARK: ParamSpecPointer Class: ParamSpecPointerProtocol extension (methods and fields)
public extension ParamSpecPointerProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecPointer` instance.
    @inlinable var param_spec_pointer_ptr: UnsafeMutablePointer<GParamSpecPointer>! { return ptr?.assumingMemoryBound(to: GParamSpecPointer.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_pointer_ptr.pointee.parent_instance
            return rv
        }
    }

}



// MARK: - ParamSpecString Class

/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
///
/// The `ParamSpecStringProtocol` protocol exposes the methods and properties of an underlying `GParamSpecString` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecString`.
/// Alternatively, use `ParamSpecStringRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecStringProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecString` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecString` instance.
    var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString>! { get }

    /// Required Initialiser for types conforming to `ParamSpecStringProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
///
/// The `ParamSpecStringRef` type acts as a lightweight Swift reference to an underlying `GParamSpecString` instance.
/// It exposes methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecStringRef` only as an `unowned` reference to an existing `GParamSpecString` instance.
///
public struct ParamSpecStringRef: ParamSpecStringProtocol {
        /// Untyped pointer to the underlying `GParamSpecString` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_string_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecStringRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecString>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecString>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecString>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecString>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    @inlinable init<T: ParamSpecStringProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for string
/// properties.
///
/// The `ParamSpecString` type acts as a reference-counted owner of an underlying `GParamSpecString` instance.
/// It provides the methods that can operate on this data type through `ParamSpecStringProtocol` conformance.
/// Use `ParamSpecString` as a strong reference or owner of a `GParamSpecString` instance.
///
open class ParamSpecString: ParamSpec, ParamSpecStringProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecString>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecString>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecString>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecString`.
    /// i.e., ownership is transferred to the `ParamSpecString` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecString>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecStringProtocol`
    /// Will retain `GParamSpecString`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecStringProtocol`
    @inlinable public init<T: ParamSpecStringProtocol>(paramSpecString other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecStringProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecString properties

// MARK: no ParamSpecString signals

// MARK: ParamSpecString has no signals
// MARK: ParamSpecString Class: ParamSpecStringProtocol extension (methods and fields)
public extension ParamSpecStringProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecString` instance.
    @inlinable var param_spec_string_ptr: UnsafeMutablePointer<GParamSpecString>! { return ptr?.assumingMemoryBound(to: GParamSpecString.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_string_ptr.pointee.parent_instance
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: UnsafeMutablePointer<gchar>! {
        /// default value for the property specified
        get {
            let rv = param_spec_string_ptr.pointee.default_value
            return rv
        }
    }

    /// a string containing the allowed values for the first byte
    @inlinable var csetFirst: UnsafeMutablePointer<gchar>! {
        /// a string containing the allowed values for the first byte
        get {
            let rv = param_spec_string_ptr.pointee.cset_first
            return rv
        }
    }

    /// a string containing the allowed values for the subsequent bytes
    @inlinable var csetNth: UnsafeMutablePointer<gchar>! {
        /// a string containing the allowed values for the subsequent bytes
        get {
            let rv = param_spec_string_ptr.pointee.cset_nth
            return rv
        }
    }

    /// the replacement byte for bytes which don't match `cset_first` or `cset_nth`.
    @inlinable var substitutor: gchar {
        /// the replacement byte for bytes which don't match `cset_first` or `cset_nth`.
        get {
            let rv = param_spec_string_ptr.pointee.substitutor
            return rv
        }
    }

    /// replace empty string by `nil`
    @inlinable var nullFoldIfEmpty: guint {
        /// replace empty string by `nil`
        get {
            let rv = param_spec_string_ptr.pointee.null_fold_if_empty
            return rv
        }
    }

    /// replace `nil` strings by an empty string
    @inlinable var ensureNonNull: guint {
        /// replace `nil` strings by an empty string
        get {
            let rv = param_spec_string_ptr.pointee.ensure_non_null
            return rv
        }
    }

}



// MARK: - ParamSpecUChar Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
///
/// The `ParamSpecUCharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUChar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUChar`.
/// Alternatively, use `ParamSpecUCharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUCharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUChar` instance.
    var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUCharProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
///
/// The `ParamSpecUCharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUChar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUCharRef` only as an `unowned` reference to an existing `GParamSpecUChar` instance.
///
public struct ParamSpecUCharRef: ParamSpecUCharProtocol {
        /// Untyped pointer to the underlying `GParamSpecUChar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uchar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUCharRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUChar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUChar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUChar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUChar>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    @inlinable init<T: ParamSpecUCharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned character properties.
///
/// The `ParamSpecUChar` type acts as a reference-counted owner of an underlying `GParamSpecUChar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUCharProtocol` conformance.
/// Use `ParamSpecUChar` as a strong reference or owner of a `GParamSpecUChar` instance.
///
open class ParamSpecUChar: ParamSpec, ParamSpecUCharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUChar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUChar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUChar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUChar`.
    /// i.e., ownership is transferred to the `ParamSpecUChar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUChar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUCharProtocol`
    /// Will retain `GParamSpecUChar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUCharProtocol`
    @inlinable public init<T: ParamSpecUCharProtocol>(paramSpecUChar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUCharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUChar properties

// MARK: no ParamSpecUChar signals

// MARK: ParamSpecUChar has no signals
// MARK: ParamSpecUChar Class: ParamSpecUCharProtocol extension (methods and fields)
public extension ParamSpecUCharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUChar` instance.
    @inlinable var param_spec_uchar_ptr: UnsafeMutablePointer<GParamSpecUChar>! { return ptr?.assumingMemoryBound(to: GParamSpecUChar.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_uchar_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: guint8 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_uchar_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: guint8 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_uchar_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint8 {
        /// default value for the property specified
        get {
            let rv = param_spec_uchar_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecUInt Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
///
/// The `ParamSpecUIntProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUInt` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUInt`.
/// Alternatively, use `ParamSpecUIntRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUIntProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUInt` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUInt` instance.
    var param_spec_uint_ptr: UnsafeMutablePointer<GParamSpecUInt>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUIntProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
///
/// The `ParamSpecUIntRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUInt` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUIntProtocol` conformance.
/// Use `ParamSpecUIntRef` only as an `unowned` reference to an existing `GParamSpecUInt` instance.
///
public struct ParamSpecUIntRef: ParamSpecUIntProtocol {
        /// Untyped pointer to the underlying `GParamSpecUInt` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uint_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUIntRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUInt>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUInt>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUInt>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUInt>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUIntProtocol`
    @inlinable init<T: ParamSpecUIntProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned integer properties.
///
/// The `ParamSpecUInt` type acts as a reference-counted owner of an underlying `GParamSpecUInt` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUIntProtocol` conformance.
/// Use `ParamSpecUInt` as a strong reference or owner of a `GParamSpecUInt` instance.
///
open class ParamSpecUInt: ParamSpec, ParamSpecUIntProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUInt>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUInt>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUInt>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUInt>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUInt`.
    /// i.e., ownership is transferred to the `ParamSpecUInt` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUInt>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUIntProtocol`
    /// Will retain `GParamSpecUInt`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUIntProtocol`
    @inlinable public init<T: ParamSpecUIntProtocol>(paramSpecUInt other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUIntProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUInt properties

// MARK: no ParamSpecUInt signals

// MARK: ParamSpecUInt has no signals
// MARK: ParamSpecUInt Class: ParamSpecUIntProtocol extension (methods and fields)
public extension ParamSpecUIntProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUInt` instance.
    @inlinable var param_spec_uint_ptr: UnsafeMutablePointer<GParamSpecUInt>! { return ptr?.assumingMemoryBound(to: GParamSpecUInt.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_uint_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: guint {
        /// minimum value for the property specified
        get {
            let rv = param_spec_uint_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: guint {
        /// maximum value for the property specified
        get {
            let rv = param_spec_uint_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint {
        /// default value for the property specified
        get {
            let rv = param_spec_uint_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecUInt64 Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
///
/// The `ParamSpecUInt64Protocol` protocol exposes the methods and properties of an underlying `GParamSpecUInt64` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUInt64`.
/// Alternatively, use `ParamSpecUInt64Ref` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUInt64Protocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUInt64` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUInt64` instance.
    var param_spec_uint64_ptr: UnsafeMutablePointer<GParamSpecUInt64>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUInt64Protocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
///
/// The `ParamSpecUInt64Ref` type acts as a lightweight Swift reference to an underlying `GParamSpecUInt64` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUInt64Protocol` conformance.
/// Use `ParamSpecUInt64Ref` only as an `unowned` reference to an existing `GParamSpecUInt64` instance.
///
public struct ParamSpecUInt64Ref: ParamSpecUInt64Protocol {
        /// Untyped pointer to the underlying `GParamSpecUInt64` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_uint64_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUInt64Ref {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUInt64>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUInt64>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUInt64>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUInt64>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUInt64Protocol`
    @inlinable init<T: ParamSpecUInt64Protocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned 64bit integer properties.
///
/// The `ParamSpecUInt64` type acts as a reference-counted owner of an underlying `GParamSpecUInt64` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUInt64Protocol` conformance.
/// Use `ParamSpecUInt64` as a strong reference or owner of a `GParamSpecUInt64` instance.
///
open class ParamSpecUInt64: ParamSpec, ParamSpecUInt64Protocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUInt64>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUInt64>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUInt64>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUInt64>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUInt64`.
    /// i.e., ownership is transferred to the `ParamSpecUInt64` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUInt64>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUInt64Protocol`
    /// Will retain `GParamSpecUInt64`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUInt64Protocol`
    @inlinable public init<T: ParamSpecUInt64Protocol>(paramSpecUInt64 other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUInt64Protocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUInt64 properties

// MARK: no ParamSpecUInt64 signals

// MARK: ParamSpecUInt64 has no signals
// MARK: ParamSpecUInt64 Class: ParamSpecUInt64Protocol extension (methods and fields)
public extension ParamSpecUInt64Protocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUInt64` instance.
    @inlinable var param_spec_uint64_ptr: UnsafeMutablePointer<GParamSpecUInt64>! { return ptr?.assumingMemoryBound(to: GParamSpecUInt64.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_uint64_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: guint64 {
        /// minimum value for the property specified
        get {
            let rv = param_spec_uint64_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: guint64 {
        /// maximum value for the property specified
        get {
            let rv = param_spec_uint64_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: guint64 {
        /// default value for the property specified
        get {
            let rv = param_spec_uint64_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecULong Class

/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
///
/// The `ParamSpecULongProtocol` protocol exposes the methods and properties of an underlying `GParamSpecULong` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecULong`.
/// Alternatively, use `ParamSpecULongRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecULongProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecULong` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecULong` instance.
    var param_spec_ulong_ptr: UnsafeMutablePointer<GParamSpecULong>! { get }

    /// Required Initialiser for types conforming to `ParamSpecULongProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
///
/// The `ParamSpecULongRef` type acts as a lightweight Swift reference to an underlying `GParamSpecULong` instance.
/// It exposes methods that can operate on this data type through `ParamSpecULongProtocol` conformance.
/// Use `ParamSpecULongRef` only as an `unowned` reference to an existing `GParamSpecULong` instance.
///
public struct ParamSpecULongRef: ParamSpecULongProtocol {
        /// Untyped pointer to the underlying `GParamSpecULong` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_ulong_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecULongRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecULong>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecULong>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecULong>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecULong>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecULongProtocol`
    @inlinable init<T: ParamSpecULongProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unsigned long integer properties.
///
/// The `ParamSpecULong` type acts as a reference-counted owner of an underlying `GParamSpecULong` instance.
/// It provides the methods that can operate on this data type through `ParamSpecULongProtocol` conformance.
/// Use `ParamSpecULong` as a strong reference or owner of a `GParamSpecULong` instance.
///
open class ParamSpecULong: ParamSpec, ParamSpecULongProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecULong>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecULong>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecULong>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecULong>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecULong`.
    /// i.e., ownership is transferred to the `ParamSpecULong` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecULong>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecULongProtocol`
    /// Will retain `GParamSpecULong`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecULongProtocol`
    @inlinable public init<T: ParamSpecULongProtocol>(paramSpecULong other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecULongProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecULong properties

// MARK: no ParamSpecULong signals

// MARK: ParamSpecULong has no signals
// MARK: ParamSpecULong Class: ParamSpecULongProtocol extension (methods and fields)
public extension ParamSpecULongProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecULong` instance.
    @inlinable var param_spec_ulong_ptr: UnsafeMutablePointer<GParamSpecULong>! { return ptr?.assumingMemoryBound(to: GParamSpecULong.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_ulong_ptr.pointee.parent_instance
            return rv
        }
    }

    /// minimum value for the property specified
    @inlinable var minimum: gulong {
        /// minimum value for the property specified
        get {
            let rv = param_spec_ulong_ptr.pointee.minimum
            return rv
        }
    }

    /// maximum value for the property specified
    @inlinable var maximum: gulong {
        /// maximum value for the property specified
        get {
            let rv = param_spec_ulong_ptr.pointee.maximum
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gulong {
        /// default value for the property specified
        get {
            let rv = param_spec_ulong_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecUnichar Class

/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
///
/// The `ParamSpecUnicharProtocol` protocol exposes the methods and properties of an underlying `GParamSpecUnichar` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecUnichar`.
/// Alternatively, use `ParamSpecUnicharRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecUnicharProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecUnichar` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecUnichar` instance.
    var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar>! { get }

    /// Required Initialiser for types conforming to `ParamSpecUnicharProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
///
/// The `ParamSpecUnicharRef` type acts as a lightweight Swift reference to an underlying `GParamSpecUnichar` instance.
/// It exposes methods that can operate on this data type through `ParamSpecUnicharProtocol` conformance.
/// Use `ParamSpecUnicharRef` only as an `unowned` reference to an existing `GParamSpecUnichar` instance.
///
public struct ParamSpecUnicharRef: ParamSpecUnicharProtocol {
        /// Untyped pointer to the underlying `GParamSpecUnichar` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_unichar_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecUnicharRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecUnichar>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecUnichar>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecUnichar>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecUnichar>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecUnicharProtocol`
    @inlinable init<T: ParamSpecUnicharProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for unichar (unsigned integer) properties.
///
/// The `ParamSpecUnichar` type acts as a reference-counted owner of an underlying `GParamSpecUnichar` instance.
/// It provides the methods that can operate on this data type through `ParamSpecUnicharProtocol` conformance.
/// Use `ParamSpecUnichar` as a strong reference or owner of a `GParamSpecUnichar` instance.
///
open class ParamSpecUnichar: ParamSpec, ParamSpecUnicharProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecUnichar>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecUnichar>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecUnichar>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecUnichar`.
    /// i.e., ownership is transferred to the `ParamSpecUnichar` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecUnichar>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecUnicharProtocol`
    /// Will retain `GParamSpecUnichar`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecUnicharProtocol`
    @inlinable public init<T: ParamSpecUnicharProtocol>(paramSpecUnichar other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecUnicharProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecUnichar properties

// MARK: no ParamSpecUnichar signals

// MARK: ParamSpecUnichar has no signals
// MARK: ParamSpecUnichar Class: ParamSpecUnicharProtocol extension (methods and fields)
public extension ParamSpecUnicharProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecUnichar` instance.
    @inlinable var param_spec_unichar_ptr: UnsafeMutablePointer<GParamSpecUnichar>! { return ptr?.assumingMemoryBound(to: GParamSpecUnichar.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_unichar_ptr.pointee.parent_instance
            return rv
        }
    }

    /// default value for the property specified
    @inlinable var defaultValue: gunichar {
        /// default value for the property specified
        get {
            let rv = param_spec_unichar_ptr.pointee.default_value
            return rv
        }
    }

}



// MARK: - ParamSpecValueArray Class

/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
///
/// The `ParamSpecValueArrayProtocol` protocol exposes the methods and properties of an underlying `GParamSpecValueArray` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecValueArray`.
/// Alternatively, use `ParamSpecValueArrayRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecValueArrayProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecValueArray` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecValueArray` instance.
    var param_spec_value_array_ptr: UnsafeMutablePointer<GParamSpecValueArray>! { get }

    /// Required Initialiser for types conforming to `ParamSpecValueArrayProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
///
/// The `ParamSpecValueArrayRef` type acts as a lightweight Swift reference to an underlying `GParamSpecValueArray` instance.
/// It exposes methods that can operate on this data type through `ParamSpecValueArrayProtocol` conformance.
/// Use `ParamSpecValueArrayRef` only as an `unowned` reference to an existing `GParamSpecValueArray` instance.
///
public struct ParamSpecValueArrayRef: ParamSpecValueArrayProtocol {
        /// Untyped pointer to the underlying `GParamSpecValueArray` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_value_array_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecValueArrayRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecValueArray>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecValueArray>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecValueArray>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecValueArray>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecValueArrayProtocol`
    @inlinable init<T: ParamSpecValueArrayProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `GValueArray` properties.
///
/// The `ParamSpecValueArray` type acts as a reference-counted owner of an underlying `GParamSpecValueArray` instance.
/// It provides the methods that can operate on this data type through `ParamSpecValueArrayProtocol` conformance.
/// Use `ParamSpecValueArray` as a strong reference or owner of a `GParamSpecValueArray` instance.
///
open class ParamSpecValueArray: ParamSpec, ParamSpecValueArrayProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecValueArray>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecValueArray>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecValueArray>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecValueArray>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecValueArray`.
    /// i.e., ownership is transferred to the `ParamSpecValueArray` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecValueArray>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecValueArrayProtocol`
    /// Will retain `GParamSpecValueArray`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecValueArrayProtocol`
    @inlinable public init<T: ParamSpecValueArrayProtocol>(paramSpecValueArray other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecValueArrayProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecValueArray properties

// MARK: no ParamSpecValueArray signals

// MARK: ParamSpecValueArray has no signals
// MARK: ParamSpecValueArray Class: ParamSpecValueArrayProtocol extension (methods and fields)
public extension ParamSpecValueArrayProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecValueArray` instance.
    @inlinable var param_spec_value_array_ptr: UnsafeMutablePointer<GParamSpecValueArray>! { return ptr?.assumingMemoryBound(to: GParamSpecValueArray.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_value_array_ptr.pointee.parent_instance
            return rv
        }
    }

    /// a `GParamSpec` describing the elements contained in arrays of this property, may be `nil`
    @inlinable var elementSpec: ParamSpecRef! {
        /// a `GParamSpec` describing the elements contained in arrays of this property, may be `nil`
        get {
            let rv = ParamSpecRef(gconstpointer: gconstpointer(param_spec_value_array_ptr.pointee.element_spec))
            return rv
        }
    }

    /// if greater than 0, arrays of this property will always have this many elements
    @inlinable var fixedNElements: guint {
        /// if greater than 0, arrays of this property will always have this many elements
        get {
            let rv = param_spec_value_array_ptr.pointee.fixed_n_elements
            return rv
        }
    }

}



// MARK: - ParamSpecVariant Class

/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
///
/// The `ParamSpecVariantProtocol` protocol exposes the methods and properties of an underlying `GParamSpecVariant` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ParamSpecVariant`.
/// Alternatively, use `ParamSpecVariantRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ParamSpecVariantProtocol: ParamSpecProtocol {
        /// Untyped pointer to the underlying `GParamSpecVariant` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GParamSpecVariant` instance.
    var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant>! { get }

    /// Required Initialiser for types conforming to `ParamSpecVariantProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
///
/// The `ParamSpecVariantRef` type acts as a lightweight Swift reference to an underlying `GParamSpecVariant` instance.
/// It exposes methods that can operate on this data type through `ParamSpecVariantProtocol` conformance.
/// Use `ParamSpecVariantRef` only as an `unowned` reference to an existing `GParamSpecVariant` instance.
///
public struct ParamSpecVariantRef: ParamSpecVariantProtocol {
        /// Untyped pointer to the underlying `GParamSpecVariant` instance.
    /// For type-safe access, use the generated, typed pointer `param_spec_variant_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ParamSpecVariantRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GParamSpecVariant>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GParamSpecVariant>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GParamSpecVariant>?) {
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

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    @inlinable init<T: ParamSpecVariantProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GParamSpec` derived structure that contains the meta data for `GVariant` properties.
/// 
/// When comparing values with `g_param_values_cmp()`, scalar values with the same
/// type will be compared with `g_variant_compare()`. Other non-`nil` variants will
/// be checked for equality with `g_variant_equal()`, and their sort order is
/// otherwise undefined. `nil` is ordered before non-`nil` variants. Two `nil`
/// values compare equal.
///
/// The `ParamSpecVariant` type acts as a reference-counted owner of an underlying `GParamSpecVariant` instance.
/// It provides the methods that can operate on this data type through `ParamSpecVariantProtocol` conformance.
/// Use `ParamSpecVariant` as a strong reference or owner of a `GParamSpecVariant` instance.
///
open class ParamSpecVariant: ParamSpec, ParamSpecVariantProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GParamSpecVariant>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GParamSpecVariant>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GParamSpecVariant>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GParamSpecVariant`.
    /// i.e., ownership is transferred to the `ParamSpecVariant` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GParamSpecVariant>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `ParamSpecVariantProtocol`
    /// Will retain `GParamSpecVariant`.
    /// - Parameter other: an instance of a related type that implements `ParamSpecVariantProtocol`
    @inlinable public init<T: ParamSpecVariantProtocol>(paramSpecVariant other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable override public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ParamSpecVariantProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no ParamSpecVariant properties

// MARK: no ParamSpecVariant signals

// MARK: ParamSpecVariant has no signals
// MARK: ParamSpecVariant Class: ParamSpecVariantProtocol extension (methods and fields)
public extension ParamSpecVariantProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GParamSpecVariant` instance.
    @inlinable var param_spec_variant_ptr: UnsafeMutablePointer<GParamSpecVariant>! { return ptr?.assumingMemoryBound(to: GParamSpecVariant.self) }


    /// private `GParamSpec` portion
    @inlinable var parentInstance: GParamSpec {
        /// private `GParamSpec` portion
        get {
            let rv = param_spec_variant_ptr.pointee.parent_instance
            return rv
        }
    }

    /// a `GVariantType`, or `nil`
    @inlinable var type: VariantTypeRef! {
        /// a `GVariantType`, or `nil`
        get {
            let rv = VariantTypeRef(gconstpointer: gconstpointer(param_spec_variant_ptr.pointee.type))
            return rv
        }
    }

    /// a `GVariant`, or `nil`
    @inlinable var defaultValue: VariantRef! {
        /// a `GVariant`, or `nil`
        get {
            let rv = VariantRef(gconstpointer: gconstpointer(param_spec_variant_ptr.pointee.default_value))
            return rv
        }
    }

    // var padding is unavailable because padding is private

}



// MARK: - TypeModule Class

/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface.
/// 
/// The model of `GTypeModule` is a dynamically loaded module which
/// implements some number of types and interface implementations.
/// 
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// reference cannot be released from within the module code, since that
/// would lead to the caller's code being unloaded before `g_object_unref()`
/// returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass`.
///
/// The `TypeModuleProtocol` protocol exposes the methods and properties of an underlying `GTypeModule` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeModule`.
/// Alternatively, use `TypeModuleRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol TypeModuleProtocol: ObjectProtocol, TypePluginProtocol {
        /// Untyped pointer to the underlying `GTypeModule` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GTypeModule` instance.
    var type_module_ptr: UnsafeMutablePointer<GTypeModule>! { get }

    /// Required Initialiser for types conforming to `TypeModuleProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface.
/// 
/// The model of `GTypeModule` is a dynamically loaded module which
/// implements some number of types and interface implementations.
/// 
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// reference cannot be released from within the module code, since that
/// would lead to the caller's code being unloaded before `g_object_unref()`
/// returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass`.
///
/// The `TypeModuleRef` type acts as a lightweight Swift reference to an underlying `GTypeModule` instance.
/// It exposes methods that can operate on this data type through `TypeModuleProtocol` conformance.
/// Use `TypeModuleRef` only as an `unowned` reference to an existing `GTypeModule` instance.
///
public struct TypeModuleRef: TypeModuleProtocol, GWeakCapturing {
        /// Untyped pointer to the underlying `GTypeModule` instance.
    /// For type-safe access, use the generated, typed pointer `type_module_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension TypeModuleRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GTypeModule>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GTypeModule>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GTypeModule>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GTypeModule>?) {
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

    /// Reference intialiser for a related type that implements `TypeModuleProtocol`
    @inlinable init<T: TypeModuleProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// This factory is syntactic sugar for setting weak pointers wrapped in `GWeak<T>`
    @inlinable static func unowned<T: TypeModuleProtocol>(_ other: T) -> TypeModuleRef { TypeModuleRef(other) }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// `GTypeModule` provides a simple implementation of the `GTypePlugin`
/// interface.
/// 
/// The model of `GTypeModule` is a dynamically loaded module which
/// implements some number of types and interface implementations.
/// 
/// When the module is loaded, it registers its types and interfaces
/// using `g_type_module_register_type()` and `g_type_module_add_interface()`.
/// As long as any instances of these types and interface implementations
/// are in use, the module is kept loaded. When the types and interfaces
/// are gone, the module may be unloaded. If the types and interfaces
/// become used again, the module will be reloaded. Note that the last
/// reference cannot be released from within the module code, since that
/// would lead to the caller's code being unloaded before `g_object_unref()`
/// returns to it.
/// 
/// Keeping track of whether the module should be loaded or not is done by
/// using a use count - it starts at zero, and whenever it is greater than
/// zero, the module is loaded. The use count is maintained internally by
/// the type system, but also can be explicitly controlled by
/// `g_type_module_use()` and `g_type_module_unuse()`. Typically, when loading
/// a module for the first type, `g_type_module_use()` will be used to load
/// it so that it can initialize its types. At some later point, when the
/// module no longer needs to be loaded except for the type
/// implementations it contains, `g_type_module_unuse()` is called.
/// 
/// `GTypeModule` does not actually provide any implementation of module
/// loading and unloading. To create a particular module type you must
/// derive from `GTypeModule` and implement the load and unload functions
/// in `GTypeModuleClass`.
///
/// The `TypeModule` type acts as a reference-counted owner of an underlying `GTypeModule` instance.
/// It provides the methods that can operate on this data type through `TypeModuleProtocol` conformance.
/// Use `TypeModule` as a strong reference or owner of a `GTypeModule` instance.
///
open class TypeModule: Object, TypeModuleProtocol {
        /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GTypeModule>) {
        super.init(cPointer: op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GTypeModule>) {
        super.init(raw: UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op)))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable override public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable override public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        super.init(raw: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GTypeModule>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        super.init(cPointer: p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GTypeModule>?) {
        guard let p = op else { return nil }
        super.init(cPointer: p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GTypeModule`.
    /// i.e., ownership is transferred to the `TypeModule` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GTypeModule>) {
        super.init(retainingCPointer: op)
    }

    /// Reference intialiser for a related type that implements `TypeModuleProtocol`
    /// Will retain `GTypeModule`.
    /// - Parameter other: an instance of a related type that implements `TypeModuleProtocol`
    @inlinable public init<T: TypeModuleProtocol>(typeModule other: T) {
        super.init(retainingRaw: other.ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        super.init(cPointer: p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable override public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        super.init(retainingCPointer: cPointer)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable override public init(raw p: UnsafeRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    @inlinable override public init(retainingRaw raw: UnsafeRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        super.init(raw: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable required public init(retainingRaw raw: UnsafeMutableRawPointer) {
        super.init(retainingRaw: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(opaquePointer p: OpaquePointer) {
        super.init(opaquePointer: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeModuleProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable override public init(retainingOpaquePointer p: OpaquePointer) {
        super.init(retainingOpaquePointer: p)
    }



}

// MARK: no TypeModule properties

public enum TypeModuleSignalName: String, SignalNameProtocol {
    /// The notify signal is emitted on an object when one of its properties has
    /// its value set through `g_object_set_property()`, `g_object_set()`, et al.
    /// 
    /// Note that getting this signal doesn’t itself guarantee that the value of
    /// the property has actually changed. When it is emitted is determined by the
    /// derived GObject class. If the implementor did not create the property with
    /// `G_PARAM_EXPLICIT_NOTIFY`, then any call to `g_object_set_property()` results
    /// in `notify` being emitted, even if the new value is the same as the old.
    /// If they did pass `G_PARAM_EXPLICIT_NOTIFY`, then this signal is emitted only
    /// when they explicitly call `g_object_notify()` or `g_object_notify_by_pspec()`,
    /// and common practice is to do that only when the value has actually changed.
    /// 
    /// This signal is typically used to obtain change notification for a
    /// single property, by specifying the property name as a detail in the
    /// `g_signal_connect()` call, like this:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_signal_connect (text_view->buffer, "notify::paste-target-list",
    ///                   G_CALLBACK (gtk_text_view_target_list_notify),
    ///                   text_view)
    /// ```
    /// 
    /// It is important to note that you must use
    /// [canonical parameter names](#canonical-parameter-names) as
    /// detail strings for the notify signal.
    case notify = "notify"

}

// MARK: TypeModule has no signals
// MARK: TypeModule Class: TypeModuleProtocol extension (methods and fields)
public extension TypeModuleProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeModule` instance.
    @inlinable var type_module_ptr: UnsafeMutablePointer<GTypeModule>! { return ptr?.assumingMemoryBound(to: GTypeModule.self) }

    /// Registers an additional interface for a type, whose interface lives
    /// in the given type plugin. If the interface was already registered
    /// for the type in this plugin, nothing will be done.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_add_interface_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func addInterface<InterfaceInfoT: InterfaceInfoProtocol>(instanceType: GType, interfaceType: GType, interfaceInfo: InterfaceInfoT) {
        g_type_module_add_interface(type_module_ptr, instanceType, interfaceType, interfaceInfo._ptr)
    
    }

    /// Looks up or registers an enumeration that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func registerEnum<EnumValueT: EnumValueProtocol>(name: UnsafePointer<gchar>!, constStaticValues: EnumValueT) -> GType {
        let rv = g_type_module_register_enum(type_module_ptr, name, constStaticValues._ptr)
        return rv
    }

    /// Looks up or registers a flags type that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func registerFlags<FlagsValueT: FlagsValueProtocol>(name: UnsafePointer<gchar>!, constStaticValues: FlagsValueT) -> GType {
        let rv = g_type_module_register_flags(type_module_ptr, name, constStaticValues._ptr)
        return rv
    }

    /// Looks up or registers a type that is implemented with a particular
    /// type plugin. If a type with name `type_name` was previously registered,
    /// the `GType` identifier for the type is returned, otherwise the type
    /// is newly registered, and the resulting `GType` identifier returned.
    /// 
    /// When reregistering a type (typically because a module is unloaded
    /// then reloaded, and reinitialized), `module` and `parent_type` must
    /// be the same as they were previously.
    /// 
    /// As long as any instances of the type exist, the type plugin will
    /// not be unloaded.
    /// 
    /// Since 2.56 if `module` is `nil` this will call `g_type_register_static()`
    /// instead. This can be used when making a static build of the module.
    @inlinable func registerType<TypeInfoT: TypeInfoProtocol>(parentType: GType, typeName: UnsafePointer<gchar>!, typeInfo: TypeInfoT, flags: TypeFlags) -> GType {
        let rv = g_type_module_register_type(type_module_ptr, parentType, typeName, typeInfo._ptr, flags.value)
        return rv
    }

    /// Sets the name for a `GTypeModule`
    @inlinable func set(name: UnsafePointer<gchar>!) {
        g_type_module_set_name(type_module_ptr, name)
    
    }

    /// Decreases the use count of a `GTypeModule` by one. If the
    /// result is zero, the module will be unloaded. (However, the
    /// `GTypeModule` will not be freed, and types associated with the
    /// `GTypeModule` are not unregistered. Once a `GTypeModule` is
    /// initialized, it must exist forever.)
    @inlinable func unuse() {
        g_type_module_unuse(type_module_ptr)
    
    }

    /// Increases the use count of a `GTypeModule` by one. If the
    /// use count was zero before, the plugin will be loaded.
    /// If loading the plugin fails, the use count is reset to
    /// its prior value.
    @inlinable func use() -> Bool {
        let rv = ((g_type_module_use(type_module_ptr)) != 0)
        return rv
    }

    @inlinable var parentInstance: GObject {
        get {
            let rv = type_module_ptr.pointee.parent_instance
            return rv
        }
    }

    @inlinable var useCount: guint {
        get {
            let rv = type_module_ptr.pointee.use_count
            return rv
        }
    }

    @inlinable var typeInfos: SListRef! {
        get {
            let rv = SListRef(gconstpointer: gconstpointer(type_module_ptr.pointee.type_infos))
            return rv
        }
    }

    @inlinable var interfaceInfos: SListRef! {
        get {
            let rv = SListRef(gconstpointer: gconstpointer(type_module_ptr.pointee.interface_infos))
            return rv
        }
    }

    /// the name of the module
    @inlinable var name: UnsafeMutablePointer<gchar>! {
        /// the name of the module
        get {
            let rv = type_module_ptr.pointee.name
            return rv
        }
    }

}



