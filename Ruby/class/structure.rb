a = 1
b = "alpha"
c = 2.3

klass = Struct.new(:a, :b, :c)

unpacked = klass.new(a, b, c)

a = 4
b = "gamma"
c = 5.6

p unpacked

p unpacked.to_h[:a]
p unpacked.to_a[1]
p unpacked.to_s
