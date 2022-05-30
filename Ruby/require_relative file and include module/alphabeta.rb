# require loads a file from the $LOAD_PATH
require_relative 'alphabet.rb'

module Beta
  #include Alpha #for inheritance: class B < A regardless of Class A public private protected
  class B        # < Alpha::A for protected members of Class A 
    include Alpha
    def method_b
      #a = A.new
      #a.method
	  A.new.method_a
	  puts "Method method_b in Class B in Module Beta in alphabeta.rb"
    end
  end
end
b = Beta::B.new.method_b