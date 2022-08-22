arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

even_arr = arr.select { |x| x.even? }

puts even_arr.inspect