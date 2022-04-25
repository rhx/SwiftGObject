import CGLib
import GLib
import GObjectCHelpers

// MARK: - CClosure Record

/// A `GCClosure` is a specialization of `GClosure` for C function callbacks.
///
/// The `CClosureProtocol` protocol exposes the methods and properties of an underlying `GCClosure` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `CClosure`.
/// Alternatively, use `CClosureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol CClosureProtocol {
        /// Untyped pointer to the underlying `GCClosure` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GCClosure` instance.
    var _ptr: UnsafeMutablePointer<GCClosure>! { get }

    /// Required Initialiser for types conforming to `CClosureProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GCClosure` is a specialization of `GClosure` for C function callbacks.
///
/// The `CClosureRef` type acts as a lightweight Swift reference to an underlying `GCClosure` instance.
/// It exposes methods that can operate on this data type through `CClosureProtocol` conformance.
/// Use `CClosureRef` only as an `unowned` reference to an existing `GCClosure` instance.
///
public struct CClosureRef: CClosureProtocol {
        /// Untyped pointer to the underlying `GCClosure` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension CClosureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GCClosure>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GCClosure>?) {
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

    /// Reference intialiser for a related type that implements `CClosureProtocol`
    @inlinable init<T: CClosureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// A `GCClosure` is a specialization of `GClosure` for C function callbacks.
///
/// The `CClosure` type acts as an owner of an underlying `GCClosure` instance.
/// It provides the methods that can operate on this data type through `CClosureProtocol` conformance.
/// Use `CClosure` as a strong reference or owner of a `GCClosure` instance.
///
open class CClosure: CClosureProtocol {
        /// Untyped pointer to the underlying `GCClosure` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GCClosure>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GCClosure>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GCClosure` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `CClosure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GCClosure>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GCClosure, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `CClosureProtocol`
    /// `GCClosure` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `CClosureProtocol`
    @inlinable public init<T: CClosureProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GCClosure, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GCClosure`.
    deinit {
        // no reference counting for GCClosure, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GCClosure, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GCClosure, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GCClosure, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `CClosureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GCClosure, cannot ref(_ptr)
    }



}

// MARK: no CClosure properties

// MARK: no CClosure signals

// MARK: CClosure has no signals
// MARK: CClosure Record: CClosureProtocol extension (methods and fields)
public extension CClosureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GCClosure` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GCClosure>! { return ptr?.assumingMemoryBound(to: GCClosure.self) }


    /// the `GClosure`
    @inlinable var closure: GClosure {
        /// the `GClosure`
        get {
            let rv = _ptr.pointee.closure
    return rv
        }
        /// the `GClosure`
         set {
            _ptr.pointee.closure = newValue
        }
    }

    /// the callback function
    @inlinable var callback: gpointer? {
        /// the callback function
        get {
            let rv = _ptr.pointee.callback
    return rv
        }
        /// the callback function
         set {
            _ptr.pointee.callback = newValue
        }
    }

}



// MARK: - Closure Record

/// A `GClosure` represents a callback supplied by the programmer.
/// 
/// It will generally comprise a function of some kind and a marshaller
/// used to call it. It is the responsibility of the marshaller to
/// convert the arguments for the invocation from `GValues` into
/// a suitable form, perform the callback on the converted arguments,
/// and transform the return value back into a `GValue`.
/// 
/// In the case of C programs, a closure usually just holds a pointer
/// to a function and maybe a data argument, and the marshaller
/// converts between `GValue` and native C types. The GObject
/// library provides the `GCClosure` type for this purpose. Bindings for
/// other languages need marshallers which convert between `GValues`
/// and suitable representations in the runtime of the language in
/// order to use functions written in that language as callbacks. Use
/// `g_closure_set_marshal()` to set the marshaller on such a custom
/// closure implementation.
/// 
/// Within GObject, closures play an important role in the
/// implementation of signals. When a signal is registered, the
/// `c_marshaller` argument to `g_signal_new()` specifies the default C
/// marshaller for any closure which is connected to this
/// signal. GObject provides a number of C marshallers for this
/// purpose, see the g_cclosure_marshal_*() functions. Additional C
/// marshallers can be generated with the [glib-genmarshal](#glib-genmarshal)
/// utility.  Closures can be explicitly connected to signals with
/// `g_signal_connect_closure()`, but it usually more convenient to let
/// GObject create a closure automatically by using one of the
/// g_signal_connect_*() functions which take a callback function/user
/// data pair.
/// 
/// Using closures has a number of important advantages over a simple
/// callback function/data pointer combination:
/// 
/// - Closures allow the callee to get the types of the callback parameters,
///   which means that language bindings don't have to write individual glue
///   for each callback type.
/// 
/// - The reference counting of `GClosure` makes it easy to handle reentrancy
///   right; if a callback is removed while it is being invoked, the closure
///   and its parameters won't be freed until the invocation finishes.
/// 
/// - `g_closure_invalidate()` and invalidation notifiers allow callbacks to be
///   automatically removed when the objects they point to go away.
///
/// The `ClosureProtocol` protocol exposes the methods and properties of an underlying `GClosure` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Closure`.
/// Alternatively, use `ClosureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ClosureProtocol {
        /// Untyped pointer to the underlying `GClosure` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GClosure` instance.
    var closure_ptr: UnsafeMutablePointer<GClosure>! { get }

    /// Required Initialiser for types conforming to `ClosureProtocol`
    init(raw: UnsafeMutableRawPointer)
}

/// A `GClosure` represents a callback supplied by the programmer.
/// 
/// It will generally comprise a function of some kind and a marshaller
/// used to call it. It is the responsibility of the marshaller to
/// convert the arguments for the invocation from `GValues` into
/// a suitable form, perform the callback on the converted arguments,
/// and transform the return value back into a `GValue`.
/// 
/// In the case of C programs, a closure usually just holds a pointer
/// to a function and maybe a data argument, and the marshaller
/// converts between `GValue` and native C types. The GObject
/// library provides the `GCClosure` type for this purpose. Bindings for
/// other languages need marshallers which convert between `GValues`
/// and suitable representations in the runtime of the language in
/// order to use functions written in that language as callbacks. Use
/// `g_closure_set_marshal()` to set the marshaller on such a custom
/// closure implementation.
/// 
/// Within GObject, closures play an important role in the
/// implementation of signals. When a signal is registered, the
/// `c_marshaller` argument to `g_signal_new()` specifies the default C
/// marshaller for any closure which is connected to this
/// signal. GObject provides a number of C marshallers for this
/// purpose, see the g_cclosure_marshal_*() functions. Additional C
/// marshallers can be generated with the [glib-genmarshal](#glib-genmarshal)
/// utility.  Closures can be explicitly connected to signals with
/// `g_signal_connect_closure()`, but it usually more convenient to let
/// GObject create a closure automatically by using one of the
/// g_signal_connect_*() functions which take a callback function/user
/// data pair.
/// 
/// Using closures has a number of important advantages over a simple
/// callback function/data pointer combination:
/// 
/// - Closures allow the callee to get the types of the callback parameters,
///   which means that language bindings don't have to write individual glue
///   for each callback type.
/// 
/// - The reference counting of `GClosure` makes it easy to handle reentrancy
///   right; if a callback is removed while it is being invoked, the closure
///   and its parameters won't be freed until the invocation finishes.
/// 
/// - `g_closure_invalidate()` and invalidation notifiers allow callbacks to be
///   automatically removed when the objects they point to go away.
///
/// The `ClosureRef` type acts as a lightweight Swift reference to an underlying `GClosure` instance.
/// It exposes methods that can operate on this data type through `ClosureProtocol` conformance.
/// Use `ClosureRef` only as an `unowned` reference to an existing `GClosure` instance.
///
public struct ClosureRef: ClosureProtocol {
        /// Untyped pointer to the underlying `GClosure` instance.
    /// For type-safe access, use the generated, typed pointer `closure_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ClosureRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GClosure>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GClosure>?) {
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

    /// Reference intialiser for a related type that implements `ClosureProtocol`
    @inlinable init<T: ClosureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    @inlinable init<ObjectT: ObjectProtocol>(object sizeofClosure: Int, object: ObjectT) {
            let result = g_closure_new_object(guint(sizeofClosure), object.object_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`.
    /// 
    /// This function is mainly useful when implementing new types of closures:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyClosure MyClosure;
    /// struct _MyClosure
    /// {
    ///   GClosure closure;
    ///   // extra data goes here
    /// };
    /// 
    /// static void
    /// my_closure_finalize (gpointer  notify_data,
    ///                      GClosure *closure)
    /// {
    ///   MyClosure *my_closure = (MyClosure *)closure;
    /// 
    ///   // free extra data here
    /// }
    /// 
    /// MyClosure *my_closure_new (gpointer data)
    /// {
    ///   GClosure *closure;
    ///   MyClosure *my_closure;
    /// 
    ///   closure = g_closure_new_simple (sizeof (MyClosure), data);
    ///   my_closure = (MyClosure *) closure;
    /// 
    ///   // initialize extra data here
    /// 
    ///   g_closure_add_finalize_notifier (closure, notify_data,
    ///                                    my_closure_finalize);
    ///   return my_closure;
    /// }
    /// ```
    /// 
    @inlinable init(simple sizeofClosure: Int, data: gpointer? = nil) {
            let result = g_closure_new_simple(guint(sizeofClosure), data)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }
    /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    @inlinable static func new<ObjectT: ObjectProtocol>(object sizeofClosure: Int, object: ObjectT) -> GLibObject.ClosureRef! {
            let result = g_closure_new_object(guint(sizeofClosure), object.object_ptr)
        guard let rv = ClosureRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`.
    /// 
    /// This function is mainly useful when implementing new types of closures:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyClosure MyClosure;
    /// struct _MyClosure
    /// {
    ///   GClosure closure;
    ///   // extra data goes here
    /// };
    /// 
    /// static void
    /// my_closure_finalize (gpointer  notify_data,
    ///                      GClosure *closure)
    /// {
    ///   MyClosure *my_closure = (MyClosure *)closure;
    /// 
    ///   // free extra data here
    /// }
    /// 
    /// MyClosure *my_closure_new (gpointer data)
    /// {
    ///   GClosure *closure;
    ///   MyClosure *my_closure;
    /// 
    ///   closure = g_closure_new_simple (sizeof (MyClosure), data);
    ///   my_closure = (MyClosure *) closure;
    /// 
    ///   // initialize extra data here
    /// 
    ///   g_closure_add_finalize_notifier (closure, notify_data,
    ///                                    my_closure_finalize);
    ///   return my_closure;
    /// }
    /// ```
    /// 
    @inlinable static func new(simple sizeofClosure: Int, data: gpointer? = nil) -> GLibObject.ClosureRef! {
            let result = g_closure_new_simple(guint(sizeofClosure), data)
        guard let rv = ClosureRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }
}

/// A `GClosure` represents a callback supplied by the programmer.
/// 
/// It will generally comprise a function of some kind and a marshaller
/// used to call it. It is the responsibility of the marshaller to
/// convert the arguments for the invocation from `GValues` into
/// a suitable form, perform the callback on the converted arguments,
/// and transform the return value back into a `GValue`.
/// 
/// In the case of C programs, a closure usually just holds a pointer
/// to a function and maybe a data argument, and the marshaller
/// converts between `GValue` and native C types. The GObject
/// library provides the `GCClosure` type for this purpose. Bindings for
/// other languages need marshallers which convert between `GValues`
/// and suitable representations in the runtime of the language in
/// order to use functions written in that language as callbacks. Use
/// `g_closure_set_marshal()` to set the marshaller on such a custom
/// closure implementation.
/// 
/// Within GObject, closures play an important role in the
/// implementation of signals. When a signal is registered, the
/// `c_marshaller` argument to `g_signal_new()` specifies the default C
/// marshaller for any closure which is connected to this
/// signal. GObject provides a number of C marshallers for this
/// purpose, see the g_cclosure_marshal_*() functions. Additional C
/// marshallers can be generated with the [glib-genmarshal](#glib-genmarshal)
/// utility.  Closures can be explicitly connected to signals with
/// `g_signal_connect_closure()`, but it usually more convenient to let
/// GObject create a closure automatically by using one of the
/// g_signal_connect_*() functions which take a callback function/user
/// data pair.
/// 
/// Using closures has a number of important advantages over a simple
/// callback function/data pointer combination:
/// 
/// - Closures allow the callee to get the types of the callback parameters,
///   which means that language bindings don't have to write individual glue
///   for each callback type.
/// 
/// - The reference counting of `GClosure` makes it easy to handle reentrancy
///   right; if a callback is removed while it is being invoked, the closure
///   and its parameters won't be freed until the invocation finishes.
/// 
/// - `g_closure_invalidate()` and invalidation notifiers allow callbacks to be
///   automatically removed when the objects they point to go away.
///
/// The `Closure` type acts as a reference-counted owner of an underlying `GClosure` instance.
/// It provides the methods that can operate on this data type through `ClosureProtocol` conformance.
/// Use `Closure` as a strong reference or owner of a `GClosure` instance.
///
open class Closure: ClosureProtocol {
        /// Untyped pointer to the underlying `GClosure` instance.
    /// For type-safe access, use the generated, typed pointer `closure_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GClosure>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GClosure>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// Will retain `GClosure`.
    /// i.e., ownership is transferred to the `Closure` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(op)
        g_closure_ref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// Reference intialiser for a related type that implements `ClosureProtocol`
    /// Will retain `GClosure`.
    /// - Parameter other: an instance of a related type that implements `ClosureProtocol`
    @inlinable public init<T: ClosureProtocol>(_ other: T) {
        ptr = other.ptr
        g_closure_ref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// Releases the underlying `GClosure` instance using `g_closure_unref`.
    deinit {
        g_closure_unref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        g_closure_ref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        g_closure_ref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        g_closure_ref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        g_closure_ref(ptr.assumingMemoryBound(to: GClosure.self))
    }

    /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    @inlinable public init<ObjectT: ObjectProtocol>(object sizeofClosure: Int, object: ObjectT) {
            let result = g_closure_new_object(guint(sizeofClosure), object.object_ptr)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`.
    /// 
    /// This function is mainly useful when implementing new types of closures:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyClosure MyClosure;
    /// struct _MyClosure
    /// {
    ///   GClosure closure;
    ///   // extra data goes here
    /// };
    /// 
    /// static void
    /// my_closure_finalize (gpointer  notify_data,
    ///                      GClosure *closure)
    /// {
    ///   MyClosure *my_closure = (MyClosure *)closure;
    /// 
    ///   // free extra data here
    /// }
    /// 
    /// MyClosure *my_closure_new (gpointer data)
    /// {
    ///   GClosure *closure;
    ///   MyClosure *my_closure;
    /// 
    ///   closure = g_closure_new_simple (sizeof (MyClosure), data);
    ///   my_closure = (MyClosure *) closure;
    /// 
    ///   // initialize extra data here
    /// 
    ///   g_closure_add_finalize_notifier (closure, notify_data,
    ///                                    my_closure_finalize);
    ///   return my_closure;
    /// }
    /// ```
    /// 
    @inlinable public init(simple sizeofClosure: Int, data: gpointer? = nil) {
            let result = g_closure_new_simple(guint(sizeofClosure), data)
        let rv = result
            ptr = UnsafeMutableRawPointer(rv)
    }

    /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    @inlinable public static func new<ObjectT: ObjectProtocol>(object sizeofClosure: Int, object: ObjectT) -> GLibObject.Closure! {
            let result = g_closure_new_object(guint(sizeofClosure), object.object_ptr)
        guard let rv = Closure(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`.
    /// 
    /// This function is mainly useful when implementing new types of closures:
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyClosure MyClosure;
    /// struct _MyClosure
    /// {
    ///   GClosure closure;
    ///   // extra data goes here
    /// };
    /// 
    /// static void
    /// my_closure_finalize (gpointer  notify_data,
    ///                      GClosure *closure)
    /// {
    ///   MyClosure *my_closure = (MyClosure *)closure;
    /// 
    ///   // free extra data here
    /// }
    /// 
    /// MyClosure *my_closure_new (gpointer data)
    /// {
    ///   GClosure *closure;
    ///   MyClosure *my_closure;
    /// 
    ///   closure = g_closure_new_simple (sizeof (MyClosure), data);
    ///   my_closure = (MyClosure *) closure;
    /// 
    ///   // initialize extra data here
    /// 
    ///   g_closure_add_finalize_notifier (closure, notify_data,
    ///                                    my_closure_finalize);
    ///   return my_closure;
    /// }
    /// ```
    /// 
    @inlinable public static func new(simple sizeofClosure: Int, data: gpointer? = nil) -> GLibObject.Closure! {
            let result = g_closure_new_simple(guint(sizeofClosure), data)
        guard let rv = Closure(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

}

// MARK: no Closure properties

// MARK: no Closure signals

// MARK: Closure has no signals
// MARK: Closure Record: ClosureProtocol extension (methods and fields)
public extension ClosureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GClosure` instance.
    @inlinable var closure_ptr: UnsafeMutablePointer<GClosure>! { return ptr?.assumingMemoryBound(to: GClosure.self) }

    /// Registers a finalization notifier which will be called when the
    /// reference count of `closure` goes down to 0.
    /// 
    /// Multiple finalization notifiers on a single closure are invoked in
    /// unspecified order. If a single call to `g_closure_unref()` results in
    /// the closure being both invalidated and finalized, then the invalidate
    /// notifiers will be run before the finalize notifiers.
    @inlinable func addFinalizeNotifier(notifyData: gpointer? = nil, notifyFunc: GClosureNotify? = nil) {
        
        g_closure_add_finalize_notifier(closure_ptr, notifyData, notifyFunc)
        
    }

    /// Registers an invalidation notifier which will be called when the
    /// `closure` is invalidated with `g_closure_invalidate()`.
    /// 
    /// Invalidation notifiers are invoked before finalization notifiers,
    /// in an unspecified order.
    @inlinable func addInvalidateNotifier(notifyData: gpointer? = nil, notifyFunc: GClosureNotify? = nil) {
        
        g_closure_add_invalidate_notifier(closure_ptr, notifyData, notifyFunc)
        
    }

    /// Adds a pair of notifiers which get invoked before and after the
    /// closure callback, respectively.
    /// 
    /// This is typically used to protect the extra arguments for the
    /// duration of the callback. See `g_object_watch_closure()` for an
    /// example of marshal guards.
    @inlinable func addMarshalGuards(preMarshalData: gpointer? = nil, preMarshalNotify: GClosureNotify? = nil, postMarshalData: gpointer? = nil, postMarshalNotify: GClosureNotify? = nil) {
        
        g_closure_add_marshal_guards(closure_ptr, preMarshalData, preMarshalNotify, postMarshalData, postMarshalNotify)
        
    }

    /// Sets a flag on the closure to indicate that its calling
    /// environment has become invalid, and thus causes any future
    /// invocations of `g_closure_invoke()` on this `closure` to be
    /// ignored.
    /// 
    /// Also, invalidation notifiers installed on the closure will
    /// be called at this point. Note that unless you are holding a
    /// reference to the closure yourself, the invalidation notifiers may
    /// unref the closure and cause it to be destroyed, so if you need to
    /// access the closure after calling `g_closure_invalidate()`, make sure
    /// that you've previously called `g_closure_ref()`.
    /// 
    /// Note that `g_closure_invalidate()` will also be called when the
    /// reference count of a closure drops to zero (unless it has already
    /// been invalidated before).
    @inlinable func invalidate() {
        
        g_closure_invalidate(closure_ptr)
        
    }

    /// Invokes the closure, i.e. executes the callback represented by the `closure`.
    @inlinable func invoke(returnValue: ValueRef? = nil, nParamValues: Int, paramValues: UnsafePointer<GValue>!, invocationHint: gpointer? = nil) {
            
        g_closure_invoke(closure_ptr, returnValue?.value_ptr, guint(nParamValues), paramValues, invocationHint)
            
    }
    /// Invokes the closure, i.e. executes the callback represented by the `closure`.
    @inlinable func invoke<ValueT: ValueProtocol>(returnValue: ValueT?, nParamValues: Int, paramValues: UnsafePointer<GValue>!, invocationHint: gpointer? = nil) {
        
        g_closure_invoke(closure_ptr, returnValue?.value_ptr, guint(nParamValues), paramValues, invocationHint)
        
    }

    /// Increments the reference count on a closure to force it staying
    /// alive while the caller holds a pointer to it.
    @discardableResult @inlinable func ref() -> GLibObject.ClosureRef! {
        let result = g_closure_ref(closure_ptr)
        guard let rv = ClosureRef(gconstpointer: gconstpointer(result)) else { return nil }
        return rv
    }

    /// Removes a finalization notifier.
    /// 
    /// Notice that notifiers are automatically removed after they are run.
    @inlinable func removeFinalizeNotifier(notifyData: gpointer? = nil, notifyFunc: GClosureNotify?) {
        
        g_closure_remove_finalize_notifier(closure_ptr, notifyData, notifyFunc)
        
    }

    /// Removes an invalidation notifier.
    /// 
    /// Notice that notifiers are automatically removed after they are run.
    @inlinable func removeInvalidateNotifier(notifyData: gpointer? = nil, notifyFunc: GClosureNotify?) {
        
        g_closure_remove_invalidate_notifier(closure_ptr, notifyData, notifyFunc)
        
    }

    /// Sets the marshaller of `closure`.
    /// 
    /// The `marshal_data` of `marshal` provides a way for a meta marshaller to
    /// provide additional information to the marshaller.
    /// 
    /// For GObject's C predefined marshallers (the `g_cclosure_marshal_*()`
    /// functions), what it provides is a callback function to use instead of
    /// `closure-`&gt;callback.
    /// 
    /// See also: `g_closure_set_meta_marshal()`
    @inlinable func set(marshal: @escaping GClosureMarshal) {
        
        g_closure_set_marshal(closure_ptr, marshal)
        
    }

    /// Sets the meta marshaller of `closure`.
    /// 
    /// A meta marshaller wraps the `closure`'s marshal and modifies the way
    /// it is called in some fashion. The most common use of this facility
    /// is for C callbacks.
    /// 
    /// The same marshallers (generated by [glib-genmarshal](#glib-genmarshal)),
    /// are used everywhere, but the way that we get the callback function
    /// differs. In most cases we want to use the `closure`'s callback, but in
    /// other cases we want to use some different technique to retrieve the
    /// callback function.
    /// 
    /// For example, class closures for signals (see
    /// `g_signal_type_cclosure_new()`) retrieve the callback function from a
    /// fixed offset in the class structure.  The meta marshaller retrieves
    /// the right callback and passes it to the marshaller as the
    /// `marshal_data` argument.
    @inlinable func setMetaMarshal(marshalData: gpointer? = nil, metaMarshal: GClosureMarshal! = nil) {
        
        g_closure_set_meta_marshal(closure_ptr, marshalData, metaMarshal)
        
    }

    /// Takes over the initial ownership of a closure.
    /// 
    /// Each closure is initially created in a "floating" state, which means
    /// that the initial reference count is not owned by any caller.
    /// 
    /// This function checks to see if the object is still floating, and if so,
    /// unsets the floating state and decreases the reference count. If the
    /// closure is not floating, `g_closure_sink()` does nothing.
    /// 
    /// The reason for the existence of the floating state is to prevent
    /// cumbersome code sequences like:
    /// 
    /// (C Language Example):
    /// ```C
    /// closure = g_cclosure_new (cb_func, cb_data);
    /// g_source_set_closure (source, closure);
    /// g_closure_unref (closure); // GObject doesn't really need this
    /// ```
    /// 
    /// Because `g_source_set_closure()` (and similar functions) take ownership of the
    /// initial reference count, if it is unowned, we instead can write:
    /// 
    /// (C Language Example):
    /// ```C
    /// g_source_set_closure (source, g_cclosure_new (cb_func, cb_data));
    /// ```
    /// 
    /// Generally, this function is used together with `g_closure_ref()`. An example
    /// of storing a closure for later notification looks like:
    /// 
    /// (C Language Example):
    /// ```C
    /// static GClosure *notify_closure = NULL;
    /// void
    /// foo_notify_set_closure (GClosure *closure)
    /// {
    ///   if (notify_closure)
    ///     g_closure_unref (notify_closure);
    ///   notify_closure = closure;
    ///   if (notify_closure)
    ///     {
    ///       g_closure_ref (notify_closure);
    ///       g_closure_sink (notify_closure);
    ///     }
    /// }
    /// ```
    /// 
    /// Because `g_closure_sink()` may decrement the reference count of a closure
    /// (if it hasn't been called on `closure` yet) just like `g_closure_unref()`,
    /// `g_closure_ref()` should be called prior to this function.
    @inlinable func sink() {
        
        g_closure_sink(closure_ptr)
        
    }

    /// Decrements the reference count of a closure after it was previously
    /// incremented by the same caller.
    /// 
    /// If no other callers are using the closure, then the closure will be
    /// destroyed and freed.
    @inlinable func unref() {
        
        g_closure_unref(closure_ptr)
        
    }

    /// A `GClosureMarshal` function for use with signals with handlers that
    /// take two boxed pointers as arguments and return a boolean.  If you
    /// have such a signal, you will probably also need to use an
    /// accumulator, such as `g_signal_accumulator_true_handled()`.
    @inlinable func cclosureMarshalBOOLEANBOXEDBOXED<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_BOOLEAN__BOXED_BOXED(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
    /// denotes a flags type.
    @inlinable func cclosureMarshalBOOLEANFLAGS<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_BOOLEAN__FLAGS(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalSTRINGOBJECTPOINTER<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_STRING__OBJECT_POINTER(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDBOOLEAN<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__BOOLEAN(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDBOXED<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__BOXED(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDCHAR<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__CHAR(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDDOUBLE<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__DOUBLE(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
    @inlinable func cclosureMarshalVOIDENUM<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__ENUM(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
    @inlinable func cclosureMarshalVOIDFLAGS<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__FLAGS(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDFLOAT<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__FLOAT(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDINT<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__INT(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDLONG<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__LONG(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDOBJECT<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__OBJECT(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDPARAM<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__PARAM(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDPOINTER<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__POINTER(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDSTRING<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__STRING(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDUCHAR<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__UCHAR(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDUINT<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__UINT(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDUINTPOINTER<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__UINT_POINTER(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDULONG<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__ULONG(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDVARIANT<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__VARIANT(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer user_data)`.
    @inlinable func cclosureMarshalVOIDVOID<ValueT: ValueProtocol>(returnValue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_VOID__VOID(closure_ptr, returnValue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// A generic marshaller function implemented via
    /// [libffi](http://sourceware.org/libffi/).
    /// 
    /// Normally this function is not passed explicitly to `g_signal_new()`,
    /// but used automatically by GLib when specifying a `nil` marshaller.
    @inlinable func cclosureMarshalGeneric<ValueT: ValueProtocol>(returnGvalue: ValueT, nParamValues: Int, paramValues: ValueT, invocationHint: gpointer? = nil, marshalData: gpointer? = nil) {
        
        g_cclosure_marshal_generic(closure_ptr, returnGvalue.value_ptr, guint(nParamValues), paramValues.value_ptr, invocationHint, marshalData)
        
    }

    /// Connects a closure to a signal for a particular object.
    @inlinable func signalConnectClosure<ObjectT: ObjectProtocol>(instance: ObjectT, detailedSignal: UnsafePointer<gchar>!, after: Bool) -> Int {
        let result = g_signal_connect_closure(instance.object_ptr, detailedSignal, closure_ptr, gboolean((after) ? 1 : 0))
        let rv = Int(result)
        return rv
    }

    /// Connects a closure to a signal for a particular object.
    @inlinable func signalConnectClosureByID<ObjectT: ObjectProtocol>(instance: ObjectT, signalID: Int, detail: GQuark, after: Bool) -> Int {
        let result = g_signal_connect_closure_by_id(instance.object_ptr, guint(signalID), detail, closure_ptr, gboolean((after) ? 1 : 0))
        let rv = Int(result)
        return rv
    }

    /// Finds the first signal handler that matches certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// The match `mask` has to be non-0 for successful matches.
    /// If no handler was found, 0 is returned.
    @inlinable func signalHandlerFind<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handler_find(instance.object_ptr, mask.value, guint(signalID), detail, closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Blocks all handlers on an instance that match a certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of blocked handlers
    /// otherwise.
    @inlinable func signalHandlersBlockMatched<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handlers_block_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Disconnects all handlers on an instance that match a certain
    /// selection criteria. The criteria mask is passed as an OR-ed
    /// combination of `GSignalMatchType` flags, and the criteria values are
    /// passed as arguments.  Passing at least one of the
    /// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
    /// `G_SIGNAL_MATCH_DATA` match flags is required for successful
    /// matches.  If no handlers were found, 0 is returned, the number of
    /// disconnected handlers otherwise.
    @inlinable func signalHandlersDisconnectMatched<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handlers_disconnect_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Unblocks all handlers on an instance that match a certain selection
    /// criteria. The criteria mask is passed as an OR-ed combination of
    /// `GSignalMatchType` flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of unblocked handlers
    /// otherwise. The match criteria should not apply to any handlers that are
    /// not currently blocked.
    @inlinable func signalHandlersUnblockMatched<ObjectT: ObjectProtocol>(instance: ObjectT, mask: SignalMatchType, signalID: Int, detail: GQuark, `func`: gpointer? = nil, data: gpointer? = nil) -> Int {
        let result = g_signal_handlers_unblock_matched(instance.object_ptr, mask.value, guint(signalID), detail, closure_ptr, `func`, data)
        let rv = Int(result)
        return rv
    }

    /// Creates a new signal. (This is usually done in the class initializer.)
    /// 
    /// See `g_signal_new()` for details on allowed signal names.
    /// 
    /// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
    /// the marshaller for this signal.
    @inlinable func signalNewValist(signalName: UnsafePointer<gchar>!, itype: GType, signalFlags: SignalFlags, accumulator: GSignalAccumulator! = nil, accuData: gpointer? = nil, cMarshaller: GSignalCMarshaller! = nil, returnType: GType, nParams: Int, args: CVaListPointer) -> Int {
        let result = g_signal_new_valist(signalName, itype, signalFlags.value, closure_ptr, accumulator, accuData, cMarshaller, returnType, guint(nParams), args)
        let rv = Int(result)
        return rv
    }

    /// Creates a new signal. (This is usually done in the class initializer.)
    /// 
    /// See `g_signal_new()` for details on allowed signal names.
    /// 
    /// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
    /// the marshaller for this signal.
    @inlinable func signalNewv(signalName: UnsafePointer<gchar>!, itype: GType, signalFlags: SignalFlags, accumulator: GSignalAccumulator! = nil, accuData: gpointer? = nil, cMarshaller: GSignalCMarshaller! = nil, returnType: GType, nParams: Int, paramTypes: UnsafeMutablePointer<GType>! = nil) -> Int {
        let result = g_signal_newv(signalName, itype, signalFlags.value, closure_ptr, accumulator, accuData, cMarshaller, returnType, guint(nParams), paramTypes)
        let rv = Int(result)
        return rv
    }

    /// Overrides the class closure (i.e. the default handler) for the given signal
    /// for emissions on instances of `instance_type`. `instance_type` must be derived
    /// from the type to which the signal belongs.
    /// 
    /// See `g_signal_chain_from_overridden()` and
    /// `g_signal_chain_from_overridden_handler()` for how to chain up to the
    /// parent class closure from inside the overridden one.
    @inlinable func signalOverrideClassClosure(signalID: Int, instanceType: GType) {
        
        g_signal_override_class_closure(guint(signalID), instanceType, closure_ptr)
        
    }

    /// Set the callback for a source as a `GClosure`.
    /// 
    /// If the source is not one of the standard GLib types, the `closure_callback`
    /// and `closure_marshal` fields of the `GSourceFuncs` structure must have been
    /// filled in with pointers to appropriate functions.
    @inlinable func sourceSetClosure<GLibSourceT: GLib.SourceProtocol>(source: GLibSourceT) {
        
        g_source_set_closure(source.source_ptr, closure_ptr)
        
    }

    // var refCount is unavailable because ref_count is private

    // var metaMarshalNouse is unavailable because meta_marshal_nouse is private

    // var nGuards is unavailable because n_guards is private

    // var nFnotifiers is unavailable because n_fnotifiers is private

    // var nInotifiers is unavailable because n_inotifiers is private

    // var inInotify is unavailable because in_inotify is private

    // var floating is unavailable because floating is private

    // var derivativeFlag is unavailable because derivative_flag is private

    /// Indicates whether the closure is currently being invoked with
    ///  `g_closure_invoke()`
    @inlinable var inMarshal: guint {
        /// Indicates whether the closure is currently being invoked with
        ///  `g_closure_invoke()`
        get {
            let rv = closure_ptr.pointee.in_marshal
    return rv
        }
        /// Indicates whether the closure is currently being invoked with
        ///  `g_closure_invoke()`
         set {
            closure_ptr.pointee.in_marshal = newValue
        }
    }

    /// Indicates whether the closure has been invalidated by
    ///  `g_closure_invalidate()`
    @inlinable var isInvalid: guint {
        /// Indicates whether the closure has been invalidated by
        ///  `g_closure_invalidate()`
        get {
            let rv = closure_ptr.pointee.is_invalid
    return rv
        }
        /// Indicates whether the closure has been invalidated by
        ///  `g_closure_invalidate()`
         set {
            closure_ptr.pointee.is_invalid = newValue
        }
    }

    // var marshal is unavailable because marshal is void

    // var data is unavailable because data is private

    // var notifiers is unavailable because notifiers is private

}



// MARK: - ClosureNotifyData Record


///
/// The `ClosureNotifyDataProtocol` protocol exposes the methods and properties of an underlying `GClosureNotifyData` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `ClosureNotifyData`.
/// Alternatively, use `ClosureNotifyDataRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
public protocol ClosureNotifyDataProtocol {
        /// Untyped pointer to the underlying `GClosureNotifyData` instance.
    var ptr: UnsafeMutableRawPointer! { get }

    /// Typed pointer to the underlying `GClosureNotifyData` instance.
    var _ptr: UnsafeMutablePointer<GClosureNotifyData>! { get }

    /// Required Initialiser for types conforming to `ClosureNotifyDataProtocol`
    init(raw: UnsafeMutableRawPointer)
}


///
/// The `ClosureNotifyDataRef` type acts as a lightweight Swift reference to an underlying `GClosureNotifyData` instance.
/// It exposes methods that can operate on this data type through `ClosureNotifyDataProtocol` conformance.
/// Use `ClosureNotifyDataRef` only as an `unowned` reference to an existing `GClosureNotifyData` instance.
///
public struct ClosureNotifyDataRef: ClosureNotifyDataProtocol {
        /// Untyped pointer to the underlying `GClosureNotifyData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!
}

public extension ClosureNotifyDataRef {
    /// Designated initialiser from the underlying `C` data type
    @inlinable init(_ p: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type
    @inlinable init(_ p: UnsafePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: p))
    }

    /// Conditional initialiser from an optional pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafeMutablePointer<GClosureNotifyData>?) {
        guard let p = maybePointer else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Conditional initialiser from an optional, non-mutable pointer to the underlying `C` data type
    @inlinable init!(_ maybePointer: UnsafePointer<GClosureNotifyData>?) {
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

    /// Reference intialiser for a related type that implements `ClosureNotifyDataProtocol`
    @inlinable init<T: ClosureNotifyDataProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    @inlinable init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    @inlinable init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    @inlinable init(mutating raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    @inlinable init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    @inlinable init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }


///
/// The `ClosureNotifyData` type acts as an owner of an underlying `GClosureNotifyData` instance.
/// It provides the methods that can operate on this data type through `ClosureNotifyDataProtocol` conformance.
/// Use `ClosureNotifyData` as a strong reference or owner of a `GClosureNotifyData` instance.
///
open class ClosureNotifyData: ClosureNotifyDataProtocol {
        /// Untyped pointer to the underlying `GClosureNotifyData` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer!

    /// Designated initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Designated initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(_ op: UnsafePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(UnsafeMutablePointer(mutating: op))
    }

    /// Optional initialiser from a non-mutating `gpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: gpointer to the underlying object
    @inlinable public init!(gpointer op: gpointer?) {
        guard let p = UnsafeMutableRawPointer(op) else { return nil }
        ptr = p
    }

    /// Optional initialiser from a non-mutating `gconstpointer` to
    /// the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(gconstpointer op: gconstpointer?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Optional initialiser from a constant pointer to the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafePointer<GClosureNotifyData>?) {
        guard let p = UnsafeMutablePointer(mutating: op) else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Optional initialiser from the underlying `C` data type.
    /// This creates an instance without performing an unbalanced retain
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init!(_ op: UnsafeMutablePointer<GClosureNotifyData>?) {
        guard let p = op else { return nil }
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Designated initialiser from the underlying `C` data type.
    /// `GClosureNotifyData` does not allow reference counting, so despite the name no actual retaining will occur.
    /// i.e., ownership is transferred to the `ClosureNotifyData` instance.
    /// - Parameter op: pointer to the underlying object
    @inlinable public init(retaining op: UnsafeMutablePointer<GClosureNotifyData>) {
        ptr = UnsafeMutableRawPointer(op)
        // no reference counting for GClosureNotifyData, cannot ref(_ptr)
    }

    /// Reference intialiser for a related type that implements `ClosureNotifyDataProtocol`
    /// `GClosureNotifyData` does not allow reference counting.
    /// - Parameter other: an instance of a related type that implements `ClosureNotifyDataProtocol`
    @inlinable public init<T: ClosureNotifyDataProtocol>(_ other: T) {
        ptr = other.ptr
        // no reference counting for GClosureNotifyData, cannot ref(_ptr)
    }

    /// Do-nothing destructor for `GClosureNotifyData`.
    deinit {
        // no reference counting for GClosureNotifyData, cannot unref(_ptr)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(cPointer p: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe typed, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter cPointer: pointer to the underlying object
    @inlinable public init<T>(retainingCPointer cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
        // no reference counting for GClosureNotifyData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: raw pointer to the underlying object
    @inlinable public init(raw p: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    @inlinable public init(retainingRaw raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
        // no reference counting for GClosureNotifyData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: mutable raw pointer to the underlying object
    @inlinable public required init(raw p: UnsafeMutableRawPointer) {
        ptr = p
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter raw: mutable raw pointer to the underlying object
    @inlinable public init(retainingRaw raw: UnsafeMutableRawPointer) {
        ptr = raw
        // no reference counting for GClosureNotifyData, cannot ref(_ptr)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(opaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
    }

    /// Unsafe untyped, retaining initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureNotifyDataProtocol`.**
    /// - Parameter p: opaque pointer to the underlying object
    @inlinable public init(retainingOpaquePointer p: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(p)
        // no reference counting for GClosureNotifyData, cannot ref(_ptr)
    }



}

// MARK: no ClosureNotifyData properties

// MARK: no ClosureNotifyData signals

// MARK: ClosureNotifyData has no signals
// MARK: ClosureNotifyData Record: ClosureNotifyDataProtocol extension (methods and fields)
public extension ClosureNotifyDataProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GClosureNotifyData` instance.
    @inlinable var _ptr: UnsafeMutablePointer<GClosureNotifyData>! { return ptr?.assumingMemoryBound(to: GClosureNotifyData.self) }


    @inlinable var data: gpointer? {
        get {
            let rv = _ptr.pointee.data
    return rv
        }
         set {
            _ptr.pointee.data = newValue
        }
    }

    @inlinable var notify: GClosureNotify! {
        get {
            let rv = _ptr.pointee.notify
    return rv
        }
         set {
            _ptr.pointee.notify = newValue
        }
    }

}



