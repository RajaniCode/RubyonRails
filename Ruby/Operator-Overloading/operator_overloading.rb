class Point
attr_accessor :x, :y
 def initialize(x=0, y=0)
  @x = x
  @y = y
 end
 def to_s
  return "(%d,%d)" % [@x, @y]
 end
 def +(obj)
    x = @x  + obj.x
    y = @y  + obj.y
    return Point.new(x, y)
 end
end

p1 = Point.new(2, 3)
p2 = Point.new(4, 6)
puts p1
puts p2
puts p1 + p2

=begin
ruby 2.3.1p112 (2016-04-26 revision 54768) [x86_64-linux]
   
(2,3)
(4,6)
(6,9)
=> nil
=end