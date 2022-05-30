arr = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

arr.chunk { |x| x.odd? }.each { |b, i| puts i if b }
puts
arr.chunk { |x| x.even? }.each { |b, i| puts i if b }
puts

even_chunk = arr.chunk { |x| x.even? }.to_a
p even_chunk
p even_chunk.class
puts