puts "Object.methods"
puts Object.methods
puts

puts "Object.methods.sort"
puts Object.methods.sort
puts

puts "Object.instance_methods"
puts Object.instance_methods
puts

puts "Time.methods"
puts Time.methods
puts

puts "Time.instance_methods"
puts Time.instance_methods
puts

class Object
  def local_methods
    (methods - Object.instance_methods).sort
  end
end

puts "Time.now"
puts Time.now
puts

puts "Time.now.local_methods"
puts Time.now.local_methods
puts

puts "require 'date'"
require 'date'
puts "DateTime.now"
puts DateTime.now
puts

puts "DateTime.now.local_methods"
puts DateTime.now.local_methods
puts

puts "Enumerable.methods"
puts Enumerable.methods

class Clss
 def self.class_method 
  "This is class method in class"
 end
 def instance_method 
  "This is instance method in class"
 end
end

puts "Clss.class_method"
puts Clss.class_method
puts
puts "Clss.new.instance_method"
puts Clss.new.instance_method
puts
puts "Clss.methods"
puts Clss.methods
puts
puts "Clss.instance_methods"
puts Clss.instance_methods
puts

module Mod
 def module_method
  "This is method in module"
 end
end

puts "include Mod"
include Mod
puts "Mod.module_method"
puts Mod.module_method
puts
puts "Mod.methods"
puts Mod.methods
puts

puts "EOF"