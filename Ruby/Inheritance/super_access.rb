class BaseClass
 # public
 # protected
 private
 def method
  puts "BaseClass method"
 end
end

class DerivedClass < BaseClass
 def method
  puts "super calls public/protected/private with same name"
  super
  puts "DerivedClass method"
 end
end

dc = DerivedClass.new 
dc.method
