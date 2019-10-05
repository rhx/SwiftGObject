import CGLib
import GLib

// MARK: - WeakRef Record

/// The `WeakRefProtocol` protocol exposes the methods and properties of an underlying `GWeakRef` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `WeakRef`.
/// Alternatively, use `WeakRefRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// A structure containing a weak reference to a `GObject`.  It can either
/// be empty (i.e. point to `nil`), or point to an object for as long as
/// at least one "strong" reference to that object exists. Before the
/// object's `GObjectClass.dispose` method is called, every `GWeakRef`
/// associated with becomes empty (i.e. points to `nil`).
/// 
/// Like `GValue`, `GWeakRef` can be statically allocated, stack- or
/// heap-allocated, or embedded in larger structures.
/// 
/// Unlike `g_object_weak_ref()` and `g_object_add_weak_pointer()`, this weak
/// reference is thread-safe: converting a weak pointer to a reference is
/// atomic with respect to invalidation of weak pointers to destroyed
/// objects.
/// 
/// If the object's `GObjectClass.dispose` method results in additional
/// references to the object being held, any `GWeakRefs` taken
/// before it was disposed will continue to point to `nil`.  If
/// `GWeakRefs` are taken after the object is disposed and
/// re-referenced, they will continue to point to it until its refcount
/// goes back to zero, at which point they too will be invalidated.
public protocol WeakRefProtocol {
    /// Untyped pointer to the underlying `GWeakRef` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GWeakRef` instance.
    var _ptr: UnsafeMutablePointer<GWeakRef> { get }
}

/// The `WeakRefRef` type acts as a lightweight Swift reference to an underlying `GWeakRef` instance.
/// It exposes methods that can operate on this data type through `WeakRefProtocol` conformance.
/// Use `WeakRefRef` only as an `unowned` reference to an existing `GWeakRef` instance.
///
/// A structure containing a weak reference to a `GObject`.  It can either
/// be empty (i.e. point to `nil`), or point to an object for as long as
/// at least one "strong" reference to that object exists. Before the
/// object's `GObjectClass.dispose` method is called, every `GWeakRef`
/// associated with becomes empty (i.e. points to `nil`).
/// 
/// Like `GValue`, `GWeakRef` can be statically allocated, stack- or
/// heap-allocated, or embedded in larger structures.
/// 
/// Unlike `g_object_weak_ref()` and `g_object_add_weak_pointer()`, this weak
/// reference is thread-safe: converting a weak pointer to a reference is
/// atomic with respect to invalidation of weak pointers to destroyed
/// objects.
/// 
/// If the object's `GObjectClass.dispose` method results in additional
/// references to the object being held, any `GWeakRefs` taken
/// before it was disposed will continue to point to `nil`.  If
/// `GWeakRefs` are taken after the object is disposed and
/// re-referenced, they will continue to point to it until its refcount
/// goes back to zero, at which point they too will be invalidated.
public struct WeakRefRef: WeakRefProtocol {
    /// Untyped pointer to the underlying `GWeakRef` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension WeakRefRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GWeakRef>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `WeakRefProtocol`
    init<T: WeakRefProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

    }

/// The `WeakRef` type acts as an owner of an underlying `GWeakRef` instance.
/// It provides the methods that can operate on this data type through `WeakRefProtocol` conformance.
/// Use `WeakRef` as a strong reference or owner of a `GWeakRef` instance.
///
/// A structure containing a weak reference to a `GObject`.  It can either
/// be empty (i.e. point to `nil`), or point to an object for as long as
/// at least one "strong" reference to that object exists. Before the
/// object's `GObjectClass.dispose` method is called, every `GWeakRef`
/// associated with becomes empty (i.e. points to `nil`).
/// 
/// Like `GValue`, `GWeakRef` can be statically allocated, stack- or
/// heap-allocated, or embedded in larger structures.
/// 
/// Unlike `g_object_weak_ref()` and `g_object_add_weak_pointer()`, this weak
/// reference is thread-safe: converting a weak pointer to a reference is
/// atomic with respect to invalidation of weak pointers to destroyed
/// objects.
/// 
/// If the object's `GObjectClass.dispose` method results in additional
/// references to the object being held, any `GWeakRefs` taken
/// before it was disposed will continue to point to `nil`.  If
/// `GWeakRefs` are taken after the object is disposed and
/// re-referenced, they will continue to point to it until its refcount
/// goes back to zero, at which point they too will be invalidated.
open class WeakRef: WeakRefProtocol {
    /// Untyped pointer to the underlying `GWeakRef` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `WeakRef` instance.
    public init(_ op: UnsafeMutablePointer<GWeakRef>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `WeakRefProtocol`
    /// `GWeakRef` does not allow reference counting.
    public convenience init<T: WeakRefProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GWeakRef, cannot ref(cast(_ptr))
    }

    /// Do-nothing destructor for`GWeakRef`.
    deinit {
        // no reference counting for GWeakRef, cannot unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GWeakRef.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GWeakRef.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GWeakRef.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `WeakRefProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GWeakRef>(opaquePointer))
    }



}

// MARK: - no WeakRef properties

// MARK: - no signals


public extension WeakRefProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GWeakRef` instance.
    var _ptr: UnsafeMutablePointer<GWeakRef> { return ptr.assumingMemoryBound(to: GWeakRef.self) }

    /// Frees resources associated with a non-statically-allocated `GWeakRef`.
    /// After this call, the `GWeakRef` is left in an undefined state.
    /// 
    /// You should only call this on a `GWeakRef` that previously had
    /// `g_weak_ref_init()` called on it.
    func clear() {
        g_weak_ref_clear(cast(_ptr))
    
    }

    /// If `weak_ref` is not empty, atomically acquire a strong
    /// reference to the object it points to, and return that reference.
    /// 
    /// This function is needed because of the potential race between taking
    /// the pointer value and `g_object_ref()` on it, if the object was losing
    /// its last reference at the same time in a different thread.
    /// 
    /// The caller should release the resulting reference in the usual way,
    /// by using `g_object_unref()`.
    func get() -> UnsafeMutableRawPointer! {
        let rv = g_weak_ref_get(cast(_ptr))
        return cast(rv)
    }

    /// Initialise a non-statically-allocated `GWeakRef`.
    /// 
    /// This function also calls `g_weak_ref_set()` with `object` on the
    /// freshly-initialised weak reference.
    /// 
    /// This function should always be matched with a call to
    /// `g_weak_ref_clear()`.  It is not necessary to use this function for a
    /// `GWeakRef` in static storage because it will already be
    /// properly initialised.  Just use `g_weak_ref_set()` directly.
    func init_(object: ObjectProtocol) {
        g_weak_ref_init(cast(_ptr), cast(object.ptr))
    
    }

    /// Change the object to which `weak_ref` points, or set it to
    /// `nil`.
    /// 
    /// You must own a strong reference on `object` while calling this
    /// function.
    func set(object: ObjectProtocol) {
        g_weak_ref_set(cast(_ptr), cast(object.ptr))
    
    }
}



