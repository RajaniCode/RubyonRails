class C
  public # default
  attr_accessor :pub
  protected
  attr_accessor :pro
  private
  attr_accessor :pri
  def initialize
    @pub = 0
    @pro = 1
    @pri = 2
  end
end

class Derived < C
  def print_c
      c = C.new
      print("Access public member: %d\n" % [c.pub])        
      print("Access protected member in derived class: %d\n" % [c.pro])      
      print("Cannot access private member from outsite its scope") # print(c.pri)
      
  end
end

Derived.new.print_c