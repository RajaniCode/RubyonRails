arr = [1, 2, 3, 4, 5, 5, 7, 4, 9, 0]
puts arr.length
arr.each { |x| print x, " " }
puts 
arr = arr.uniq
puts arr.length
arr.each { |x| print x, " " }
puts 

arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D"]
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
arr = arr.uniq
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
puts

arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D", 1, 2, 3, 4, 5, 5, 7, 4, 9, 0]
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
arr = arr.uniq
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
