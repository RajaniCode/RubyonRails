# Module A consists of the methods a1 and a2. Module B consists of the methods b1 and b2. 
# The class Sample includes both modules A and B. 
# The class Sample can access all four methods, namely, a1, a2, b1, and b2. 
# Therefore, you can see that the class Sample inherits from both the modules. 
# Thus, you can say the class Sample shows multiple inheritance or a mixin.

module A
   def a1
    puts "a1"
   end
   def a2
    puts "a2"
   end
end

module B
   def b1
    puts "b1"
   end
   def b2
    puts "b2"
   end
end

# class Sample; include A; include B; def s1() puts "s1" end; end

class Sample
include A
include B
 def s1
  puts "s1"
 end
end

s = Sample.new
s.a1
s.a2
s.b1
s.b2
s.s1
puts


module Noko
  class << self
    def XML # some args
      'method XML'
    end
  end
  module XML
   puts 'module XML'
  end
end


puts Noko.XML
puts
puts Noko::XML