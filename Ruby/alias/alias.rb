def foo
 "foo"
end

# alias baz foo
alias :baz :foo


puts baz

class Bar
 def qux
  "qux"
 end
 # alias quux qux
 alias :quux :qux 
end

puts Bar.new.quux


class HelloWorld
 def hello
  "hello"
 end
 # need to use a comma between the "new method name" and "old method name"
 # alias_method takes both symbols and strings as input
 # alias_method "hi", "hello"
 # alias_method(:hi, :hello)
 alias_method :hi, :hello
end

puts HelloWorld.new.hi

# alias vs. alias_method
class Professional
  def name
   "Yukihiro Matsumoto"
  end

  def self.moniker
   # alias :nickname :name # Yukihiro Matsumoto # puts Developer.new.nickname
   alias_method :nickname, :name # Matz # puts Developer.new.nickname
  end
end

class Developer < Professional
 def name
  "Matz"
 end
 moniker
end

# With "alias" the method "nickname" is not able to pick the method "name" defined in Developer
# This is because alias is a keyword and it is lexically scoped. It means it treats self as the value of self at the time the source code was read
# In contrast "alias_method" treats self as the value determined at the run time
# Since "alias_method" is a method defined in class Module it can be overridden later and it offers more flexibility, use "alias_method"

puts Developer.new.nickname


module Corge
 def grault
  "grault"
 end
 # alias :garply :grault
 alias_method :garply, :grault 
end
include Corge
puts Corge::garply
puts Corge.garply


# Makes new_name a new copy of the method old_name. This can be used to retain access to methods that are overridden.
module Modul
  alias_method :func, :exit
  def exit(code=0)
    puts "Exiting with code #{code}"
    func(code)
  end
end
include Modul
exit(99)

