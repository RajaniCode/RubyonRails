arr = [1, 2, 3, 4, 5, 5, 7, 4, 9, 0]
puts arr.length
arr.each { |x| print x, " " }
puts 
arr.sort_by!(&:to_i)
puts arr.length
arr.each { |x| print x, " " }
puts 

arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D"]
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
puts "sort_by"
arr.sort_by!(&:to_s)
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
puts "sort_by upcase same as downcase"
arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D"]
arr.sort_by! { |word| word.upcase }
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
puts "sort_by downcase same as upcase" 
arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D"]
arr.sort_by! { |word| word.downcase}
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
puts

arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D", 1, 2, 3, 4, 5, 5, 7, 4, 9, 0]
arr = arr.partition { |x| x.is_a? Numeric }
arr[0].sort!
arr[1].sort!
arr.flatten!
puts arr.length
arr.each_with_index {|val, index| puts "array[#{index}] = #{val}" }
