//
//  SwiftGObject.swift
//  GObject
//
//  Created by Rene Hexel on 20/06/2016.
//
//
import CGLib
import GLib

/// A Void closure to use as a signal handler, that takes no parameters.
public typealias SignalHandler = () -> ()

/// Internal Class that wraps a closure to make sure the closure is retained
/// until no longer required
class ClosureHolder<S,T> {
    let call: (S) -> T

    init(_ closure: (S) -> T) {
        self.call = closure
    }
}

/// Internal type for SignalHandler closure holder
typealias SignalHandlerClosureHolder = ClosureHolder<Void,Void>

/// Convenience extensions for Objects
public extension ObjectProtocol {
    /// Connection helper function
    private func _connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags, data: SignalHandlerClosureHolder, handler: @convention(c) (gpointer, gpointer) -> Void) -> CUnsignedLong {
        let opaqueHolder = OpaquePointer(bitPattern: Unmanaged.passRetained(data))
        let callback = unsafeBitCast(handler, to: Callback.self)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: opaqueHolder, destroyData: {
            if let swift = OpaquePointer($0) {
                let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            let _ = $1
            }, connectFlags: flags)
        return rv
    }

    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    public func connect(signal name: UnsafePointer<gchar>, flags f: ConnectFlags = ConnectFlags(0), handler: SignalHandler) -> CUnsignedLong {
        let rv = _connect(signal: name, flags: f, data: ClosureHolder(handler)) {
            let ptr = OpaquePointer($1)
            let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(ptr).takeUnretainedValue()
            holder.call()
        }
        return rv
    }
}
