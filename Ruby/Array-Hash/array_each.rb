arr = [1, 2, 3, 4, 5, 6]
arr.each { |x| p x }

arr = ["A", "B", "C"]
arr.each_with_index { |value, index| puts "array[#{index}] = #{value}" }