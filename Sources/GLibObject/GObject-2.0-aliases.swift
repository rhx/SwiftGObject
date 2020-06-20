import CGLib
import GLib
import GObjectCHelpers

/// This is the signature of marshaller functions, required to marshall
/// arrays of parameter values to signal emissions into C language callback
/// invocations. It is merely an alias to `GClosureMarshal` since the `GClosure`
/// mechanism takes over responsibility of actual function invocation for the
/// signal system.
public typealias SignalCMarshaller = GSignalCMarshaller

/// This is the signature of va_list marshaller functions, an optional
/// marshaller that can be used in some situations to avoid
/// marshalling the signal argument into GValues.
public typealias SignalCVaMarshaller = GSignalCVaMarshaller

/// A numerical value which represents the unique identifier of a registered
/// type.
public typealias Type_ = GType
