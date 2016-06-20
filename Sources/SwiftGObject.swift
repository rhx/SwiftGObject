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

/// Internal type for SignalHandler closure holder
typealias CCallBackHolder = ClosureHolder<(gpointer, gpointer),Void>

/// Convenience extensions for Objects
public extension ObjectProtocol {
    /// Connects a (Void) -> Void closure or function to a signal for
    /// the receiver object.  Similar to g_signal_connect(), but allows
    /// to provide a Swift closure that can capture its surrounding context.
    public func connect(signal name: UnsafePointer<gchar>, flags: ConnectFlags = ConnectFlags(0), handler: SignalHandler) -> CUnsignedLong {
        let h = Unmanaged.passRetained(ClosureHolder(handler))
        let signalHandler = Unmanaged.passRetained(CCallBackHolder {
            let ptr = UnsafePointer<SignalHandlerClosureHolder>($1)
            ptr.pointee.call()
        })
        let callback = unsafeBitCast(signalHandler, to: GCallback.self)
        let swiftHandler = OpaquePointer(bitPattern: h)
        let rv = signalConnectData(detailedSignal: name, cHandler: callback, data: swiftHandler, destroyData: {
            if let swift = OpaquePointer($0) {
                let holder = Unmanaged<SignalHandlerClosureHolder>.fromOpaque(swift)
                holder.release()
            }
            if let c = OpaquePointer($1) {
                let holder = Unmanaged<CCallBackHolder>.fromOpaque(c)
                holder.release()
            }
        }, connectFlags: flags)
        return rv
    }
}
