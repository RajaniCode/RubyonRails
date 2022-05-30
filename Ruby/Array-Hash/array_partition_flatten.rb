arr = ["A", "B", "C", "D", "E", "e", "g", "d", "B", "D", 1, 2, 3, 4, 5, 5, 7, 4, 9, 0]
arr = arr.partition { |x| x.is_a? Numeric }
arr[0].sort!
arr[1].sort!
arr.flatten!
puts arr.length
arr.each_with_index { |val, index| puts "array[#{index}] = #{val}" }
