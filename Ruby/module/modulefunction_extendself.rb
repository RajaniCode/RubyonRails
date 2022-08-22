module Modular
module_function
 def number
  1
 end
end

module XModular
 extend self
 def number
  1
 end
end


puts Modular.instance_method(:number).owner
puts Modular.public_method_defined?(:number)
puts Modular.private_method_defined?(:number) # true

puts Modular.method(:number).owner # #<Class:Modular>
puts Modular.method(:number).owner.singleton_class? # true
puts 
puts XModular.instance_method(:number).owner
puts XModular.public_method_defined?(:number)
puts XModular.private_method_defined?(:number) # false

puts XModular.method(:number).owner # XModular
puts XModular.method(:number).owner.singleton_class? # false