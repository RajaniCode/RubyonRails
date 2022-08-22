module Modular
# private method 'module_method' called for Extender:Class (NoMethodError)
# module_function
  def module_method
    puts "This is method in module"
  end
end

include Modular
Modular.module_method

class Extender
  extend Modular
end

# extend class level
# private method 'module_method' called for Extender:Class (NoMethodError)
Extender.module_method