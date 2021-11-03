import CGLib
import GLib
import GObjectCHelpers

/// Mask containing the bits of `GParamSpec.flags` which are reserved for GLib.
public let PARAM_MASK = G_PARAM_MASK // 255


/// `GParamFlags` value alias for `G_PARAM_STATIC_NAME` | `G_PARAM_STATIC_NICK` | `G_PARAM_STATIC_BLURB`.
/// 
/// Since 2.13.0
public let PARAM_STATIC_STRINGS = 224 // G_PARAM_STATIC_STRINGS

/// Minimum shift count to be used for user defined flags, to be stored in
/// `GParamSpec.flags`. The maximum allowed is 10.
public let PARAM_USER_SHIFT = G_PARAM_USER_SHIFT // 8


/// A mask for all `GSignalFlags` bits.
public let SIGNAL_FLAGS_MASK = G_SIGNAL_FLAGS_MASK // 511


/// A mask for all `GSignalMatchType` bits.
public let SIGNAL_MATCH_MASK = G_SIGNAL_MATCH_MASK // 63


/// A bit in the type number that's supposed to be left untouched.
public let TYPE_FLAG_RESERVED_ID_BIT = 1 // G_TYPE_FLAG_RESERVED_ID_BIT

/// An integer constant that represents the number of identifiers reserved
/// for types that are assigned at compile-time.
public let TYPE_FUNDAMENTAL_MAX = 255 // G_TYPE_FUNDAMENTAL_MAX

/// Shift value used in converting numbers to type IDs.
public let TYPE_FUNDAMENTAL_SHIFT = G_TYPE_FUNDAMENTAL_SHIFT // 2


/// First fundamental type number to create a new fundamental type id with
/// `G_TYPE_MAKE_FUNDAMENTAL()` reserved for BSE.
public let TYPE_RESERVED_BSE_FIRST = G_TYPE_RESERVED_BSE_FIRST // 32


/// Last fundamental type number reserved for BSE.
public let TYPE_RESERVED_BSE_LAST = G_TYPE_RESERVED_BSE_LAST // 48


/// First fundamental type number to create a new fundamental type id with
/// `G_TYPE_MAKE_FUNDAMENTAL()` reserved for GLib.
public let TYPE_RESERVED_GLIB_FIRST = G_TYPE_RESERVED_GLIB_FIRST // 22


/// Last fundamental type number reserved for GLib.
public let TYPE_RESERVED_GLIB_LAST = G_TYPE_RESERVED_GLIB_LAST // 31


/// First available fundamental type number to create new fundamental
/// type id with `G_TYPE_MAKE_FUNDAMENTAL()`.
public let TYPE_RESERVED_USER_FIRST = G_TYPE_RESERVED_USER_FIRST // 49


/// For string values, indicates that the string contained is canonical and will
/// exist for the duration of the process. See `g_value_set_interned_string()`.
public let VALUE_INTERNED_STRING = CInt(268435456) // G_VALUE_INTERNED_STRING


/// If passed to `G_VALUE_COLLECT()`, allocated data won't be copied
/// but used verbatim. This does not affect ref-counted types like
/// objects. This does not affect usage of `g_value_copy()`, the data will
/// be copied if it is not ref-counted.
public let VALUE_NOCOPY_CONTENTS = G_VALUE_NOCOPY_CONTENTS // 134217728
