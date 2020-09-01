s/GLib.Type/GType/g
s/GLib.CompareFunc/GCompareFunc/g
s/GLib.CompareDataFunc/GCompareDataFunc/g
s/\(public init([a-z_]* op:.*<GInitiallyUnowned>.*\)/override \1/
s/\(public init.([a-z_]* op:.*<GInitiallyUnowned>.*\)/override \1/
s/\(func ref()\)/@discardableResult \1/
s/\(func refSink()\)/@discardableResult \1/
s/Id/ID/g
s/class Value:/class ValueBase:/
s/: \([A-Za-z.]*Notify[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Func[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshal[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Marshaller[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Callback[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Accumulator[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*SignalHandler[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transform[,)]\)/: @escaping \1/g
s/: \([A-Za-z.]*Transformer =\)/: @escaping \1/g
s/: \([A-Za-z.]*Hook[,)]\)/: @escaping \1/g
s|Pointer<_Value__data__union>|Pointer<GObjectTypeValueUnion>|g
s|_Value__data__union.self|GObjectTypeValueUnion.self|g
s|var float: Double|var float: Float|
s|func getFloat() -> Double|func getFloat() -> Float|
s|Double(g_value_get_float(value_ptr))|g_value_get_float(value_ptr)|
s|setUlong(vUlong v_ulong: Int)|setUlong(vUlong v_ulong: gulong)|
s|setInt(vInt v_int: Int)|setInt(vInt v_int: gint)|
s|setUint(vUint v_uint: Int)|setUint(vUint v_uint: guint)|
s|= value_ptr.pointee.data$|= value_ptr.withMemoryRebound(to: GType.self, capacity: 2) { UnsafeRawPointer($0+1).assumingMemoryBound(to: (_Value__data__union, _Value__data__union).self).pointee }|
s|value_ptr.pointee.data = newValue|value_ptr.withMemoryRebound(to: GType.self, capacity: 2) { UnsafeMutableRawPointer($0+1).assumingMemoryBound(to: (_Value__data__union, _Value__data__union).self).pointee = newValue }|
s|\(@discardableResult @inlinable\) @discardableResult|\1|
