class BaseClass
 def initialize
  puts "Initialize BaseClass"
 end
 def method
  puts "BaseClass method"
 end
end

class DerivedClass < BaseClass
 def initialize
  puts "Initialize DerivedClass"
 end
 def method
  puts "super"
  super  
  puts "DerivedClass method"
 end
end
        
bc = BaseClass.new
dc = DerivedClass.new
puts
bc.method
puts
dc.method
