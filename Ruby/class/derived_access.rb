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

class Program < C
  def print_c
    base_instance = C.new
    derived_instance = Program.new
    print("Access public member with base class instance: %d\n" % [base_instance.pub])
    print("Access public member with derived class instance: %d\n" % [derived_instance.pub])
    print("Access protected member in derived class with base class instance: %d\n" % [base_instance.pro])
    print("Access protected member in derived class with derived class instance: %d\n" % [derived_instance.pro]) 
    print("Cannot access private member from outsite its scope\n") # print(base_instance.pri) # print(derived_instance.pri)    
  end
end

Program.new.print_c

