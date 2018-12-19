//
//  GLibObject.swift
//  GObject
//
//  Created by Rene Hexel on 20/06/2016.
//  Copyright © 2016, 2017, 2018 Rene Hexel.  All rights reserved.
//
import CGLib
import GLib

/// Protocol for signal name enums
public protocol SignalNameProtocol: Hashable {
    var rawValue: String { get }
}

/// Protocol extension for signal name enums
public extension SignalNameProtocol {
    var name: String { return rawValue }
    var hashValue: Int { return rawValue.hashValue }
}

/// Protocol for property name enums
public protocol PropertyNameProtocol: Hashable {
    var rawValue: String { get }
}

/// Protocol extension for signal name enums
public extension PropertyNameProtocol {
    var name: String { return rawValue }
    var hashValue: Int { return rawValue.hashValue }
}

/// Type representing the name of a property
public struct PropertyName {
    let name: String
    init(_ n: String) { name = n }
    init<T: PropertyNameProtocol>(_ p: T) { name = p.rawValue }
}

extension PropertyName: PropertyNameProtocol {
    /// Returns a Boolean value indicating whether two values are equal.
    ///
    /// Equality is the inverse of inequality. For any values `a` and `b`,
    /// `a == b` implies that `a != b` is `false`.
    ///
    /// - Parameters:
    ///   - lhs: A value to compare.
    ///   - rhs: Another value to compare.
    public static func ==(lhs: PropertyName, rhs: PropertyName) -> Bool {
        return lhs.name == rhs.name
    }

    /// Property name as a String
    public var rawValue: String { return name }
}

extension PropertyName: ExpressibleByStringLiteral {
    public typealias UnicodeScalarLiteralType = String
    public typealias ExtendedGraphemeClusterLiteralType = String
    public typealias StringLiteralType = String

    public init(stringLiteral value: StringLiteralType) { self.init(value) }
    public init(extendedGraphemeClusterLiteral value: ExtendedGraphemeClusterLiteralType) { self.init(value) }
    public init(unicodeScalarLiteral value: UnicodeScalarLiteralType) { self.init(value) }
}

/// A Void closure to use as a signal handler, that takes no parameters.
public typealias SignalHandler = () -> ()

/// A conversion closure transforming the first value into the second
/// This closure needs to return true if successful, or false otherwise
public typealias ValueTransformer = (ValueRef, ValueRef) -> Bool

/// Internal Class that wraps a closure to make sure the closure is retained
/// until no longer required
public class ClosureHolder<S,T> {
    public let call: (S) -> T

    public init(_ closure: @escaping (S) -> T) {
        self.call = closure
    }
}

/// Internal Class that wraps a binding to make sure it is retained
/// until no longer required
public class BindingHolder<S,T> {
    public let transform_from: (S, T) -> Bool
    public let transform_to:   (T, S) -> Bool

    public init(_ transform_from: @escaping (S, T) -> Bool, _ transform_to: @escaping (T, S) -> Bool) {
        self.transform_from = transform_from
        self.transform_to   = transform_to
    }
}

/// Internal type for SignalHandler closure holder
public typealias SignalHandlerClosureHolder = ClosureHolder<Void,Void>

/// Internal type for a binding closure holder
public typealias BindingClosureHolder = BindingHolder<ValueRef, ValueRef>

/// Convenience extensions for Objects
public extension ObjectProtocol {
    /// Create a new instance of a given type
    ///
    /// - Parameter type: a type registered with g_type_register_*()
    /// - Returns: pointer to the instance of the given type
    static func new(type: GType) -> gpointer! {
        var params = GParameter()
        return g_object_newv(type, 0, &params)
    }
    /// Create a reference to an instance of a given type
    ///
    /// - Parameter t: a type registered with g_type_register_*()
    /// - Returns: `ObjectRef` wrapping the pointer to the given type instance
    static func newReferenceTo(instanceOf t: GType) -> ObjectRef! {
        let ptr: gpointer? = Self.new(type: t)
        return ptr.map { ObjectRef($0.assumingMemoryBound(to: GObject.self)) }
    }
    /// Create an instance of a given type
    ///
    /// - Parameter t: a type registered with g_type_register_*()
    /// - Returns: reference-counted object, wrapping the pointer to the given type instance
    static func new(_ t: GType) -> Object! {
        let ptr: gpointer? = Self.new(type: t)
        return ptr.map { Object($0.assumingMemoryBound(to: GObject.self)) }
    }

    /// Connection helper function for signal handler closure
    fileprivate func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: SignalHandlerClosureHolder, handler: @convention(c) @escaping (gpointer, gpointer) -> Void) -> CUnsignedLong {
        let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(data).toOpaque())
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: holder, destroyData: {
            if let swift = UnsafeRawPointer($0) {
                let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
            }, connectFlags: flags)
        return rv
    }

    /// Binding helper function for binding closure
    fileprivate func _bind<T: ObjectProtocol>(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .sync_create, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) @escaping (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
        let holder = UnsafeMutableRawPointer(Unmanaged.passRetained(holder).toOpaque())
        let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
        let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
        let rv = bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: holder) {
            if let swift = UnsafeRawPointer($0) {
                let holder = Unmanaged<BindingClosureHolder>.fromOpaque(swift)
                holder.release()
            }
        }
        return rv.map { BindingRef($0) }
    }

    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    @discardableResult func connect<S: SignalNameProtocol>(_ signal: S, flags f: ConnectFlags = ConnectFlags(0), handler: @escaping SignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: signal.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = UnsafeRawPointer($1)
            let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            let call = holder.call
            call(())
        }
        return rv
    }

    /// Creates a binding between @source_property on @source and @target_property
    /// on @target. Whenever the @source_property is changed the @target_property is
    /// updated using the same value. For instance:
    ///
    /// |[
    ///   g_object_bind_property (action, "active", widget, "sensitive", 0);
    /// ]|
    ///
    /// Will result in the "sensitive" property of the widget #GObject instance to be
    /// updated with the same value of the "active" property of the action #GObject
    /// instance.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well.
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol>(_ source_property: P, target: T, property target_property: Q, flags: BindingFlags = .sync_create) -> BindingRef! {
        let rv = g_object_bind_property(ptr, source_property.name, target.ptr, target_property.name, flags)
        return rv.map { BindingRef(opaquePointer: $0) }
    }

    /// Complete version of bind().
    ///
    /// Creates a binding between @source_property on @source and @target_property
    /// on @target, allowing you to set the transformation functions to be used by
    /// the binding.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well. The @transform_from function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol>(_ source_property: P, to target: T, property target_property: Q, flags f: BindingFlags = .sync_create, transformFrom transform_from: @escaping ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: @escaping ValueTransformer) -> BindingRef! {
        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(ValueRef(raw: $1), ValueRef(raw: $2)) ? 1 : 0
        }) {
            let ptr = UnsafeRawPointer($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(ValueRef(raw: $1), ValueRef(raw: $2)) ? 1 : 0
        }
        return rv
    }

    /// Complete version of bind() with strongly typed transformers.
    ///
    /// Creates a binding between @source_property on @source and @target_property
    /// on @target, allowing you to set the transformation functions to be used by
    /// the binding.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well. The @transform_from function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol, U, V>(_ source_property: P, to target: T, property target_property: Q, flags fl: BindingFlags = .sync_create, convertFrom f: @escaping (U?) -> V? = { _ in nil }, convertTo g: @escaping (V?) -> U?) -> BindingRef! {
        let ft: ValueTransformer = { $0.transform(to: $1, f) }
        let gt: ValueTransformer = { $1.transform(to: $0, g) }
        return bind(source_property, to: target, property: target_property, flags: fl, transformFrom: ft, transformTo: gt)
    }

    /// Complete version of bind() with strongly typed transformers.
    ///
    /// Creates a binding between @source_property on @source and @target_property
    /// on @target, allowing you to set the transformation functions to be used by
    /// the binding.
    ///
    /// If @flags contains %G_BINDING_BIDIRECTIONAL then the binding will be mutual:
    /// if @target_property on @target changes then the @source_property on @source
    /// will be updated as well. The @transform_from function is only used in case
    /// of bidirectional bindings, otherwise it will be ignored
    ///
    /// The binding will automatically be removed when either the @source or the
    /// @target instances are finalized. To remove the binding without affecting the
    /// @source and the @target you can just call g_object_unref() on the returned
    /// #GBinding instance.
    ///
    /// A #GObject can have multiple bindings.
    @discardableResult func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol, U, V>(_ source_property: P, to target: T, property target_property: Q, flags fl: BindingFlags = .sync_create, convertFrom f: @escaping (U) -> V? = { _ in nil }, convertTo g: @escaping (V) -> U?) -> BindingRef! {
        let ft: ValueTransformer = {
            return $0.transform(to: $1, f)
        }
        let gt: ValueTransformer = {
            return $0.transform(to: $1, g)
        }
        return bind(source_property, to: target, property: target_property, flags: fl, transformFrom: ft, transformTo: gt)
    }
}
