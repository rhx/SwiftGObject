#include <glib.h>
#include <glib-object.h>

/// Get the type of a `GObject` instance.
/// @param gobject the object to get the type for
GTypeClass *glibobject_get_instance_type(GObject * const gobject);

/// Return whether the given receiver is a `GObject`.
/// @param gobject pointer to test
gboolean glibobject_is_object(GObject * const gobject);
