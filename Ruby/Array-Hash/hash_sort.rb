puts "merge hashes unique keys"
a = {:a => 100}
b = {:b => 200}
p "c = a.merge(b)"
c = a.merge(b)
p c
puts

puts "merge hashes old"
a = {:a => 100}
b = {:a => 150, :b => 200}
p "c = a.merge(b) {|key, old, new| old}"
c = a.merge(b) {|key, old, new| old}
p c
puts

puts "merge hashes new"
a = {:a => 100}
b = {:a => 150, :b => 200}
p "c = a.merge(b) {|key, old, new| new}"
c = a.merge(b) {|key, old, new| new}
p c
puts

puts "merge hashes new - old"
a = {:a => 100}
b = {:a => 150, :b => 200}
p "c = a.merge(b) {|key, old, new| new - old}"
c = a.merge(b) {|key, old, new| new - old}
p c
puts

puts "hash from array of arrays"
puts "arr = [ [1, 'banana'], [2, 'mango'] ]"
arr = [ [1, 'banana'], [2, 'mango'] ]
p arr
p "arr.class"
p arr.class
p "arr.length"
p arr.length
a = {}
arr.each do |x|
  b = Hash[*x] 
  a = a.merge(b)
end
p a
p "a.class"
p a.class
p "a.size"
p a.size
puts

# hsh.keys.sort # comparison of Symbol with String failed (ArgumentError)
# hsh.values.sort # comparison of String with nil failed (ArgumentError)
# hsh.sort # comparison of Array with Array failed (ArgumentError)

puts "alphanumeric"
hsh = {:name => 'Foo', 10 => [20, 30, 40], 50 => 60, 70 => 80, 0.9 => 90, 02 => 03, '' => nil, nil => '', true => 10, false => 01, 1 => true, 0 => false}
puts hsh.inspect
puts "hsh.class"
puts hsh.class
puts "hsh.size"
puts hsh.size
puts

# warning: duplicated key at line 244 ignored: :A
# hsh = {:a => 'Austria', :c => 'Canada', :b => 'Belgium', :A => 'Australia', :C => 'Cuba', :B => 'Brazil', :A => 'Antartica'}

p "sort alpha"
hsh = {:a => 'Austria', :c => 'Canada', :b => 'Belgium', :A => 'Australia', :C => 'Cuba', :B => 'Brazil'}
p hsh
p "hsh.keys.sort"
p hsh.keys.sort
p "hsh.keys.class"
p hsh.keys.class
p "hsh.values.sort"
p hsh.values.sort
p "hsh.values.class"
p hsh.values.class
p "hsh_sort = hsh.sort"
p hsh_sort = hsh.sort
p "hsh_sort.class"
p hsh_sort.class
a = {}
hsh_sort.each do |x|
  b = Hash[*x] 
  a = a.merge(b)
end
p "sorted hash"
p a
p "a.class"
p a.class
p "a.size"
p a.size
puts

# warning: duplicated key at line 360 ignored: 0 # 0 => -0
# warning: duplicated key at line 360 ignored: 9 # 9 => 81
# hsh = {1 => 1, 3 => 9, -5 => 25, 7 => 49, -0.0 => 0.1, 9 => 81, -0.8 => -0.7, 0 => 0, 0 => -0, 9 => 9}

p "sort numeric"
hsh = {1 => 1, 3 => 9, -5 => 25, 7 => 49, -0.0 => 0.1, 9 => 81, -0.8 => -0.7, 0 => 0}
p hsh
p "hsh.keys.sort"
p hsh.keys.sort
p "hsh.keys.class"
p hsh.keys.class
p "hsh.values.sort"
p hsh.values.sort
p "hsh.values.class"
p hsh.values.class
p "hsh_sort = hsh.sort"
p hsh_sort = hsh.sort
p "hsh_sort.class"
p hsh_sort.class
a = {}
hsh_sort.each do |x|
  b = Hash[*x] 
  a = a.merge(b)
end
p "sorted hash"
p a
p "a.class"
p a.class
p "a.size"
p a.size
puts

puts "EOF"