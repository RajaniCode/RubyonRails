# map or map! or collect
# (&:to_s) or { |i| i.to_s }

int_arr = [1, 2, 3, 4, 5]
puts "int_arr = [1, 2, 3, 4, 5]"
print int_arr
puts("\n\n")

puts "str_arr = int_arr.map(&:to_s)"
str_arr = int_arr.map(&:to_s)
print str_arr
puts("\n\n")

puts "str_arr = int_arr.map!(&:to_s)"
str_arr = int_arr.map!(&:to_s)
print str_arr
puts("\n\n")

puts "str_arr = int_arr.collect(&:to_s)"
str_arr = int_arr.collect(&:to_s)
print str_arr
puts("\n\n")

puts "str_arr = int_arr.map{ |i| i.to_s }"
str_arr = int_arr.map{ |i| i.to_s }
print str_arr
puts("\n\n")

puts "str_arr = int_arr.map!{ |i| i.to_s }"
str_arr = int_arr.map!{ |i| i.to_s }
print str_arr
puts("\n\n")

puts "str_arr = int_arr.collect{ |i| i.to_s }"
str_arr = int_arr.collect{ |i| i.to_s }
print str_arr