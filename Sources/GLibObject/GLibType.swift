//
//  GLibType.swift
//  GLibObject
//
//  Created by Rene Hexel on 17/4/17.
//  Copyright © 2017, 2018, 2019 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

//
// Unfortunately, the G_TYPE_* macros are not imported into Swift
// Therefore, rewe create them manually here
//
public extension GType {
    /// An invalid GType used as error return value in some functions which return a GType.
    static let invalid   = GType( 0 << TYPE_FUNDAMENTAL_SHIFT)
    /// A fundamental type which is used as a replacement for the C void return type.
    static let none      = GType( 1 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type from which all interfaces are derived.
    static let interface = GType( 2 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gchar`.
    /// The type designated by `G_TYPE_CHAR` is unconditionally an 8-bit signed integer.
    /// This may or may not be the same type a the C type `gchar`.
    static let char      = GType( 3 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `guchar`.
    static let uchar     = GType( 4 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gboolean`.
    static let boolean   = GType( 5 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gint`.
    static let int       = GType( 6 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `guint`.
    static let uint      = GType( 7 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `glong`.
    static let long      = GType( 8 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gulong`.
    static let ulong     = GType( 9 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gint64`.
    static let int64     = GType(10 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `guint64`.
    static let uint64    = GType(11 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type from which all enumeration types are derived.
    static let `enum`    = GType(12 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type from which all flags types are derived.
    static let flags     = GType(13 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gfloat`.
    static let float     = GType(14 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gdouble`.
    static let double    = GType(15 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to nul-terminated C strings.
    static let string    = GType(16 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gpointer`.
    static let pointer   = GType(17 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type from which all boxed types are derived.
    static let boxed     = GType(18 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type from which all `ParamSpec` types are derived.
    static let param     = GType(19 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type for `GObject`.
    static let object    = GType(20 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `GVariant`.
    /// All floating `Variant` instances passed through the `GType` system are consumed.
    /// Note that callbacks in closures, and signal handlers for signals of return type `G_TYPE_VARIANT`, must never return floating variants.
    /// - Note: GLib 2.24 did include a boxed type with this name. It was replaced with this fundamental type in 2.26.
    static let variant   = GType(21 << TYPE_FUNDAMENTAL_SHIFT)
    /// The fundamental type corresponding to `gfloat`.
    static let max       = GType(TYPE_FUNDAMENTAL_MAX)
}

public extension GType {
    /// Test whether the given fundamental type flags are set.
    /// - Parameter flags: The funamental type flags to test for
    func test(flags: TypeFundamentalFlags) -> Bool {
        return g_type_test_flags(self, flags.rawValue) != 0
    }
    /// Test whether the given type flags are set.
    /// - Parameter flags: The type flags to test for
    func test(flags: TypeFlags) -> Bool {
        return g_type_test_flags(self, flags.rawValue) != 0
    }
    /// Return the fundamental type which is the ancestor of `self`.
    var fundamental: GType   { return g_type_fundamental(self) }
    /// Return `true` iff `self` is a fundamental type.
    var isFundamental: Bool  { return self <= GType.max }
    /// Return `true` iff `self` is a derived type.
    var isDerived: Bool      { return !self.isFundamental }
    /// Return `true` iff `self` is an interface type.
    var isInterface: Bool    { return self.fundamental == .interface }
    /// Return `true` iff `self` is a classed type.
    var isClassed: Bool      { return test(flags: .classed) }
    /// Return `true` iff `self` is a derivable type.
    var isDerivable: Bool    { return test(flags: .derivable) }
    /// Return `true` iff `self` is a deep derivable type.
    var isDeepDerivable: Bool { return test(flags: .deep_derivable) }
    /// Return `true` iff `self` is an instantiatable type.
    var isInstantiable: Bool { return test(flags: .instantiatable) }
    /// Return `true` iff `self` is an abstract type.
    var isAbstract: Bool     { return test(flags: .abstract) }
    /// Return `true` iff `self` is an abstract value type.
    var isAbstractValue: Bool { return test(flags: .value_abstract) }
    /// Return `true` iff `self` is a value type.
    var isValueType: Bool    { return g_type_check_is_value_type(self) != 0 }
    /// Return `true` iff `self` has a value table.
    var hasValueTable: Bool  { return g_type_value_table_peek(self) != nil }
    /// Return `true` iff `a` is transformable into `b`
    /// - Parameters:
    ///   - a: The source type to potentially transform
    ///   - b: The target type to check for
    static func transformable(from a: GType, to b: GType) -> Bool {
        return g_value_type_transformable(a, b) != 0
    }
}

fileprivate struct _GTypeClass { let g_type: GType }
fileprivate struct _GTypeInstance { let g_class: UnsafeMutablePointer<_GTypeClass>? }

/// Convenience extensions for Object types
public extension ObjectProtocol {
    /// Underlying type
    var type: GType {
        let typeInstance = object_ptr.withMemoryRebound(to: _GTypeInstance.self, capacity: 1) { $0 }
        guard let cls = typeInstance.pointee.g_class else { return .invalid }
        return cls.pointee.g_type
    }

    /// Name of the underlying type
    var typeName: String {
        return String(cString: g_type_name(type))
    }
}
