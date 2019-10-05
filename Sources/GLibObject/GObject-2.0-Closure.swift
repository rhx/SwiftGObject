import CGLib
import GLib

// MARK: - Closure Record

/// The `ClosureProtocol` protocol exposes the methods and properties of an underlying `GClosure` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `Closure`.
/// Alternatively, use `ClosureRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A `GClosure` represents a callback supplied by the programmer. It
/// will generally comprise a function of some kind and a marshaller
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
/// marshallers can be generated with the [glib-genmarshal][glib-genmarshal]
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
public protocol ClosureProtocol {
    /// Untyped pointer to the underlying `GClosure` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GClosure` instance.
    var closure_ptr: UnsafeMutablePointer<GClosure> { get }
}

/// The `ClosureRef` type acts as a lightweight Swift reference to an underlying `GClosure` instance.
/// It exposes methods that can operate on this data type through `ClosureProtocol` conformance.
/// Use `ClosureRef` only as an `unowned` reference to an existing `GClosure` instance.
///
/// A `GClosure` represents a callback supplied by the programmer. It
/// will generally comprise a function of some kind and a marshaller
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
/// marshallers can be generated with the [glib-genmarshal][glib-genmarshal]
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
public struct ClosureRef: ClosureProtocol {
    /// Untyped pointer to the underlying `GClosure` instance.
    /// For type-safe access, use the generated, typed pointer `closure_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension ClosureRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `ClosureProtocol`
    init<T: ClosureProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    init(object sizeof_closure: CUnsignedInt, object: ObjectProtocol) {
        let rv = g_closure_new_object(guint(sizeof_closure), cast(object.ptr))
        self.init(cast(rv))
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`. This function is mainly useful when
    /// implementing new types of closures.
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
    init(simple sizeof_closure: CUnsignedInt, data: UnsafeMutableRawPointer) {
        let rv = g_closure_new_simple(guint(sizeof_closure), cast(data))
        self.init(cast(rv))
    }
    /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    static func new(object sizeof_closure: CUnsignedInt, object: ObjectProtocol) -> ClosureRef! {
        let rv = g_closure_new_object(guint(sizeof_closure), cast(object.ptr))
        return rv.map { ClosureRef(cast($0)) }
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`. This function is mainly useful when
    /// implementing new types of closures.
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
    static func new(simple sizeof_closure: CUnsignedInt, data: UnsafeMutableRawPointer) -> ClosureRef! {
        let rv = g_closure_new_simple(guint(sizeof_closure), cast(data))
        return rv.map { ClosureRef(cast($0)) }
    }
}

/// The `Closure` type acts as a reference-counted owner of an underlying `GClosure` instance.
/// It provides the methods that can operate on this data type through `ClosureProtocol` conformance.
/// Use `Closure` as a strong reference or owner of a `GClosure` instance.
///
/// A `GClosure` represents a callback supplied by the programmer. It
/// will generally comprise a function of some kind and a marshaller
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
/// marshallers can be generated with the [glib-genmarshal][glib-genmarshal]
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
open class Closure: ClosureProtocol {
    /// Untyped pointer to the underlying `GClosure` instance.
    /// For type-safe access, use the generated, typed pointer `closure_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `Closure` instance.
    public init(_ op: UnsafeMutablePointer<GClosure>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `ClosureProtocol`
    /// Will retain `GClosure`.
    public convenience init<T: ClosureProtocol>(_ other: T) {
        self.init(cast(other.closure_ptr))
        g_closure_ref(cast(closure_ptr))
    }

    /// Releases the underlying `GClosure` instance using `g_closure_unref`.
    deinit {
        g_closure_unref(cast(closure_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GClosure.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GClosure.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `ClosureProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GClosure>(opaquePointer))
    }

    /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    public convenience init(object sizeof_closure: CUnsignedInt, object: ObjectProtocol) {
        let rv = g_closure_new_object(guint(sizeof_closure), cast(object.ptr))
        self.init(cast(rv))
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`. This function is mainly useful when
    /// implementing new types of closures.
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
    public convenience init(simple sizeof_closure: CUnsignedInt, data: UnsafeMutableRawPointer) {
        let rv = g_closure_new_simple(guint(sizeof_closure), cast(data))
        self.init(cast(rv))
    }

    /// A variant of `g_closure_new_simple()` which stores `object` in the
    /// `data` field of the closure and calls `g_object_watch_closure()` on
    /// `object` and the created closure. This function is mainly useful
    /// when implementing new types of closures.
    public static func new(object sizeof_closure: CUnsignedInt, object: ObjectProtocol) -> Closure! {
        let rv = g_closure_new_object(guint(sizeof_closure), cast(object.ptr))
        return rv.map { Closure(cast($0)) }
    }

    /// Allocates a struct of the given size and initializes the initial
    /// part as a `GClosure`. This function is mainly useful when
    /// implementing new types of closures.
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
    public static func new(simple sizeof_closure: CUnsignedInt, data: UnsafeMutableRawPointer) -> Closure! {
        let rv = g_closure_new_simple(guint(sizeof_closure), cast(data))
        return rv.map { Closure(cast($0)) }
    }

}

// MARK: - no Closure properties

// MARK: - no signals


public extension ClosureProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GClosure` instance.
    var closure_ptr: UnsafeMutablePointer<GClosure> { return ptr.assumingMemoryBound(to: GClosure.self) }

    /// Registers a finalization notifier which will be called when the
    /// reference count of `closure` goes down to 0. Multiple finalization
    /// notifiers on a single closure are invoked in unspecified order. If
    /// a single call to `g_closure_unref()` results in the closure being
    /// both invalidated and finalized, then the invalidate notifiers will
    /// be run before the finalize notifiers.
    func addFinalizeNotifier(notifyData notify_data: UnsafeMutableRawPointer, notifyFunc notify_func: @escaping ClosureNotify) {
        g_closure_add_finalize_notifier(cast(closure_ptr), cast(notify_data), notify_func)
    
    }

    /// Registers an invalidation notifier which will be called when the
    /// `closure` is invalidated with `g_closure_invalidate()`. Invalidation
    /// notifiers are invoked before finalization notifiers, in an
    /// unspecified order.
    func addInvalidateNotifier(notifyData notify_data: UnsafeMutableRawPointer, notifyFunc notify_func: @escaping ClosureNotify) {
        g_closure_add_invalidate_notifier(cast(closure_ptr), cast(notify_data), notify_func)
    
    }

    /// Adds a pair of notifiers which get invoked before and after the
    /// closure callback, respectively. This is typically used to protect
    /// the extra arguments for the duration of the callback. See
    /// `g_object_watch_closure()` for an example of marshal guards.
    func addMarshalGuards(preMarshalData pre_marshal_data: UnsafeMutableRawPointer, preMarshalNotify pre_marshal_notify: @escaping ClosureNotify, postMarshalData post_marshal_data: UnsafeMutableRawPointer, postMarshalNotify post_marshal_notify: @escaping ClosureNotify) {
        g_closure_add_marshal_guards(cast(closure_ptr), cast(pre_marshal_data), pre_marshal_notify, cast(post_marshal_data), post_marshal_notify)
    
    }

    /// Sets a flag on the closure to indicate that its calling
    /// environment has become invalid, and thus causes any future
    /// invocations of `g_closure_invoke()` on this `closure` to be
    /// ignored. Also, invalidation notifiers installed on the closure will
    /// be called at this point. Note that unless you are holding a
    /// reference to the closure yourself, the invalidation notifiers may
    /// unref the closure and cause it to be destroyed, so if you need to
    /// access the closure after calling `g_closure_invalidate()`, make sure
    /// that you've previously called `g_closure_ref()`.
    /// 
    /// Note that `g_closure_invalidate()` will also be called when the
    /// reference count of a closure drops to zero (unless it has already
    /// been invalidated before).
    func invalidate() {
        g_closure_invalidate(cast(closure_ptr))
    
    }

    /// Invokes the closure, i.e. executes the callback represented by the `closure.`
    func invoke(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: UnsafePointer<GValue>, invocationHint invocation_hint: UnsafeMutableRawPointer) {
        g_closure_invoke(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values), cast(invocation_hint))
    
    }

    /// Increments the reference count on a closure to force it staying
    /// alive while the caller holds a pointer to it.
    func ref() -> UnsafeMutablePointer<GClosure>! {
        let rv = g_closure_ref(cast(closure_ptr))
        return cast(rv)
    }

    /// Removes a finalization notifier.
    /// 
    /// Notice that notifiers are automatically removed after they are run.
    func removeFinalizeNotifier(notifyData notify_data: UnsafeMutableRawPointer, notifyFunc notify_func: @escaping ClosureNotify) {
        g_closure_remove_finalize_notifier(cast(closure_ptr), cast(notify_data), notify_func)
    
    }

    /// Removes an invalidation notifier.
    /// 
    /// Notice that notifiers are automatically removed after they are run.
    func removeInvalidateNotifier(notifyData notify_data: UnsafeMutableRawPointer, notifyFunc notify_func: @escaping ClosureNotify) {
        g_closure_remove_invalidate_notifier(cast(closure_ptr), cast(notify_data), notify_func)
    
    }

    /// Sets the marshaller of `closure`. The `marshal_data`
    /// of `marshal` provides a way for a meta marshaller to provide additional
    /// information to the marshaller. (See `g_closure_set_meta_marshal()`.) For
    /// GObject's C predefined marshallers (the g_cclosure_marshal_*()
    /// functions), what it provides is a callback function to use instead of
    /// `closure`->callback.
    func set(marshal: @escaping ClosureMarshal) {
        g_closure_set_marshal(cast(closure_ptr), marshal)
    
    }

    /// Sets the meta marshaller of `closure`.  A meta marshaller wraps
    /// `closure`->marshal and modifies the way it is called in some
    /// fashion. The most common use of this facility is for C callbacks.
    /// The same marshallers (generated by [glib-genmarshal][glib-genmarshal]),
    /// are used everywhere, but the way that we get the callback function
    /// differs. In most cases we want to use `closure`->callback, but in
    /// other cases we want to use some different technique to retrieve the
    /// callback function.
    /// 
    /// For example, class closures for signals (see
    /// `g_signal_type_cclosure_new()`) retrieve the callback function from a
    /// fixed offset in the class structure.  The meta marshaller retrieves
    /// the right callback and passes it to the marshaller as the
    /// `marshal_data` argument.
    func setMetaMarshal(marshalData marshal_data: UnsafeMutableRawPointer, metaMarshal meta_marshal: @escaping ClosureMarshal) {
        g_closure_set_meta_marshal(cast(closure_ptr), cast(marshal_data), meta_marshal)
    
    }

    /// Takes over the initial ownership of a closure.  Each closure is
    /// initially created in a "floating" state, which means that the initial
    /// reference count is not owned by any caller. `g_closure_sink()` checks
    /// to see if the object is still floating, and if so, unsets the
    /// floating state and decreases the reference count. If the closure
    /// is not floating, `g_closure_sink()` does nothing. The reason for the
    /// existence of the floating state is to prevent cumbersome code
    /// sequences like:
    /// (C Language Example):
    /// ```C
    /// closure = g_cclosure_new (cb_func, cb_data);
    /// g_source_set_closure (source, closure);
    /// g_closure_unref (closure); // GObject doesn't really need this
    /// ```
    /// Because `g_source_set_closure()` (and similar functions) take ownership of the
    /// initial reference count, if it is unowned, we instead can write:
    /// (C Language Example):
    /// ```C
    /// g_source_set_closure (source, g_cclosure_new (cb_func, cb_data));
    /// ```
    /// 
    /// Generally, this function is used together with `g_closure_ref()`. Ane example
    /// of storing a closure for later notification looks like:
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
    func sink() {
        g_closure_sink(cast(closure_ptr))
    
    }

    /// Decrements the reference count of a closure after it was previously
    /// incremented by the same caller. If no other callers are using the
    /// closure, then the closure will be destroyed and freed.
    func unref() {
        g_closure_unref(cast(closure_ptr))
    
    }

    /// A `GClosureMarshal` function for use with signals with handlers that
    /// take two boxed pointers as arguments and return a boolean.  If you
    /// have such a signal, you will probably also need to use an
    /// accumulator, such as `g_signal_accumulator_true_handled()`.
    func cclosureMarshalBOOLEAN_BOXEDBOXED(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_BOOLEAN__BOXED_BOXED(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gboolean (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter
    /// denotes a flags type.
    func cclosureMarshalBOOLEAN_FLAGS(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_BOOLEAN__FLAGS(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `gchar* (*callback) (gpointer instance, GObject *arg1, gpointer arg2, gpointer user_data)`.
    func cclosureMarshalSTRING_OBJECTPOINTER(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_STRING__OBJECT_POINTER(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gboolean arg1, gpointer user_data)`.
    func cclosureMarshalVOID_BOOLEAN(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__BOOLEAN(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GBoxed *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_BOXED(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__BOXED(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gchar arg1, gpointer user_data)`.
    func cclosureMarshalVOID_CHAR(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__CHAR(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gdouble arg1, gpointer user_data)`.
    func cclosureMarshalVOID_DOUBLE(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__DOUBLE(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes an enumeration type..
    func cclosureMarshalVOID_ENUM(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__ENUM(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)` where the `gint` parameter denotes a flags type.
    func cclosureMarshalVOID_FLAGS(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__FLAGS(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gfloat arg1, gpointer user_data)`.
    func cclosureMarshalVOID_FLOAT(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__FLOAT(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gint arg1, gpointer user_data)`.
    func cclosureMarshalVOID_INT(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__INT(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, glong arg1, gpointer user_data)`.
    func cclosureMarshalVOID_LONG(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__LONG(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GObject *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_OBJECT(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__OBJECT(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GParamSpec *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_PARAM(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__PARAM(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer arg1, gpointer user_data)`.
    func cclosureMarshalVOID_POINTER(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__POINTER(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, const gchar *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_STRING(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__STRING(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guchar arg1, gpointer user_data)`.
    func cclosureMarshalVOID_UCHAR(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__UCHAR(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer user_data)`.
    func cclosureMarshalVOID_UINT(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__UINT(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, guint arg1, gpointer arg2, gpointer user_data)`.
    func cclosureMarshalVOID_UINTPOINTER(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__UINT_POINTER(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gulong arg1, gpointer user_data)`.
    func cclosureMarshalVOID_ULONG(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__ULONG(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, GVariant *arg1, gpointer user_data)`.
    func cclosureMarshalVOID_VARIANT(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__VARIANT(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A marshaller for a `GCClosure` with a callback of type
    /// `void (*callback) (gpointer instance, gpointer user_data)`.
    func cclosureMarshalVOID_VOID(returnValue return_value: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_VOID__VOID(cast(closure_ptr), cast(return_value.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// A generic marshaller function implemented via
    /// [libffi](http://sourceware.org/libffi/).
    /// 
    /// Normally this function is not passed explicitly to `g_signal_new()`,
    /// but used automatically by GLib when specifying a `nil` marshaller.
    func cclosureMarshalGeneric(returnGvalue return_gvalue: ValueProtocol, nParamValues n_param_values: CUnsignedInt, paramValues param_values: ValueProtocol, invocationHint invocation_hint: UnsafeMutableRawPointer, marshalData marshal_data: UnsafeMutableRawPointer) {
        g_cclosure_marshal_generic(cast(closure_ptr), cast(return_gvalue.ptr), guint(n_param_values), cast(param_values.ptr), cast(invocation_hint), cast(marshal_data))
    
    }

    /// Connects a closure to a signal for a particular object.
    func signalConnectClosure(instance: ObjectProtocol, detailedSignal detailed_signal: UnsafePointer<gchar>, after: Bool) -> CUnsignedLong {
        let rv = g_signal_connect_closure(cast(instance.ptr), detailed_signal, cast(closure_ptr), gboolean(after ? 1 : 0))
        return CUnsignedLong(rv)
    }

    /// Connects a closure to a signal for a particular object.
    func signalConnectClosureByID(instance: ObjectProtocol, signalID signal_id: CUnsignedInt, detail: GLib.Quark, after: Bool) -> CUnsignedLong {
        let rv = g_signal_connect_closure_by_id(cast(instance.ptr), guint(signal_id), detail, cast(closure_ptr), gboolean(after ? 1 : 0))
        return CUnsignedLong(rv)
    }

    /// Finds the first signal handler that matches certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// The match `mask` has to be non-0 for successful matches.
    /// If no handler was found, 0 is returned.
    func signalHandlerFind(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedLong {
        let rv = g_signal_handler_find(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure_ptr), cast(func_), cast(data))
        return CUnsignedLong(rv)
    }

    /// Blocks all handlers on an instance that match a certain selection criteria.
    /// The criteria mask is passed as an OR-ed combination of `GSignalMatchType`
    /// flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of blocked handlers
    /// otherwise.
    func signalHandlersBlockMatched(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_signal_handlers_block_matched(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure_ptr), cast(func_), cast(data))
        return CUnsignedInt(rv)
    }

    /// Disconnects all handlers on an instance that match a certain
    /// selection criteria. The criteria mask is passed as an OR-ed
    /// combination of `GSignalMatchType` flags, and the criteria values are
    /// passed as arguments.  Passing at least one of the
    /// `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC` or
    /// `G_SIGNAL_MATCH_DATA` match flags is required for successful
    /// matches.  If no handlers were found, 0 is returned, the number of
    /// disconnected handlers otherwise.
    func signalHandlersDisconnectMatched(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_signal_handlers_disconnect_matched(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure_ptr), cast(func_), cast(data))
        return CUnsignedInt(rv)
    }

    /// Unblocks all handlers on an instance that match a certain selection
    /// criteria. The criteria mask is passed as an OR-ed combination of
    /// `GSignalMatchType` flags, and the criteria values are passed as arguments.
    /// Passing at least one of the `G_SIGNAL_MATCH_CLOSURE`, `G_SIGNAL_MATCH_FUNC`
    /// or `G_SIGNAL_MATCH_DATA` match flags is required for successful matches.
    /// If no handlers were found, 0 is returned, the number of unblocked handlers
    /// otherwise. The match criteria should not apply to any handlers that are
    /// not currently blocked.
    func signalHandlersUnblockMatched(instance: ObjectProtocol, mask: SignalMatchType, signalID signal_id: CUnsignedInt, detail: GLib.Quark, func_: UnsafeMutableRawPointer, data: UnsafeMutableRawPointer) -> CUnsignedInt {
        let rv = g_signal_handlers_unblock_matched(cast(instance.ptr), mask, guint(signal_id), detail, cast(closure_ptr), cast(func_), cast(data))
        return CUnsignedInt(rv)
    }

    /// Creates a new signal. (This is usually done in the class initializer.)
    /// 
    /// See `g_signal_new()` for details on allowed signal names.
    /// 
    /// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
    /// the marshaller for this signal.
    func signalNewValist(signalName signal_name: UnsafePointer<gchar>, itype: GType, signalFlags signal_flags: SignalFlags, accumulator: @escaping SignalAccumulator, accuData accu_data: UnsafeMutableRawPointer, cMarshaller c_marshaller: @escaping SignalCMarshaller, returnType return_type: GType, nParams n_params: CUnsignedInt, args: CVaListPointer) -> CUnsignedInt {
        let rv = g_signal_new_valist(signal_name, itype, signal_flags, cast(closure_ptr), accumulator, cast(accu_data), c_marshaller, return_type, guint(n_params), args)
        return CUnsignedInt(rv)
    }

    /// Creates a new signal. (This is usually done in the class initializer.)
    /// 
    /// See `g_signal_new()` for details on allowed signal names.
    /// 
    /// If c_marshaller is `nil`, `g_cclosure_marshal_generic()` will be used as
    /// the marshaller for this signal.
    func signalNewv(signalName signal_name: UnsafePointer<gchar>, itype: GType, signalFlags signal_flags: SignalFlags, accumulator: @escaping SignalAccumulator, accuData accu_data: UnsafeMutableRawPointer, cMarshaller c_marshaller: @escaping SignalCMarshaller, returnType return_type: GType, nParams n_params: CUnsignedInt, paramTypes param_types: UnsafeMutablePointer<GType>) -> CUnsignedInt {
        let rv = g_signal_newv(signal_name, itype, signal_flags, cast(closure_ptr), accumulator, cast(accu_data), c_marshaller, return_type, guint(n_params), cast(param_types))
        return CUnsignedInt(rv)
    }

    /// Overrides the class closure (i.e. the default handler) for the given signal
    /// for emissions on instances of `instance_type`. `instance_type` must be derived
    /// from the type to which the signal belongs.
    /// 
    /// See `g_signal_chain_from_overridden()` and
    /// `g_signal_chain_from_overridden_handler()` for how to chain up to the
    /// parent class closure from inside the overridden one.
    func signalOverrideClassClosure(signalID signal_id: CUnsignedInt, instanceType instance_type: GType) {
        g_signal_override_class_closure(guint(signal_id), instance_type, cast(closure_ptr))
    
    }

    /// Set the callback for a source as a `GClosure`.
    /// 
    /// If the source is not one of the standard GLib types, the `closure_callback`
    /// and `closure_marshal` fields of the `GSourceFuncs` structure must have been
    /// filled in with pointers to appropriate functions.
    func sourceSetClosure(source: SourceProtocol) {
        g_source_set_closure(cast(source.ptr), cast(closure_ptr))
    
    }
}



