class C
  attr_accessor :x
  def initialize
   @x = 1
  end
end

module D
  attr_accessor :x
  def initializer
   @x = 2
  end
end

module M
  attr_accessor :x
  def initializer
   @x = 3
  end
end

class DerivedInclude < C
  include D, M
  def print_c
      c = C.new
      c.x = 1      
      derived_include = DerivedInclude.new
      print("c.x = %d\n" % [c.x])
      print("x = %d\n" % [x])
      initializer
      print("self.x = %d\n" % [self.x])
      print("multiple_derived.x = %d\n" % [derived_include.x])
  end
end

DerivedInclude.new.print_c()
DerivedInclude.new.initializer
p DerivedInclude.new.x
