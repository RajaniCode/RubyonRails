class A

end

class B < A

end


a = A.new
b = B.new

puts "b.class"
puts b.class
puts

puts "b.instance_of? B"
puts b.instance_of? B
puts

puts "b.class.superclass"
puts b.class.superclass
puts

puts "b.instance_of? A"
puts b.instance_of? A
puts

puts "b.kind_of? A"
puts b.kind_of? A
puts

puts "b.is_a? A"
puts b.is_a? A

puts "b.class.superclass.superclass"
puts b.class.superclass.superclass
puts

puts "b.class.superclass.superclass.superclass"
puts b.class.superclass.superclass.superclass