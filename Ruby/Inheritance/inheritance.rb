class BaseClass
 def method
  puts 'BaseClass method'
 end
end
class DerivedClass < BaseClass
 def method
  # puts 'super'
  # super
  puts 'DerivedClass method'
 end
end

bc = BaseClass.new
bc.method
puts 
dc = DerivedClass.new
dc.method
