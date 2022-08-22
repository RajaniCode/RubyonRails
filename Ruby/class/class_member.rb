class C
 attr_accessor :x
end

class Program    
  def print_c
    a = C.new
    b = C.new
    a.x = 1
    b.x = 2
    print("Class Before a = b: a.x = %d, b.x = %d\n\n" % [a.x, b.x])
    a = b
    a.x = 3
    print("Class After a = b and a.x = 3: a.x = %d, b.x = %d\n" % [a.x, b.x])
  end
end

Program.new.print_c


