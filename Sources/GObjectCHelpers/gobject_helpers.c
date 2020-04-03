#include "gobject_helpers.h"

/// Get the type of a `GObject` instance.
/// @param gobject the object to get the type for
GTypeClass *glibobject_get_instance_type(GObject * const gobject)
{
    return G_TYPE_FROM_INSTANCE(gobject);
}

/// Return whether the given receiver is a `GObject`.
/// @param gobject pointer to test
gboolean glibobject_is_object(GObject * const gobject)
{
    return G_IS_OBJECT(gobject);
}
