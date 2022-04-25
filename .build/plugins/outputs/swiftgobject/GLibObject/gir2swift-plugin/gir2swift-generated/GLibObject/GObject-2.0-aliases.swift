import CGLib
import GLib
import GObjectCHelpers

/// This is the signature of marshaller functions, required to marshall
/// arrays of parameter values to signal emissions into C language callback
/// invocations.
/// 
/// It is merely an alias to `GClosureMarshal` since the `GClosure` mechanism
/// takes over responsibility of actual function invocation for the signal
/// system.
public typealias SignalCMarshaller = GSignalCMarshaller


/// A numerical value which represents the unique identifier of a registered
/// type.
public typealias Type_ = GType
