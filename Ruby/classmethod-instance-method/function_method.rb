class A
 def self.class_method
  puts "self.class_method"
 end
 class << self
   def another_class_method
     puts "class << self def another_class_method"
   end
 end

 def instance_method
  puts "instance_method"
 end
end

class B; end
def B.yet_another_class_method
 puts "B.yet_another_class_method"
end

class C; end
c = C.new
def c.another_instance_method
 puts "c.another_instance_method"
end

puts "class methods"
A.class_method
A.another_class_method
B.yet_another_class_method
puts

puts "instance methods"
a = A.new
a.instance_method
c.another_instance_method