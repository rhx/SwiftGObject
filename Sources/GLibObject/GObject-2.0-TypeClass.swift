import CGLib
import GLib

// MARK: - TypeClass Record

/// The `TypeClassProtocol` protocol exposes the methods and properties of an underlying `GTypeClass` instance.
/// The default implementation of these can be found in the protocol extension below.
/// For a concrete class that implements these methods and properties, see `TypeClass`.
/// Alternatively, use `TypeClassRef` as a lighweight, `unowned` reference if you already have an instance you just want to use.
///
/// An opaque structure used as the base of all classes.
public protocol TypeClassProtocol {
    /// Untyped pointer to the underlying `GTypeClass` instance.
    var ptr: UnsafeMutableRawPointer { get }

    /// Typed pointer to the underlying `GTypeClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeClass> { get }
}

/// The `TypeClassRef` type acts as a lightweight Swift reference to an underlying `GTypeClass` instance.
/// It exposes methods that can operate on this data type through `TypeClassProtocol` conformance.
/// Use `TypeClassRef` only as an `unowned` reference to an existing `GTypeClass` instance.
///
/// An opaque structure used as the base of all classes.
public struct TypeClassRef: TypeClassProtocol {
    /// Untyped pointer to the underlying `GTypeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer
}

public extension TypeClassRef {
    /// Designated initialiser from the underlying `C` data type
    init(_ p: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(p)    }

    /// Reference intialiser for a related type that implements `TypeClassProtocol`
    init<T: TypeClassProtocol>(_ other: T) {
        ptr = other.ptr
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    init<T>(cPointer: UnsafeMutablePointer<T>) {
        ptr = UnsafeMutableRawPointer(cPointer)
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    init<T>(constPointer: UnsafePointer<T>) {
        ptr = UnsafeMutableRawPointer(mutating: UnsafeRawPointer(constPointer))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    init(raw: UnsafeRawPointer) {
        ptr = UnsafeMutableRawPointer(mutating: raw)
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    init(raw: UnsafeMutableRawPointer) {
        ptr = raw
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    init(opaquePointer: OpaquePointer) {
        ptr = UnsafeMutableRawPointer(opaquePointer)
    }

        /// This function is essentially the same as g_type_class_ref(),
    /// except that the classes reference count isn't incremented.
    /// As a consequence, this function may return `nil` if the class
    /// of the type passed in does not currently exist (hasn't been
    /// referenced before).
    static func peek(type: GType) -> TypeClassRef! {
        let rv = g_type_class_peek(type)
        return rv.map { TypeClassRef(cast($0)) }
    }

    /// A more efficient version of g_type_class_peek() which works only for
    /// static types.
    static func peekStatic(type: GType) -> TypeClassRef! {
        let rv = g_type_class_peek_static(type)
        return rv.map { TypeClassRef(cast($0)) }
    }

    /// Increments the reference count of the class structure belonging to
    /// `type`. This function will demand-create the class if it doesn't
    /// exist already.
    static func ref(type: GType) -> TypeClassRef! {
        let rv = g_type_class_ref(type)
        return rv.map { TypeClassRef(cast($0)) }
    }
}

/// The `TypeClass` type acts as an owner of an underlying `GTypeClass` instance.
/// It provides the methods that can operate on this data type through `TypeClassProtocol` conformance.
/// Use `TypeClass` as a strong reference or owner of a `GTypeClass` instance.
///
/// An opaque structure used as the base of all classes.
open class TypeClass: TypeClassProtocol {
    /// Untyped pointer to the underlying `GTypeClass` instance.
    /// For type-safe access, use the generated, typed pointer `_ptr` property instead.
    public let ptr: UnsafeMutableRawPointer

    /// Designated initialiser from the underlying `C` data type.
    /// Ownership is transferred to the `TypeClass` instance.
    public init(_ op: UnsafeMutablePointer<GTypeClass>) {
        ptr = UnsafeMutableRawPointer(op)
    }

    /// Reference convenience intialiser for a related type that implements `TypeClassProtocol`
    /// `GTypeClass` does not allow reference counting.
    public convenience init<T: TypeClassProtocol>(_ other: T) {
        self.init(cast(other._ptr))
        // no reference counting for GTypeClass, cannot ref(cast(_ptr))
    }

    /// Releases the underlying `GTypeClass` instance using `g_type_class_unref`.
    deinit {
        g_type_class_unref(cast(_ptr))
    }

    /// Unsafe typed initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    public convenience init<T>(cPointer: UnsafeMutablePointer<T>) {
        self.init(cPointer.withMemoryRebound(to: GTypeClass.self, capacity: 1) { $0 })
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    public convenience init(raw: UnsafeRawPointer) {
        self.init(UnsafeMutableRawPointer(mutating: raw).assumingMemoryBound(to: GTypeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    public convenience init(raw: UnsafeMutableRawPointer) {
        self.init(raw.assumingMemoryBound(to: GTypeClass.self))
    }

    /// Unsafe untyped initialiser.
    /// **Do not use unless you know the underlying data type the pointer points to conforms to `TypeClassProtocol`.**
    public convenience init(opaquePointer: OpaquePointer) {
        self.init(UnsafeMutablePointer<GTypeClass>(opaquePointer))
    }


    /// This function is essentially the same as g_type_class_ref(),
    /// except that the classes reference count isn't incremented.
    /// As a consequence, this function may return `nil` if the class
    /// of the type passed in does not currently exist (hasn't been
    /// referenced before).
    public static func peek(type: GType) -> TypeClass! {
        let rv = g_type_class_peek(type)
        return rv.map { TypeClass(cast($0)) }
    }

    /// A more efficient version of g_type_class_peek() which works only for
    /// static types.
    public static func peekStatic(type: GType) -> TypeClass! {
        let rv = g_type_class_peek_static(type)
        return rv.map { TypeClass(cast($0)) }
    }

    /// Increments the reference count of the class structure belonging to
    /// `type`. This function will demand-create the class if it doesn't
    /// exist already.
    public static func ref(type: GType) -> TypeClass! {
        let rv = g_type_class_ref(type)
        return rv.map { TypeClass(cast($0)) }
    }

}

// MARK: - no TypeClass properties

// MARK: - no signals


public extension TypeClassProtocol {
    /// Return the stored, untyped pointer as a typed pointer to the `GTypeClass` instance.
    var _ptr: UnsafeMutablePointer<GTypeClass> { return ptr.assumingMemoryBound(to: GTypeClass.self) }

    /// Registers a private structure for an instantiatable type.
    /// 
    /// When an object is allocated, the private structures for
    /// the type and all of its parent types are allocated
    /// sequentially in the same memory block as the public
    /// structures, and are zero-filled.
    /// 
    /// Note that the accumulated size of the private structures of
    /// a type and all its parent types cannot exceed 64 KiB.
    /// 
    /// This function should be called in the type's class_init() function.
    /// The private structure can be retrieved using the
    /// G_TYPE_INSTANCE_GET_PRIVATE() macro.
    /// 
    /// The following example shows attaching a private structure
    /// MyObjectPrivate to an object MyObject defined in the standard
    /// GObject fashion in the type's class_init() function.
    /// 
    /// Note the use of a structure member "priv" to avoid the overhead
    /// of repeatedly calling MY_OBJECT_GET_PRIVATE().
    /// 
    /// (C Language Example):
    /// ```C
    /// typedef struct _MyObject        MyObject;
    /// typedef struct _MyObjectPrivate MyObjectPrivate;
    /// 
    /// struct _MyObject {
    ///  GObject parent;
    /// 
    ///  MyObjectPrivate *priv;
    /// };
    /// 
    /// struct _MyObjectPrivate {
    ///   int some_field;
    /// };
    /// 
    /// static void
    /// my_object_class_init (MyObjectClass *klass)
    /// {
    ///   g_type_class_add_private (klass, sizeof (MyObjectPrivate));
    /// }
    /// 
    /// static void
    /// my_object_init (MyObject *my_object)
    /// {
    ///   my_object->priv = G_TYPE_INSTANCE_GET_PRIVATE (my_object,
    ///                                                  MY_TYPE_OBJECT,
    ///                                                  MyObjectPrivate);
    ///   // my_object->priv->some_field will be automatically initialised to 0
    /// }
    /// 
    /// static int
    /// my_object_get_some_field (MyObject *my_object)
    /// {
    ///   MyObjectPrivate *priv;
    /// 
    ///   g_return_val_if_fail (MY_IS_OBJECT (my_object), 0);
    /// 
    ///   priv = my_object->priv;
    /// 
    ///   return priv->some_field;
    /// }
    /// ```
    /// 
    ///
    /// **add_private is deprecated:**
    /// Use the G_ADD_PRIVATE() macro with the `G_DEFINE_*`
    ///   family of macros to add instance private data to a type
    @available(*, deprecated) func addPrivate(privateSize private_size: Int) {
        g_type_class_add_private(cast(_ptr), gsize(private_size))
    
    }

    /// Gets the offset of the private data for instances of `g_class`.
    /// 
    /// This is how many bytes you should add to the instance pointer of a
    /// class in order to get the private data for the type represented by
    /// `g_class`.
    /// 
    /// You can only call this function after you have registered a private
    /// data area for `g_class` using g_type_class_add_private().
    func getInstancePrivateOffset() -> CInt {
        let rv = g_type_class_get_instance_private_offset(cast(_ptr))
        return CInt(rv)
    }

    func getPrivate(privateType private_type: GType) -> UnsafeMutableRawPointer! {
        let rv = g_type_class_get_private(cast(_ptr), private_type)
        return cast(rv)
    }

    /// This is a convenience function often needed in class initializers.
    /// It returns the class structure of the immediate parent type of the
    /// class passed in.  Since derived classes hold a reference count on
    /// their parent classes as long as they are instantiated, the returned
    /// class will always exist.
    /// 
    /// This function is essentially equivalent to:
    /// g_type_class_peek (g_type_parent (G_TYPE_FROM_CLASS (g_class)))
    func peekParent() -> UnsafeMutableRawPointer! {
        let rv = g_type_class_peek_parent(cast(_ptr))
        return cast(rv)
    }

    /// Decrements the reference count of the class structure being passed in.
    /// Once the last reference count of a class has been released, classes
    /// may be finalized by the type system, so further dereferencing of a
    /// class pointer after g_type_class_unref() are invalid.
    func unref() {
        g_type_class_unref(cast(_ptr))
    
    }

    /// A variant of g_type_class_unref() for use in `GTypeClassCacheFunc`
    /// implementations. It unreferences a class without consulting the chain
    /// of `GTypeClassCacheFuncs`, avoiding the recursion which would occur
    /// otherwise.
    func unrefUncached() {
        g_type_class_unref_uncached(cast(_ptr))
    
    }

    func typeCheckClassCast(isAType is_a_type: GType) -> UnsafeMutablePointer<GTypeClass>! {
        let rv = g_type_check_class_cast(cast(_ptr), is_a_type)
        return cast(rv)
    }

    func typeCheckClassIsA(isAType is_a_type: GType) -> Bool {
        let rv = g_type_check_class_is_a(cast(_ptr), is_a_type)
        return Bool(rv != 0)
    }

    /// Returns the `GTypeInterface` structure of an interface to which the
    /// passed in class conforms.
    func typeInterfacePeek(ifaceType iface_type: GType) -> UnsafeMutableRawPointer! {
        let rv = g_type_interface_peek(cast(_ptr), iface_type)
        return cast(rv)
    }

    func typeNameFromClass() -> String! {
        let rv = g_type_name_from_class(cast(_ptr))
        return rv.map { String(cString: UnsafePointer<CChar>($0)) }
    }
    /// Gets the offset of the private data for instances of `g_class`.
    /// 
    /// This is how many bytes you should add to the instance pointer of a
    /// class in order to get the private data for the type represented by
    /// `g_class`.
    /// 
    /// You can only call this function after you have registered a private
    /// data area for `g_class` using g_type_class_add_private().
    var instancePrivateOffset: CInt {
        /// Gets the offset of the private data for instances of `g_class`.
        /// 
        /// This is how many bytes you should add to the instance pointer of a
        /// class in order to get the private data for the type represented by
        /// `g_class`.
        /// 
        /// You can only call this function after you have registered a private
        /// data area for `g_class` using g_type_class_add_private().
        get {
            let rv = g_type_class_get_instance_private_offset(cast(_ptr))
            return CInt(rv)
        }
    }
}



