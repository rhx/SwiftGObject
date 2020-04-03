#include <glib.h>
#include <glib-object.h>

/// Get the type of a `GObject` instance.
/// @param gobject the object to get the type for
GTypeClass *glibobject_get_instance_type(GObject * const gobject)  __attribute__((nonnull)) __attribute__((returns_nonnull));

/// Return whether the given receiver is a `GObject`.
/// @param gobject pointer to test
gboolean glibobject_is_object(GObject * const gobject)  __attribute__((nonnull));

/// Get a single property from a `GObject`
/// @param gobject the object to enquire
/// @param name the name of the property to retrieve
/// @param storage the buffer to store the property value in
void glibobject_get_property(gpointer gobject, const char *name, void *storage)  __attribute__((nonnull));

/// Set a single property on a `GObject`
/// @param gobject the object to set the property on
/// @param name the name of the property to set
/// @param value the property value to set
void glibobject_set_property(gpointer gobject, const char *name, intptr_t value)  __attribute__((nonnull));
