puts "m = [1, 2, 3, 4, 5]"
m = [1, 2, 3, 4, 5]
puts m.inspect
puts

puts "m.map { |n| n + 1 }"
m.map { |n| n + 1 }
puts m.inspect
puts

puts "m.map! { |n| n + 1 }"
m.map! { |n| n + 1 }
puts m.inspect 
puts

puts "m.map { |n| n + 1 }"
m.map { |n| n + 1 }
puts m.inspect
puts

puts "c = [1, 2, 3, 4, 5]"
c = [1, 2, 3, 4, 5]
puts c.inspect
puts

puts "c.collect { |n| n + 1 }"
c.collect { |n| n + 1 }
puts c.inspect
puts

puts "c.collect! { |n| n + 1 }"
c.collect! { |n| n + 1 }
puts c.inspect 
puts

puts "c.collect { |n| n + 1 }"
c.collect { |n| n + 1 }
puts c.inspect
puts