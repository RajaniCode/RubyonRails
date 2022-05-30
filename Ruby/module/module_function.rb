# Creates module functions for the named methods. 
# These functions may be called with the module as a receiver, 
# and also become available as instance methods to classes that mix in the module. 
# Module functions are copies of the original, and so may be changed independently. 
# The instance-method versions are made private. 
# If used with no arguments, subsequently defined methods become module functions.

module Mod
 def one
  "This is one"
 end
 module_function :one
end

class Clss
include Mod
 def call_one
  one
 end
end

puts Mod.one
puts Clss.new.call_one

module Mod
 def one
  "This is new one"
 end
end
puts Mod.one
puts Clss.new.call_one