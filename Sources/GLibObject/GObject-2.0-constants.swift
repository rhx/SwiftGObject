import CGLib
import GLib

/// Mask containing the bits of `GParamSpec.flags` which are reserved for GLib.
public let PARAM_MASK = G_PARAM_MASK /* gint 255 */

/// `GParamFlags` value alias for `G_PARAM_STATIC_NAME` | `G_PARAM_STATIC_NICK` | `G_PARAM_STATIC_BLURB`.
/// 
/// Since 2.13.0
public let PARAM_STATIC_STRINGS: CInt = 224 /* G_PARAM_STATIC_STRINGS */

/// Minimum shift count to be used for user defined flags, to be stored in
/// `GParamSpec.flags`. The maximum allowed is 10.
public let PARAM_USER_SHIFT = G_PARAM_USER_SHIFT /* gint 8 */

/// A mask for all `GSignalFlags` bits.
public let SIGNAL_FLAGS_MASK = G_SIGNAL_FLAGS_MASK /* gint 511 */

/// A mask for all `GSignalMatchType` bits.
public let SIGNAL_MATCH_MASK = G_SIGNAL_MATCH_MASK /* gint 63 */

/// A bit in the type number that's supposed to be left untouched.
public let TYPE_FLAG_RESERVED_ID_BIT: GType = 1 /* G_TYPE_FLAG_RESERVED_ID_BIT */

/// An integer constant that represents the number of identifiers reserved
/// for types that are assigned at compile-time.
public let TYPE_FUNDAMENTAL_MAX: CInt = 255 /* G_TYPE_FUNDAMENTAL_MAX */

/// Shift value used in converting numbers to type IDs.
public let TYPE_FUNDAMENTAL_SHIFT = G_TYPE_FUNDAMENTAL_SHIFT /* gint 2 */

/// First fundamental type number to create a new fundamental type id with
/// `G_TYPE_MAKE_FUNDAMENTAL()` reserved for BSE.
public let TYPE_RESERVED_BSE_FIRST = G_TYPE_RESERVED_BSE_FIRST /* gint 32 */

/// Last fundamental type number reserved for BSE.
public let TYPE_RESERVED_BSE_LAST = G_TYPE_RESERVED_BSE_LAST /* gint 48 */

/// First fundamental type number to create a new fundamental type id with
/// `G_TYPE_MAKE_FUNDAMENTAL()` reserved for GLib.
public let TYPE_RESERVED_GLIB_FIRST = G_TYPE_RESERVED_GLIB_FIRST /* gint 22 */

/// Last fundamental type number reserved for GLib.
public let TYPE_RESERVED_GLIB_LAST = G_TYPE_RESERVED_GLIB_LAST /* gint 31 */

/// First available fundamental type number to create new fundamental
/// type id with `G_TYPE_MAKE_FUNDAMENTAL()`.
public let TYPE_RESERVED_USER_FIRST = G_TYPE_RESERVED_USER_FIRST /* gint 49 */

/// If passed to `G_VALUE_COLLECT()`, allocated data won't be copied
/// but used verbatim. This does not affect ref-counted types like
/// objects.
public let VALUE_NOCOPY_CONTENTS = G_VALUE_NOCOPY_CONTENTS /* gint 134217728 */
