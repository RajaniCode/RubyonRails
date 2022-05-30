module MyModule
  def alias_class_method(new_name, old_name)
    define_singleton_method(new_name) { puts old_name }
  end
end

class MyClass
  def my_method
    puts "Hello World!"
  end
end

# MyClass.extend(MyModule)
# MyClass.alias_class_method(:my_new_method, :my_method)
MyClass.send :extend, MyModule
MyClass.send :alias_class_method, :my_new_method, :my_method

puts "MyClass.methods(false)"
puts MyClass.methods(false)
puts
puts "MyClass.method(:my_new_method).owner"
puts MyClass.method(:my_new_method).owner
puts
puts "MyClass.my_new_method"
MyClass.my_new_method
puts
puts "MyClass.instance_methods(false)"
puts MyClass.instance_methods(false)
puts
puts "MyClass.instance_method(:my_method).owner"
puts MyClass.instance_method(:my_method).owner
puts
puts "MyClass.new.my_method"
puts MyClass.new.my_method

# Object.extend(MyModule)

puts "EOF"

