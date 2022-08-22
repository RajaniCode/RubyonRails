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
  protected
  def print_c
    base_instance = C.new
    derived_instance = Derived.new
    print("Access protected member in derived class in protected method with base class instance: %d\n" % [base_instance.pro])
    print("Access protected member in derived class in protected method with derived class instance: %d\n" % [derived_instance.pro])   
  end
end

class FurtherDerived < Derived
  def print_c
    super
  end
end

FurtherDerived.new.print_c