def func
 1.upto(5) do 
  yield
 end
end

func { puts "Hi" }
puts

def fibonacci(max)
 i1, i2 = 1, 1
 while i1 <= max
  yield i1
  i1,  i2 = i2, i1 + i2
 end
end

fibonacci(1000){ |x| print x, " " }
puts("\n\n")

# class Array custom implementation
class Array
  def finder
    for i in 0...size
      value = self[i]
      return value if yield(value)
    end
    return nil
  end
end

p [1, 3, 7, 11, 13].finder{ |x| x * x > 30 }
puts
# Default
p [1, 3, 7, 11, 13].find{ |x| x * x > 30 }
puts

p ["r", "u", "b", "y"].collect { |x| x.succ }
puts

f = File.open("file.txt", "r")
f.each do |line|
 print line
end
f.close

# class Array custom implementation
class Array
 def inject(n)
  each { |value| n = yield(n, value) }
  n
 end
 def sum
  inject(0) { |n, value| n + value }  
 end
 def product
  inject(1) { |n, value| n * value }
 end
end

p [1, 2, 3, 4, 5].sum
p [1, 2, 3, 4, 5].product
# Default
p [1, 2, 3, 4, 5].reduce(:+)   
p [1, 2, 3, 4, 5].reduce(:*)  
p [1, 2, 3, 4, 5].reduce(:-) # p 1 - 2 - 3 - 4 - 5
p [1.0, 2, 3, 4, 5].reduce(:/)
p [1.to_f, 2, 3, 4, 5].reduce(:/)
puts

# class File custom implementation
class File
 def File.openAndProcess(*args)
  f = File.open(*args)
  yield f
  f.close
 end 
end

File.openAndProcess("file.txt") do |f|
 print while f.gets
end

puts

# Dafault
f = File.open("file.txt", "r")
print while f.gets
f.close
puts

# class File custom implementation
class File
 def File.customOpen(*args)
  f = File.new(*args)
  puts block_given?
  if block_given?
   yield f
   f.close
   f = nil
  end
  return f
 end
end

# block_given = false
f = File.customOpen("file.txt")
f.each do |line|
 print line
end
puts

# block_given = true
File.customOpen("file.txt") do |f|
 print while f.gets
end
puts


class YieldPerson
 attr_accessor :fname, :lname
 def initialize(fname = nil, lname = nil)
  @fname = fname
  @lname = lname
  yield self if block_given?
 end
 def greet
  "#{@fname} #{@lname} says hello"
 end
end

YieldPerson.new do |p|
 p.fname = "Ruby"
 p.lname = "On Rails"
 puts p.greet
end
puts

def lambda_yield
 yield
end
block = lambda { puts "lambda block" }
lambda_yield(&block)
puts

def proc_new_yield
 yield
end
block = Proc.new { puts "Proc.new block" }
proc_new_yield(&block)
puts

def proc_yield
 yield
end
block = proc { puts "proc block" }
proc_yield(&block)
puts


def ampersand_block(&block)
  puts block.class
  puts block_given?
  block.call
end
ampersand_block do
 puts "ampersand_block.call"
end
puts

class Sample
 def ampersandblock(&block)
  puts block.class
  puts block_given?
  block.call(self)
 end
end
Sample.new.ampersandblock do
 puts "ampersandblock.call"
end
puts


def try
  if block_given?
    yield
  else
    "no block"
  end
end

puts try                  		#=> "no block"
puts try { "try block" }      		#=> "try block"
result = try do "try do block" end   	
puts result				#=> "try do block"


def n_times(a_thing)
 return proc { |n| n * a_thing }
end

x = n_times(23)
puts x.call(3)
puts 
puts x.call(4)
puts
x = n_times(3)
puts x.call("Ruby ")
puts

puts "EOF"