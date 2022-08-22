movie = { title: '2001', genre: 'sci fi', rating: 10 }
movie.each { |entry| puts entry.inspect }
puts 
movie.each { |name, value| puts "#{name} => #{value}"}
puts 
# movie.each { |name, value| puts name }
# movie.each { |name, value| puts value }

arr = [ {:a => 'alpha'}, {:b => 'beta'} ]
hsh = {}
arr.each do |x|
 x.each { |name, value| hsh[name] = value }
end
puts hsh.inspect

a = [ {1 => 'alpha'}, {2 => 'beta'} ]
h = {}
a.each do |x|
 x.each { |name, value| h[name] = value }
end
puts h.inspect
