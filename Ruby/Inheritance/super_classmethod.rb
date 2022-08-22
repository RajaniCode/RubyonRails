class BaseClass
 # public 
 # protected
 def self.method
  puts "BaseClass method"
 end
 private_class_method :method
end

class DerivedClass < BaseClass
 def self.method
  puts "super calls public/protected/private with same name"
  super
  puts "DerivedClass method"
 end
end
        
# BaseClass.method # Note: BaseClass can call protected, however not private_class_method 
DerivedClass.method
