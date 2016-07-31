//
//  SwiftGObject.swift
//  GObject
//
//  Created by Rene Hexel on 20/06/2016.
//
//
import CGLib
import GLib

/// Protocol for signal name enums
public protocol SignalNameProtocol {
    var rawValue: String { get }
}

/// Protocol extension for signal name enums
public extension SignalNameProtocol {
    var name: String { return rawValue }
}

/// Protocol for property name enums
public protocol PropertyNameProtocol {
    var rawValue: String { get }
}

/// Protocol extension for signal name enums
public extension PropertyNameProtocol {
    var name: String { return rawValue }
}

/// A Void closure to use as a signal handler, that takes no parameters.
public typealias SignalHandler = () -> ()

/// A conversion closure transforming the first value into the second
/// This closure needs to return true if successful, or false otherwise
public typealias ValueTransformer = (ValueRef, ValueRef) -> Bool

/// Internal Class that wraps a closure to make sure the closure is retained
/// until no longer required
class ClosureHolder<S,T> {
    let call: (S) -> T

    init(_ closure: (S) -> T) {
        self.call = closure
    }
}

/// Internal Class that wraps a closure to make sure the closure is retained
/// until no longer required
class BindingHolder<S,T> {
    let transform_from: (S, T) -> Bool
    let transform_to:   (T, S) -> Bool

    init(_ transform_from: (S, T) -> Bool, _ transform_to: (T, S) -> Bool) {
        self.transform_from = transform_from
        self.transform_to   = transform_to
    }
}

/// Internal type for SignalHandler closure holder
typealias SignalHandlerClosureHolder = ClosureHolder<Void,Void>

/// Internal type for a binding closure holder
typealias BindingClosureHolder = BindingHolder<ValueRef, ValueRef>

/// Convenience extensions for Objects
public extension ObjectProtocol {
    /// Connection helper function for signal handler closure
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: SignalHandlerClosureHolder, handler: @convention(c) (gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = OpaquePointer(Unmanaged.passRetained(data).toOpaque())
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = OpaquePointer($0) {
                let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(UnsafePointer<Void>(swift))
                holder.release()
            }
            let _ = $1
            }, connectFlags: flags)
        return rv
    }

    /// Binding helper function for binding closure
    private func _bind<T: ObjectProtocol>(_ source: UnsafePointer<gchar>, to t: T, _ target_property: UnsafePointer<gchar>, flags f: BindingFlags = .default_, holder: BindingClosureHolder, transformFrom transform_from: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> gboolean, transformTo transform_to: @convention(c) (gpointer, gpointer, gpointer, gpointer) -> gboolean) -> BindingRef! {
        let opaqueHolder = OpaquePointer(Unmanaged.passRetained(holder).toOpaque())
        let from = unsafeBitCast(transform_from, to: BindingTransformFunc.self)
        let to   = unsafeBitCast(transform_to,   to: BindingTransformFunc.self)
        let rv = bindPropertyFull(sourceProperty: source, target: t, targetProperty: target_property, flags: f, transformTo: to, transformFrom: from, userData: opaqueHolder) {
            if let swift = UnsafePointer<Void>($0) {
                let holder = Unmanaged<BindingClosureHolder>.fromOpaque(swift)
                holder.release()
            }
        }
        return rv.map { BindingRef($0) }
    }

    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    public func connect<S: SignalNameProtocol>(_ signal: S, flags f: ConnectFlags = ConnectFlags(0), handler: SignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: signal.name, flags: f, data: ClosureHolder(handler)) {
            let ptr = OpaquePointer($1)
            let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(UnsafePointer<Void>(ptr)).takeUnretainedValue()
            holder.call()
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
    public func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol>(_ source_property: P, target: T, property target_property: Q, flags: BindingFlags = .default_) -> BindingRef! {
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
    public func bind<P: PropertyNameProtocol, Q: PropertyNameProtocol, T: ObjectProtocol>(_ source_property: P, to target: T, property target_property: Q, flags f: BindingFlags = .default_, transformFrom transform_from: ValueTransformer = { $0.transform(destValue: $1) }, transformTo transform_to: ValueTransformer) -> BindingRef! {
        let rv = _bind(source_property.name, to: target, target_property.name, flags: f, holder: BindingClosureHolder(transform_from, transform_to), transformFrom: {
            let ptr = UnsafePointer<Void>($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_from(ValueRef(cPointer: $1), ValueRef(cPointer: $2)) ? 1 : 0
        }) {
            let ptr = UnsafePointer<Void>($3)
            let holder = Unmanaged<BindingClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            return holder.transform_to(ValueRef(cPointer: $1), ValueRef(cPointer: $2)) ? 1 : 0
        }
        return rv
    }
}
