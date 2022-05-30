class A
end

class B < A
end

puts "B < A"
puts B < A # => true
puts

puts "A < A"
puts A < A # => false
puts

puts "B <= A"
puts B <= A # => true
puts

puts "A <= A"
puts A <= A # => true
puts