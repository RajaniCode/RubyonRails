puts "arr = [1, 2, 3, 4, 5]"
arr = [1, 2, 3, 4, 5]
print arr
puts
puts(arr.class)
puts


puts "arr = ['1', '2', '3', '4', '5']"
arr = ['1', '2', '3', '4', '5']
print arr
puts
puts(arr.class)
puts

puts "arr = (1..5).to_a"
arr = (1..5).to_a
print arr
puts
puts(arr.class)
puts

puts "arr = ('1'..'5').to_a"
arr = ('1'..'5').to_a
print arr
puts
puts(arr.class)
puts

puts "arr = *(1..5)"
arr = *(1..5)
print arr
puts("\n\n")

puts "arr = *('1'..'5')"
arr = *('1'..'5')
print arr
puts
puts(arr.class)
puts

puts "arr = %w[ 1 2 3 4 5 ]"
arr = %w[ 1 2 3 4 5 ]
print arr
puts
puts(arr.class)
puts

puts "arr = %w[ '1' '2' '3' '4' '5' ]"
arr = %w[ '1' '2' '3' '4' '5' ]
print arr
puts
puts(arr.class)
puts

puts "arr = %w{ 1 2 3 4 5 }"
arr = %w{ 1 2 3 4 5 }
print arr
puts
puts(arr.class)
puts

puts "arr = %w{ '1' '2' '3' '4' '5' }"
arr = %w{ '1' '2' '3' '4' '5' }
print arr
puts
puts(arr.class)
puts

# array of symbols Ruby 2.0
puts "arr = %i(address city state postal country)"
arr = %i(address city state postal country)
print arr
puts
puts(arr.class)
puts

puts "arr = %I(address city state postal country)"
arr = %I(address city state postal country)
print arr
puts
puts(arr.class)
puts

puts "arr = %i{address city state postal country}"
arr = %i{address city state postal country}
print arr
puts
puts(arr.class)
puts

puts "arr = %I{address city state postal country}"
arr = %I{address city state postal country}
print arr
puts
puts(arr.class)
puts
puts "arr = Array.new(5){ |i| (i+1) }"
arr = Array.new(5){ |i| (i+1) }
print arr
puts
puts(arr.class)
puts

puts "arr = Array.new(5){ |i| (i+1).to_s }"
arr = Array.new(5){ |i| (i+1).to_s }
print arr
puts
puts(arr.class)
puts

puts "arr = 1.step(17,3).to_a"
arr = 1.step(17,3).to_a
print arr
puts
puts(arr.class)
puts

# map or map! or collect
# (&:to_s) or { |i| i.to_s }
puts "arr = 1.step(17, 3).to_a.map(&:to_s)"
arr = 1.step(17, 3).to_a.map(&:to_s)
print arr
puts
puts(arr.class)
puts

puts "5.times.map { |i| (i+1) }"
arr = 5.times.map { |i| (i+1) }
print arr
puts
puts(arr.class)
puts

puts "5.times.map { |i| (i+1).to_s }"
arr = 5.times.map { |i| (i+1).to_s }
print arr
puts
puts(arr.class)
puts

puts "arr = Array.new(5, &:to_i)"
arr = Array.new(5, &:to_i)
print arr
puts
puts(arr.class)
puts

puts "arr = Array.new(5, &:to_s)"
arr = Array.new(5, &:to_s)
print arr
puts
puts(arr.class)