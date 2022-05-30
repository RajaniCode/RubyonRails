#Input
print "What?"
input = gets.chomp
input.capitalize!
puts "Your input is #{input}"
#Output:
#What? Ruby
#Your input is Ruby


#if elsif else
print "What?"
input = gets.chomp
if input.capitalize! == "Ruby" #capitalize! with Bang
 puts "==== No Colon, Optional Space(Standard Two spaces), elsif, and end"
elsif input.capitalize == "Python" #capitalize without Bang
 puts "== Colon, Tab Indent, elif, and No end"
else
 puts "MongoDB"
end
#Output:
#What? NoSQL
#MongoDB


#capitalize and capitalize!
variable = "jOSHua"
variable.capitalize
puts variable #jOSHua
var = "jOSHua"
var.capitalize!
puts var #Joshua
#Output:
#jOSHua
#Joshua


#Alphabets
"A".upto("Z"){|x| print "#{x} " }
"A".upto("Z"){|x| print "#{x.ord} "} #ASCII
puts ('a'..'z').to_a
puts ('A'..'Z').to_a

#unless
unless false
 false
else
 true
#Output:
#false


#Random
r = Random.new.rand(20..30)
#String Format
puts "Random number: %s" % r


#String
print "Enter input"
user_input = gets.chomp
if user_input.include? "s"
  user_input.gsub!(/s/, "th")
else
  print "There are no \"s\"s in the string."
end
puts "Your string is: #{user_input}"
#Output:
#Enter input Super
#Your string is: thuper


#String 
#.object_id method gets the ID of an object—it's how Ruby knows whether two objects are the exact same object.
#See that the two "strings" are actually different objects, whereas the :symbol or :sym is the same object listed twice.
puts "string".object_id
puts "string".object_id
puts :sym.object_id
puts :sym.object_id
#Output:
#9293400
#9293180
#320008
#320008


#while
i = 1
while i < 11
  print "#{i} "
  i += 1
end
#Output: 
#1 2 3 4 5 6 7 8 9 10


#until
i = 1
until i == 11
  print "#{i} "
  i += 1
end
#Output: 
#1 2 3 4 5 6 7 8 9 10


#for Inclusive
for i in 1..10
  print "#{i} "
end
#Output: 
#1 2 3 4 5 6 7 8 9 10


#for Exclusive 
for i in 0...11
  print "#{i} "
end
#Output: 
#1 2 3 4 5 6 7 8 9 10


#for Exclusive 
lst = ["Alpha", "Beta", "Gamma"]
for i in 0...(lst.length)
  puts lst[i]
end
#Output:
#Alpha
#Beta
#Gamma


#loop
i = 11
loop do
 i -= 1 
 print "#{i} " 
 break if i <= 1
end
#Output:
#10 9 8 7 6 5 4 3 2 1


#loop next
i = 10
loop do
  i -= 1
  next if i % 2 != 0
  print "#{i} "
  break if i <= 0
end
#Output:
#8 6 4 2 0


#while
i = 0
while i < 11 do
 print "#{i} "
 i += 1
end
#Output
#1 2 3 4 5 6 7 8 9 10


#times
i = 1
10.times do  
    print "#{i} "  
    i += 1
end
#Output:
#1 2 3 4 5 6 7 8 9 10


#times
10.times {|i| print "#{i} "}
#Output:
#0 1 2 3 4 5 6 7 8 9


#times
10.times {print "Ruby "}
#Output: Ruby Ruby Ruby Ruby Ruby Ruby Ruby Ruby Ruby Ruby


#upto
1.upto(10) {|i|  print "#{i} "}
#Output:1 2 3 4 5 6 7 8 9 10


#upto
1.upto(10) {|i|  print "#{i} "}
#Output:1 2 3 4 5 6 7 8 9 10


#upto
i = 1
1.upto(10) do
    print "#{i} "
    i += 1
end
#Output:1 2 3 4 5 6 7 8 9 10


#downto
10.downto(1) {|i|  print "#{i} "}
#Output: 10 9 8 7 6 5 4 3 2 1


#downto
i = 10
10.downto(1) do
    print "#{i} "
    i -= 1
end
#Output: 10 9 8 7 6 5 4 3 2 1


#Array
array = [1,2,3,4,5]

array.each do |x|
  print "#{x} "
end
#Output:
#1 2 3 4 5


#Array
[1,2,3,4,5].each do |x|
  print "#{x} "
end
#Output:
#1 2 3 4 5


#Array of arrays
array = [["R"], ["Ruby"]]


#Array Sum
array = [1, 2, 3, 4, 5]
result = 0
array.each do |x|
  result += x
end
puts result
puts array.inject{|sum, x| sum + x}
#Output:
#15
#15


#Array Reverse and Combined Comparison Operator
fruits = ["orange", "apple", "banana", "pear", "grapes"]
fruits.sort! {|x, y| y <=> x}
#Output:
#["pear", "orange", "grapes", "banana", "apple"]


#push into Array
strings = ["HTML", "CSS", "JavaScript", "Python", "Ruby"]
symbols = []
strings.each{|s| symbols.push(s.to_sym)}
strings.each{|s| print "#{s} "}
strings.each{|s| symbols.push(s.intern)}
strings.each{|s| print "#{s} "}
#Output:
#HTML CSS JavaScript Python Ruby
#HTML CSS JavaScript Python Ruby


#Nested each on multi-dimensional arrays
s = [["ham", "swiss"], ["turkey", "cheddar"], ["roast beef", "gruyere"]]
s.each {|x| puts x.each {|y| y}}

#Output:
#ham
#swiss
#turkey
#cheddar
#roast beef
#gruyere


#Array
array = [0, 1, 2, 3, 4, 5, 6]
array.from(4)          #[4, 5, 6]
array.to(2)            #[[0, 1, 2], [3, 4, 5], [6, nil, nil]]
array.in_groups_of(3)  #[[0, 1], [3, 4, 5, 6]] 
array.split(2)         #[[0, 1], [3, 4, 5, 6]]


#hash
language = { 
  "name" => "Ruby",
  "Really?" => true
}
puts language["name"]
puts language["Really?"]
#Output:
#Ruby
true


#hash
language = { 
  :name => "Ruby",
  :Really? => true
}
puts language[:name]
puts language[:Really?]
#Output:
#Ruby
true

#new 1.9 hash syntax rather than the old hash rocket syntax :name => "Ruby", :Really? => true
language = { 
  name: "Ruby",
  Really?: true
}
puts language[:name]
puts language[:Really?]
#Output:
#Ruby
true


#Hash
pets = Hash.new
pets["R"] = "Ruby"
puts pets["R"]
#Output:
#Ruby


#select on hash
movie_ratings = {
  memento: 3,
  primer: 3.5,
  the_matrix: 5,
  truman_show: 4,
  red_dawn: 1.5,
  skyfall: 4,
  alex_cross: 2,
  uhf: 1,
  lion_king: 3.5
}
good_movies = movie_ratings.select{|x, y| y > 3}
good_movies.each{|x, y| puts "#{x} "}
#Output:
#primer 
#the_matrix 
#truman_show 
#skyfall 
#lion_king 


#Date
require 'date' #Some modules, like Math, are already present in the interpreter.
puts Date.today
Output:
#2015-07-12


#Time
require 'time' #Some modules, like Math, are already present in the interpreter.
puts Time.now
#Output:
#2015-07-10 23:14:30 +0000


#Time
puts Time.now.strftime("%d/%m/%Y %H:%M")
#Output:
#10/07/2015 23:13


#Time
puts Time.now.strftime("%d/%m/%Y")
#Output:
#10/07/2015


#Time
puts Time.now.strftime("%H:%M")
#Output:
#23:13


#sort_by
colors = {"blue" => 3, "green" => 1, "red" => 2}
colors = colors.sort_by do |color, count|
  count
end
colors.reverse!
#Output:
#[["blue", 3], ["red", 2], ["green", 1]]


#Ternary or Conditional
def by_three?(number)
 #return number % 3 == 0 ? true : false
 return number % 3 == 0 
end
puts by_three?(7)
puts by_three?(9)
#Output:
false
true


#implicit return 
def multiple_of_three(n)
  n % 3 == 0 ? "True" : "False"
end
#Output:
false


#Ternary or Conditional
puts Random.new.rand(1..100) % 2 == 0 ? true : false
#Output:
#true

#Ternary or Conditional
puts 1 < 2 ? "One is less than two!" : "One is not less than two."
#Output:
#One is less than two!


#conditional assignment
def my_method(optional_param)
  optional_param ||= 3
  puts optional_param
end

puts my_method
#Output:
#3


#Method returns last line
def sum(x,y)
  #optional return x + y
  x + y
end
puts sum(1, 2)
#Output:
#3


#Combined comparison operator
book_1 = "A Wrinkle in Time"
book_2 = "A Brief History of Time"
book_1 <=> book_2


#Call and Response
age.respond_to?(:next)
age = 26
#Output:
#true
#Output:
#1


#Combined Comparison Operator
# returns 1 if first operand is greater than the second, and -1 if the first operand is less than the second
x = "Alpha"
y = "Beta"
puts x <=> y
puts y <=> x
#Output:
#-1
#1


#Combined Comparison Operator
# returns 1 if first operand is greater than the second, and -1 if the first operand is less than the second
x = 1
y = 2
puts x <=> y
puts y <=> x
#Output:
#-1
#1


#case
puts "Please enter add, update, display, or delete"
choice = gets.chomp
case choice
when "add"
  puts "Added!"
when "update"
  puts "Updated!"
when "display"
  puts "Movies!"
when "delete"
  puts "Deleted!"
else
  puts "Error!"
end
#Output:
#Please enter add, update, display, or delete
# add
#Added!


#Conditinal 
puts favorite_language ||= "Haskell"
#Output:
#Haskell


#concatenation operator (also known as "the shovel!")
alphabet = ["a", "b", "c"]
#alphabet.push("d") # Update me!
alphabet << ("d") # Update me!
alphabet.each{|x| puts x}
caption = "A giraffe surrounded by "
#caption += "weezards!" # Me, t
caption << "weezards!" #Me, too!
puts caption
#Output:
#a
#b
#c
#d
#A giraffe surrounded by weezards!


#single-line if, unless, and times
<<-DOC
unless n.is_a? Integer
  return "n must be an integer."
end
DOC

"n must be an integer." unless n.is_a? Integer

<<-DOC
if n <= 0
  return "n must be greater than 0."
end
DOC

"n must be greater than 0." if n <= 0


<<-DOC
require 'prime'

prime_array ||= []  
prime = Prime.new
for num in (1..n)
prime_array.push(prime.next)
end
DOC

require 'prime'
prime_array ||= []  
prime = Prime.new
n.times{prime_array << prime.next}


#prime class
require 'prime'
def first_n_primes(n)
  # Check for correct input!
  "n must be an integer" unless n.is_a? Integer
  "n must be greater than 0" if n <= 0
  # The Ruby 1.9 Prime class makes the array automatically!
  prime = Prime.instance
  prime.first n
end
first_n_primes(10)
#Output:
#[2, 3, 5, 7, 11, 13, 17, 19, 23, 29]


#yield
def block_test
  puts "We're in the method!"
  puts "Yielding to the block..."
  yield
  puts "We're back in the method!"
end
block_test { puts ">>> We're in the block!" }
#Output:
#We're in the method!
#Yielding to the block...
#>>> We're in the block!
#We're back in the method!


#yield
def double(parameter)
  yield parameter * 2
end
double(10) {|x| puts x}
#Output:
#20


#&
convert symbols to procs using that handy little &
numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
strings = numbers.collect(&:to_s)
#OR
strings = numbers.map(&:to_s)


#Proc and yield
def greeter
  yield
end
phrase = Proc.new{ puts "Hello there!" }
#OR
phrase = Proc.new do puts "Hello there!" end
greeter(&phrase)
#Output:
#Hello there!


#Proc vs Lambda
def _proc
  victor = Proc.new { return "proc returns immediately" }
  victor.call
  "proc will ignore unexpected arguments and assign nil to any that are missing"
end

puts _proc

def _lambda
  victor = lambda { return "lambda returns control back to the calling method" }
  victor.call
  "lambda will throw an error if you pass it the wrong number of arguments"
end

puts _lambda

#Output:
#proc returns immediately
#lambda will throw an error if you pass it the wrong number of arguments


#class
class Person
  def initialize(name)
      @name = name
  end
end

$var = Person.new("Ruby")

$, @, or @@ mark global, instance, and class variables (respectively)

class ApplicationError
  def display_error
    puts "Error! Error!"
  end
end

class SuperBadError < ApplicationError #inheritance
end

err = SuperBadError.new 
err.display_error #accessed via inheritance


#attr_reader
#attr_writer
class Person
    attr_reader :readonly 
    attr_writer :writeonly
    attr_accessor :readwrite
  def initialize(name, job)
    @name = name
    @job = job
  end 
end


#Math
puts Math::PI
#Output: 3.141592653589793


#include
#Some modules, like Math, are already present in the interpreter.
class Angle
  include Math
  def cosine(n)
    cos(n) #Math::cos
  end
end


#extend mixes a module's methods at the class level. This means that class itself can use the methods, as opposed to instances of the class.
#include mixes a module's methods in at the instance level (allowing instances of a particular class to use the methods)
#ThePresent has a .now method that we'll extend to TheHereAnd
module ThePresent
  def now
    puts "It's #{Time.new.hour > 12 ? Time.new.hour - 12 : Time.new.hour}:#{Time.new.min} #{Time.new.hour > 12 ? 'PM' : 'AM'} (GMT)."
  end
end
class TheHereAnd
  extend ThePresent
end
class ThereAnd
  include ThePresent
end
# class level
TheHereAnd.now
# instance level
ThereAnd.new.now
#Output:
#It's 7:29 PM (GMT).
#It's 7:29 PM (GMT).


#public
class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status; puts "All systems go!" end
end


#public
class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status
    puts "All systems go!"  
  end
end


#private
class Application
  attr_accessor :status
  def initialize; end
  # Add your method here!
  public
  def print_status; puts "All systems go!" end
  private
  def password; 12345 end
end


#Version
"#{RUBY_VERSION}-p#{RUBY_PATCHLEVEL}"
#Output:
#"1.9.3-p0"