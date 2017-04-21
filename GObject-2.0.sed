s/GLib.Type/GType/g
s/GLib.CompareFunc/GCompareFunc/g
s/GLib.CompareDataFunc/GCompareDataFunc/g
s/\(public init(_ op:.*<GInitiallyUnowned>.*\)/override \1/
s/\(public func ref()\)/@discardableResult \1/
s/\(public func refSink()\)/@discardableResult \1/
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
