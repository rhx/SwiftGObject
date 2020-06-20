import CGLib
import GLib
import GObjectCHelpers

/// Flags to be passed to `g_object_bind_property()` or
/// `g_object_bind_property_full()`.
/// 
/// This enumeration can be extended at later date.
public struct BindingFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GBindingFlags` enum value
    public var value: GBindingFlags { get { GBindingFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GBindingFlags` enum value
    public init(_ enumValue: GBindingFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// The default binding; if the source property
    ///   changes, the target property is updated with its value.
    public static let `default` = BindingFlags(0) /* G_BINDING_DEFAULT */
    /// Bidirectional binding; if either the
    ///   property of the source or the property of the target changes,
    ///   the other is updated.
    public static let bidirectional = BindingFlags(1) /* G_BINDING_BIDIRECTIONAL */
    /// Synchronize the values of the source and
    ///   target properties when creating the binding; the direction of
    ///   the synchronization is always from the source to the target.
    public static let syncCreate = BindingFlags(2) /* G_BINDING_SYNC_CREATE */
    /// If the two properties being bound are
    ///   booleans, setting one to `true` will result in the other being
    ///   set to `false` and vice versa. This flag will only work for
    ///   boolean properties, and cannot be used when passing custom
    ///   transformation functions to `g_object_bind_property_full()`.
    public static let invertBoolean = BindingFlags(4) /* G_BINDING_INVERT_BOOLEAN */

    /// The default binding; if the source property
    ///   changes, the target property is updated with its value.
    @available(*, deprecated) public static let default_ = BindingFlags(0) /* G_BINDING_DEFAULT */
    /// Synchronize the values of the source and
    ///   target properties when creating the binding; the direction of
    ///   the synchronization is always from the source to the target.
    @available(*, deprecated) public static let sync_create = BindingFlags(2) /* G_BINDING_SYNC_CREATE */
    /// If the two properties being bound are
    ///   booleans, setting one to `true` will result in the other being
    ///   set to `false` and vice versa. This flag will only work for
    ///   boolean properties, and cannot be used when passing custom
    ///   transformation functions to `g_object_bind_property_full()`.
    @available(*, deprecated) public static let invert_boolean = BindingFlags(4) /* G_BINDING_INVERT_BOOLEAN */
}
func cast<I: BinaryInteger>(_ param: I) -> BindingFlags { BindingFlags(rawValue: cast(param)) }
func cast(_ param: BindingFlags) -> UInt32 { cast(param.rawValue) }


/// The connection flags are used to specify the behaviour of a signal's
/// connection.
public struct ConnectFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GConnectFlags` enum value
    public var value: GConnectFlags { get { GConnectFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GConnectFlags` enum value
    public init(_ enumValue: GConnectFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// whether the handler should be called before or after the
    ///  default handler of the signal.
    public static let after = ConnectFlags(1) /* G_CONNECT_AFTER */
    /// whether the instance and data should be swapped when
    ///  calling the handler; see `g_signal_connect_swapped()` for an example.
    public static let swapped = ConnectFlags(2) /* G_CONNECT_SWAPPED */


}
func cast<I: BinaryInteger>(_ param: I) -> ConnectFlags { ConnectFlags(rawValue: cast(param)) }
func cast(_ param: ConnectFlags) -> UInt32 { cast(param.rawValue) }


/// Through the `GParamFlags` flag values, certain aspects of parameters
/// can be configured. See also `G_PARAM_STATIC_STRINGS`.
public struct ParamFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GParamFlags` enum value
    public var value: GParamFlags { get { GParamFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GParamFlags` enum value
    public init(_ enumValue: GParamFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// the parameter is readable
    public static let readable = ParamFlags(1) /* G_PARAM_READABLE */
    /// the parameter is writable
    public static let writable = ParamFlags(2) /* G_PARAM_WRITABLE */
    /// alias for `G_PARAM_READABLE` | `G_PARAM_WRITABLE`
    public static let readwrite = ParamFlags(3) /* G_PARAM_READWRITE */
    /// the parameter will be set upon object construction
    public static let construct = ParamFlags(4) /* G_PARAM_CONSTRUCT */
    /// the parameter can only be set upon object construction
    public static let constructOnly = ParamFlags(8) /* G_PARAM_CONSTRUCT_ONLY */
    /// upon parameter conversion (see `g_param_value_convert()`)
    ///  strict validation is not required
    public static let laxValidation = ParamFlags(16) /* G_PARAM_LAX_VALIDATION */
    /// the string used as name when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmodified for the lifetime of the parameter.
    ///  Since 2.8
    public static let staticName = ParamFlags(32) /* G_PARAM_STATIC_NAME */
    /// internal
    public static let `private` = ParamFlags(32) /* G_PARAM_PRIVATE */
    /// the string used as nick when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmmodified for the lifetime of the parameter.
    ///  Since 2.8
    public static let staticNick = ParamFlags(64) /* G_PARAM_STATIC_NICK */
    /// the string used as blurb when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmodified for the lifetime of the parameter.
    ///  Since 2.8
    public static let staticBlurb = ParamFlags(128) /* G_PARAM_STATIC_BLURB */
    /// calls to `g_object_set_property()` for this
    ///   property will not automatically result in a "notify" signal being
    ///   emitted: the implementation must call `g_object_notify()` themselves
    ///   in case the property actually changes.  Since: 2.42.
    public static let explicitNotify = ParamFlags(1073741824) /* G_PARAM_EXPLICIT_NOTIFY */
    /// the parameter is deprecated and will be removed
    ///  in a future version. A warning will be generated if it is used
    ///  while running with G_ENABLE_DIAGNOSTIC=1.
    ///  Since 2.26
    public static let deprecated = ParamFlags(2147483648) /* G_PARAM_DEPRECATED */

    /// the parameter can only be set upon object construction
    @available(*, deprecated) public static let construct_only = ParamFlags(8) /* G_PARAM_CONSTRUCT_ONLY */
    /// upon parameter conversion (see `g_param_value_convert()`)
    ///  strict validation is not required
    @available(*, deprecated) public static let lax_validation = ParamFlags(16) /* G_PARAM_LAX_VALIDATION */
    /// the string used as name when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmodified for the lifetime of the parameter.
    ///  Since 2.8
    @available(*, deprecated) public static let static_name = ParamFlags(32) /* G_PARAM_STATIC_NAME */
    /// internal
    @available(*, deprecated) public static let private_ = ParamFlags(32) /* G_PARAM_PRIVATE */
    /// the string used as nick when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmmodified for the lifetime of the parameter.
    ///  Since 2.8
    @available(*, deprecated) public static let static_nick = ParamFlags(64) /* G_PARAM_STATIC_NICK */
    /// the string used as blurb when constructing the
    ///  parameter is guaranteed to remain valid and
    ///  unmodified for the lifetime of the parameter.
    ///  Since 2.8
    @available(*, deprecated) public static let static_blurb = ParamFlags(128) /* G_PARAM_STATIC_BLURB */
    /// calls to `g_object_set_property()` for this
    ///   property will not automatically result in a "notify" signal being
    ///   emitted: the implementation must call `g_object_notify()` themselves
    ///   in case the property actually changes.  Since: 2.42.
    @available(*, deprecated) public static let explicit_notify = ParamFlags(1073741824) /* G_PARAM_EXPLICIT_NOTIFY */
}
func cast<I: BinaryInteger>(_ param: I) -> ParamFlags { ParamFlags(rawValue: cast(param)) }
func cast(_ param: ParamFlags) -> UInt32 { cast(param.rawValue) }


/// The signal flags are used to specify a signal's behaviour, the overall
/// signal description outlines how especially the RUN flags control the
/// stages of a signal emission.
public struct SignalFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GSignalFlags` enum value
    public var value: GSignalFlags { get { GSignalFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GSignalFlags` enum value
    public init(_ enumValue: GSignalFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Invoke the object method handler in the first emission stage.
    public static let runFirst = SignalFlags(1) /* G_SIGNAL_RUN_FIRST */
    /// Invoke the object method handler in the third emission stage.
    public static let runLast = SignalFlags(2) /* G_SIGNAL_RUN_LAST */
    /// Invoke the object method handler in the last emission stage.
    public static let runCleanup = SignalFlags(4) /* G_SIGNAL_RUN_CLEANUP */
    /// Signals being emitted for an object while currently being in
    ///  emission for this very object will not be emitted recursively,
    ///  but instead cause the first emission to be restarted.
    public static let noRecurse = SignalFlags(8) /* G_SIGNAL_NO_RECURSE */
    /// This signal supports "`detail`" appendices to the signal name
    ///  upon handler connections and emissions.
    public static let detailed = SignalFlags(16) /* G_SIGNAL_DETAILED */
    /// Action signals are signals that may freely be emitted on alive
    ///  objects from user code via `g_signal_emit()` and friends, without
    ///  the need of being embedded into extra code that performs pre or
    ///  post emission adjustments on the object. They can also be thought
    ///  of as object methods which can be called generically by
    ///  third-party code.
    public static let action = SignalFlags(32) /* G_SIGNAL_ACTION */
    /// No emissions hooks are supported for this signal.
    public static let noHooks = SignalFlags(64) /* G_SIGNAL_NO_HOOKS */
    /// Varargs signal emission will always collect the
    ///   arguments, even if there are no signal handlers connected.  Since 2.30.
    public static let mustCollect = SignalFlags(128) /* G_SIGNAL_MUST_COLLECT */
    /// The signal is deprecated and will be removed
    ///   in a future version. A warning will be generated if it is connected while
    ///   running with G_ENABLE_DIAGNOSTIC=1.  Since 2.32.
    public static let deprecated = SignalFlags(256) /* G_SIGNAL_DEPRECATED */

    /// Invoke the object method handler in the first emission stage.
    @available(*, deprecated) public static let run_first = SignalFlags(1) /* G_SIGNAL_RUN_FIRST */
    /// Invoke the object method handler in the third emission stage.
    @available(*, deprecated) public static let run_last = SignalFlags(2) /* G_SIGNAL_RUN_LAST */
    /// Invoke the object method handler in the last emission stage.
    @available(*, deprecated) public static let run_cleanup = SignalFlags(4) /* G_SIGNAL_RUN_CLEANUP */
    /// Signals being emitted for an object while currently being in
    ///  emission for this very object will not be emitted recursively,
    ///  but instead cause the first emission to be restarted.
    @available(*, deprecated) public static let no_recurse = SignalFlags(8) /* G_SIGNAL_NO_RECURSE */
    /// No emissions hooks are supported for this signal.
    @available(*, deprecated) public static let no_hooks = SignalFlags(64) /* G_SIGNAL_NO_HOOKS */
    /// Varargs signal emission will always collect the
    ///   arguments, even if there are no signal handlers connected.  Since 2.30.
    @available(*, deprecated) public static let must_collect = SignalFlags(128) /* G_SIGNAL_MUST_COLLECT */
}
func cast<I: BinaryInteger>(_ param: I) -> SignalFlags { SignalFlags(rawValue: cast(param)) }
func cast(_ param: SignalFlags) -> UInt32 { cast(param.rawValue) }


/// The match types specify what `g_signal_handlers_block_matched()`,
/// `g_signal_handlers_unblock_matched()` and `g_signal_handlers_disconnect_matched()`
/// match signals by.
public struct SignalMatchType: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GSignalMatchType` enum value
    public var value: GSignalMatchType { get { GSignalMatchType(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GSignalMatchType` enum value
    public init(_ enumValue: GSignalMatchType) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// The signal id must be equal.
    public static let id = SignalMatchType(1) /* G_SIGNAL_MATCH_ID */
    /// The signal detail must be equal.
    public static let detail = SignalMatchType(2) /* G_SIGNAL_MATCH_DETAIL */
    /// The closure must be the same.
    public static let closure = SignalMatchType(4) /* G_SIGNAL_MATCH_CLOSURE */
    /// The C closure callback must be the same.
    public static let `func` = SignalMatchType(8) /* G_SIGNAL_MATCH_FUNC */
    /// The closure data must be the same.
    public static let data = SignalMatchType(16) /* G_SIGNAL_MATCH_DATA */
    /// Only unblocked signals may be matched.
    public static let unblocked = SignalMatchType(32) /* G_SIGNAL_MATCH_UNBLOCKED */

    /// The C closure callback must be the same.
    @available(*, deprecated) public static let func_ = SignalMatchType(8) /* G_SIGNAL_MATCH_FUNC */
}
func cast<I: BinaryInteger>(_ param: I) -> SignalMatchType { SignalMatchType(rawValue: cast(param)) }
func cast(_ param: SignalMatchType) -> UInt32 { cast(param.rawValue) }


/// These flags used to be passed to `g_type_init_with_debug_flags()` which
/// is now deprecated.
/// 
/// If you need to enable debugging features, use the GOBJECT_DEBUG
/// environment variable.
///
/// **TypeDebugFlags is deprecated:**
/// g_type_init() is now done automatically
public struct TypeDebugFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTypeDebugFlags` enum value
    public var value: GTypeDebugFlags { get { GTypeDebugFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTypeDebugFlags` enum value
    public init(_ enumValue: GTypeDebugFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Print no messages
    public static let `none` = TypeDebugFlags(0) /* G_TYPE_DEBUG_NONE */
    /// Print messages about object bookkeeping
    public static let objects = TypeDebugFlags(1) /* G_TYPE_DEBUG_OBJECTS */
    /// Print messages about signal emissions
    public static let signals = TypeDebugFlags(2) /* G_TYPE_DEBUG_SIGNALS */
    /// Keep a count of instances of each type
    public static let instanceCount = TypeDebugFlags(4) /* G_TYPE_DEBUG_INSTANCE_COUNT */
    /// Mask covering all debug flags
    public static let mask = TypeDebugFlags(7) /* G_TYPE_DEBUG_MASK */

    /// Print no messages
    @available(*, deprecated) public static let none_ = TypeDebugFlags(0) /* G_TYPE_DEBUG_NONE */
    /// Keep a count of instances of each type
    @available(*, deprecated) public static let instance_count = TypeDebugFlags(4) /* G_TYPE_DEBUG_INSTANCE_COUNT */
}
func cast<I: BinaryInteger>(_ param: I) -> TypeDebugFlags { TypeDebugFlags(rawValue: cast(param)) }
func cast(_ param: TypeDebugFlags) -> UInt32 { cast(param.rawValue) }


/// Bit masks used to check or determine characteristics of a type.
public struct TypeFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTypeFlags` enum value
    public var value: GTypeFlags { get { GTypeFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTypeFlags` enum value
    public init(_ enumValue: GTypeFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Indicates an abstract type. No instances can be
    ///  created for an abstract type
    public static let abstract = TypeFlags(16) /* G_TYPE_FLAG_ABSTRACT */
    /// Indicates an abstract value type, i.e. a type
    ///  that introduces a value table, but can't be used for
    ///  `g_value_init()`
    public static let valueAbstract = TypeFlags(32) /* G_TYPE_FLAG_VALUE_ABSTRACT */

    /// Indicates an abstract value type, i.e. a type
    ///  that introduces a value table, but can't be used for
    ///  `g_value_init()`
    @available(*, deprecated) public static let value_abstract = TypeFlags(32) /* G_TYPE_FLAG_VALUE_ABSTRACT */
}
func cast<I: BinaryInteger>(_ param: I) -> TypeFlags { TypeFlags(rawValue: cast(param)) }
func cast(_ param: TypeFlags) -> UInt32 { cast(param.rawValue) }


/// Bit masks used to check or determine specific characteristics of a
/// fundamental type.
public struct TypeFundamentalFlags: OptionSet {
    /// The corresponding value of the raw type
    public var rawValue: UInt32 = 0
    /// The equivalent raw Int value
    public var intValue: Int { get { Int(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent raw `gint` value
    public var int: gint { get { gint(rawValue) } set { rawValue = UInt32(newValue) } }
    /// The equivalent underlying `GTypeFundamentalFlags` enum value
    public var value: GTypeFundamentalFlags { get { GTypeFundamentalFlags(rawValue: cast(rawValue)) } set { rawValue = UInt32(newValue.rawValue) } }

    /// Creates a new instance with the specified raw value
    public init(rawValue: UInt32) { self.rawValue = rawValue }
    /// Creates a new instance with the specified `GTypeFundamentalFlags` enum value
    public init(_ enumValue: GTypeFundamentalFlags) { self.rawValue = UInt32(enumValue.rawValue) }
    /// Creates a new instance with the specified Int value
    public init(_ intValue: Int)   { self.rawValue = UInt32(intValue)  }
    /// Creates a new instance with the specified `gint` value
    public init(_ gintValue: gint) { self.rawValue = UInt32(gintValue) }

    /// Indicates a classed type
    public static let classed = TypeFundamentalFlags(1) /* G_TYPE_FLAG_CLASSED */
    /// Indicates an instantiable type (implies classed)
    public static let instantiatable = TypeFundamentalFlags(2) /* G_TYPE_FLAG_INSTANTIATABLE */
    /// Indicates a flat derivable type
    public static let derivable = TypeFundamentalFlags(4) /* G_TYPE_FLAG_DERIVABLE */
    /// Indicates a deep derivable type (implies derivable)
    public static let deepDerivable = TypeFundamentalFlags(8) /* G_TYPE_FLAG_DEEP_DERIVABLE */

    /// Indicates a deep derivable type (implies derivable)
    @available(*, deprecated) public static let deep_derivable = TypeFundamentalFlags(8) /* G_TYPE_FLAG_DEEP_DERIVABLE */
}
func cast<I: BinaryInteger>(_ param: I) -> TypeFundamentalFlags { TypeFundamentalFlags(rawValue: cast(param)) }
func cast(_ param: TypeFundamentalFlags) -> UInt32 { cast(param.rawValue) }
