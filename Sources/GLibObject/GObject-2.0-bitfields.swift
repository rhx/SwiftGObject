import CGLib
import GLib

/// Flags to be passed to `g_object_bind_property()` or
/// `g_object_bind_property_full()`.
/// 
/// This enumeration can be extended at later date.
public typealias BindingFlags = GBindingFlags

public extension BindingFlags {
    /// The default binding; if the source property
    ///   changes, the target property is updated with its value.
    static let default_ = G_BINDING_DEFAULT /* 0 */
    /// Bidirectional binding; if either the
    ///   property of the source or the property of the target changes,
    ///   the other is updated.
    static let bidirectional = G_BINDING_BIDIRECTIONAL /* 1 */
    /// Synchronize the values of the source and
    ///   target properties when creating the binding; the direction of
    ///   the synchronization is always from the source to the target.
    static let sync_create = G_BINDING_SYNC_CREATE /* 2 */
    /// If the two properties being bound are
    ///   booleans, setting one to `true` will result in the other being
    ///   set to `false` and vice versa. This flag will only work for
    ///   boolean properties, and cannot be used when passing custom
    ///   transformation functions to `g_object_bind_property_full()`.
    static let invert_boolean = G_BINDING_INVERT_BOOLEAN /* 4 */
}

/// The connection flags are used to specify the behaviour of a signal's
/// connection.
public typealias ConnectFlags = GConnectFlags

public extension ConnectFlags {
    /// whether the handler should be called before or after the
    ///  default handler of the signal.
    static let after = G_CONNECT_AFTER /* 1 */
    /// whether the instance and data should be swapped when
    ///  calling the handler; see `g_signal_connect_swapped()` for an example.
    static let swapped = G_CONNECT_SWAPPED /* 2 */
}

/// Through the `GParamFlags` flag values, certain aspects of parameters
/// can be configured. See also `G_PARAM_STATIC_STRINGS`.
public typealias ParamFlags = GParamFlags

public extension ParamFlags {
    /// the parameter is readable
    static let readable = G_PARAM_READABLE /* 1 */
    /// the parameter is writable
    static let writable = G_PARAM_WRITABLE /* 2 */
    /// alias for `G_PARAM_READABLE` | `G_PARAM_WRITABLE`
    static let readwrite = G_PARAM_READWRITE /* 3 */
    /// the parameter will be set upon object construction
    static let construct = G_PARAM_CONSTRUCT /* 4 */
    /// the parameter can only be set upon object construction
    static let construct_only = G_PARAM_CONSTRUCT_ONLY /* 8 */
    /// upon parameter conversion (see `g_param_value_convert()`)
    ///  strict validation is not required
    static let lax_validation = G_PARAM_LAX_VALIDATION /* 16 */
    /// the string used as name when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmodified for the lifetime of the parameter.
    ///  Since 2.8
    static let static_name = G_PARAM_STATIC_NAME /* 32 */
    /// internal
    static let private_ = G_PARAM_PRIVATE /* 32 */
    /// the string used as nick when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmmodified for the lifetime of the parameter.
    ///  Since 2.8
    static let static_nick = G_PARAM_STATIC_NICK /* 64 */
    /// the string used as blurb when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmodified for the lifetime of the parameter.
    ///  Since 2.8
    static let static_blurb = G_PARAM_STATIC_BLURB /* 128 */
    /// calls to `g_object_set_property()` for this
    ///   property will not automatically result in a "notify" signal being
    ///   emitted: the implementation must call `g_object_notify()` themselves
    ///   in case the property actually changes.  Since: 2.42.
    static let explicit_notify = G_PARAM_EXPLICIT_NOTIFY /* 1073741824 */
    /// the parameter is deprecated and will be removed
    ///  in a future version. A warning will be generated if it is used
    ///  while running with G_ENABLE_DIAGNOSTIC=1.
    ///  Since 2.26
    static let deprecated = G_PARAM_DEPRECATED /* 2147483648 */
}

/// The signal flags are used to specify a signal's behaviour, the overall
/// signal description outlines how especially the RUN flags control the
/// stages of a signal emission.
public typealias SignalFlags = GSignalFlags

public extension SignalFlags {
    /// Invoke the object method handler in the first emission stage.
    static let run_first = G_SIGNAL_RUN_FIRST /* 1 */
    /// Invoke the object method handler in the third emission stage.
    static let run_last = G_SIGNAL_RUN_LAST /* 2 */
    /// Invoke the object method handler in the last emission stage.
    static let run_cleanup = G_SIGNAL_RUN_CLEANUP /* 4 */
    /// Signals being emitted for an object while currently being in
    ///  emission for this very object will not be emitted recursively,
    ///  but instead cause the first emission to be restarted.
    static let no_recurse = G_SIGNAL_NO_RECURSE /* 8 */
    /// This signal supports "`detail`" appendices to the signal name
    ///  upon handler connections and emissions.
    static let detailed = G_SIGNAL_DETAILED /* 16 */
    /// Action signals are signals that may freely be emitted on alive
    ///  objects from user code via `g_signal_emit()` and friends, without
    ///  the need of being embedded into extra code that performs pre or
    ///  post emission adjustments on the object. They can also be thought
    ///  of as object methods which can be called generically by
    ///  third-party code.
    static let action = G_SIGNAL_ACTION /* 32 */
    /// No emissions hooks are supported for this signal.
    static let no_hooks = G_SIGNAL_NO_HOOKS /* 64 */
    /// Varargs signal emission will always collect the
    ///   arguments, even if there are no signal handlers connected.  Since 2.30.
    static let must_collect = G_SIGNAL_MUST_COLLECT /* 128 */
    /// The signal is deprecated and will be removed
    ///   in a future version. A warning will be generated if it is connected while
    ///   running with G_ENABLE_DIAGNOSTIC=1.  Since 2.32.
    static let deprecated = G_SIGNAL_DEPRECATED /* 256 */
}

/// The match types specify what `g_signal_handlers_block_matched()`,
/// `g_signal_handlers_unblock_matched()` and `g_signal_handlers_disconnect_matched()`
/// match signals by.
public typealias SignalMatchType = GSignalMatchType

public extension SignalMatchType {
    /// The signal id must be equal.
    static let id = G_SIGNAL_MATCH_ID /* 1 */
    /// The signal detail must be equal.
    static let detail = G_SIGNAL_MATCH_DETAIL /* 2 */
    /// The closure must be the same.
    static let closure = G_SIGNAL_MATCH_CLOSURE /* 4 */
    /// The C closure callback must be the same.
    static let func_ = G_SIGNAL_MATCH_FUNC /* 8 */
    /// The closure data must be the same.
    static let data = G_SIGNAL_MATCH_DATA /* 16 */
    /// Only unblocked signals may be matched.
    static let unblocked = G_SIGNAL_MATCH_UNBLOCKED /* 32 */
}

/// These flags used to be passed to `g_type_init_with_debug_flags()` which
/// is now deprecated.
/// 
/// If you need to enable debugging features, use the GOBJECT_DEBUG
/// environment variable.
///
/// **TypeDebugFlags is deprecated:**
/// g_type_init() is now done automatically
public typealias TypeDebugFlags = GTypeDebugFlags

public extension TypeDebugFlags {
    /// Print no messages
    static let none_ = G_TYPE_DEBUG_NONE /* 0 */
    /// Print messages about object bookkeeping
    static let objects = G_TYPE_DEBUG_OBJECTS /* 1 */
    /// Print messages about signal emissions
    static let signals = G_TYPE_DEBUG_SIGNALS /* 2 */
    /// Keep a count of instances of each type
    static let instance_count = G_TYPE_DEBUG_INSTANCE_COUNT /* 4 */
    /// Mask covering all debug flags
    static let mask = G_TYPE_DEBUG_MASK /* 7 */
}

/// Bit masks used to check or determine characteristics of a type.
public typealias TypeFlags = GTypeFlags

public extension TypeFlags {
    /// Indicates an abstract type. No instances can be
    ///  created for an abstract type
    static let abstract = G_TYPE_FLAG_ABSTRACT /* 16 */
    /// Indicates an abstract value type, i.e. a type
    ///  that introduces a value table, but can't be used for
    ///  `g_value_init()`
    static let value_abstract = G_TYPE_FLAG_VALUE_ABSTRACT /* 32 */
}

/// Bit masks used to check or determine specific characteristics of a
/// fundamental type.
public typealias TypeFundamentalFlags = GTypeFundamentalFlags

public extension TypeFundamentalFlags {
    /// Indicates a classed type
    static let classed = G_TYPE_FLAG_CLASSED /* 1 */
    /// Indicates an instantiable type (implies classed)
    static let instantiatable = G_TYPE_FLAG_INSTANTIATABLE /* 2 */
    /// Indicates a flat derivable type
    static let derivable = G_TYPE_FLAG_DERIVABLE /* 4 */
    /// Indicates a deep derivable type (implies derivable)
    static let deep_derivable = G_TYPE_FLAG_DEEP_DERIVABLE /* 8 */
}
