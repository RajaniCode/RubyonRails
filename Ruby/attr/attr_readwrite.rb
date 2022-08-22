class Person
 attr_reader :readonly
 attr_writer :writeonly
 attr_accessor :readwrite
end

pson = Person.new()

puts pson.readonly
# pson.readonly = "Hi"

pson.writeonly = "Hi"
# puts pson.writeonly

pson.readwrite = "Hello World!"
puts pson.readwrite

class Personnel
 attr_reader :name
 attr_writer :name
end

psnl = Personnel.new()
psnl.name = "Ruby"
puts psnl.name

class Personal
 attr_accessor :name
end

prnl = Personnel.new()
prnl.name = "Rails"
puts prnl.name

class People
 def name
  @name
 end

 def name=(str)
  @name = str
 end
end

ple = People.new()
ple.name = "RubyOnRails"
puts ple.name

class Persons
 def name
  @name
 end

 def name=(str)
  @name=(str)
 end

 def greet
  puts "Hello #{name}!"
 end
end

psons = Persons.new()
psons.name = "RoR"
puts psons.greet