class Clss
  def self.class_method
   puts "This is self.class method in class"
  end 
  class << self
   # alias :c_method :class_method
   alias_method :c_method, :class_method
  end
  def instance_method
    puts "This is instance method in class"
  end  
  # alias :i_method :instance_method
  alias_method :i_method, :instance_method
end

puts "Clss.methods(false)"
puts Clss.methods(false)
puts
puts "Clss.instance_methods(false)"
puts Clss.instance_methods(false)
puts

class Single
  def self.clss_method
   puts "This is self.class method in class"
  end
  self.singleton_class.send(:alias_method, :cls_method, :clss_method)
end

puts "Single.methods(false)"
puts Single.methods(false)
puts

module Mod
module_function
  def module_method
   puts "This is method in module"
  end 
  class << self
   # alias :m_method :module_method
   alias_method :m_method, :module_method
  end
end

puts "include Mod"
include Mod
puts "Mod.methods(false)"
puts Mod.methods(false)