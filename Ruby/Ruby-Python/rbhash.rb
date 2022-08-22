hsh = { "I" => 1, "don't" => 1, "like" => 1, "spam" => 963 }
puts hsh.inspect
puts hsh.class
puts

hsh = { :first_name => 'Russ', :last_name => 'Olsen' }
puts hsh.inspect
puts hsh.class
puts

hsh = { first_name: 'Russ', last_name: 'Olsen' }
puts hsh.inspect
puts hsh.class
puts

# warning: duplicated key at line 19 ignored: 2 # 2 => 'beta'
=begin
hsh = { 1 => 'alpha', 2 => 'beta', 3 => 'gamma', 4 => 'delta', 5 => 'epsilon', 2 => 'beta', 6 => 'zeta', 7 => 'gamma',
	9 => nil, 10 => 'iota',  nil => 'kappa', 11 => 'lambda', nil => nil, 12 => 'mu', 13 => 'nu' }
=end

hsh = { 1 => 'alpha', 2 => 'beta', 3 => 'gamma', 4 => 'delta', 5 => 'epsilon', 6 => 'zeta', 7 => 'gamma',
	9 => nil, 10 => 'iota',  nil => 'kappa', 11 => 'lambda', nil => nil, 12 => 'mu', 13 => 'nu' }

puts hsh.inspect
puts hsh.class
puts "hsh.size"
puts hsh.size # collections
puts "hsh.length"
puts hsh.length # String or Array
puts "hsh.count"
puts hsh.count # block or an argument
puts

puts "add if key does not exist else update"
puts "hsh[8] = 'eta'"
hsh[8] = 'eta'
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "update if key exists else add"
puts "hsh[7] = 'eta'"
hsh[7] = 'eta'
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "delete"
puts "hsh.delete(9)"
hsh.delete(9)
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "deleteif"
puts "hsh.delete_if { |key, value| key.equal? nil } " # Deletes a key-value pair from hshh for every pair the block evaluates to true
hsh.delete_if { |key, value| key.equal? nil } 
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "add if key does not exist else update"
puts "hsh[nil] = nil"
hsh[nil] = nil
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "deleteif"
puts "hsh.delete_if { |key, value| value === 'lambda' } " # Deletes a key-value pair from hshh for every pair the block evaluates to true
hsh.delete_if { |key, value| value === 'lambda' } 
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "clear"
puts "hsh.clear"
hsh.clear
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts "hsh.length"
puts hsh.length # String or Array
puts "hsh.count"
puts hsh.count # block or an argument
puts

l1 = ['A', 'B', 'C', 'D', 'E']
l2 = [1, 2, 3, 4, 5]
l3 = ['alpha', 'beta', 'gamma', 'delta', 'epsilon']
hsh = { 1 => l1, 2 => l2, 3 => l3 }
puts hsh.inspect
puts "hsh.class"
puts hsh.class
puts "hsh.size"
puts hsh.size
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

puts "Hash"
puts "hsh = Hash[1 => 'English', 2 => 'French']"
hsh = Hash[1 => 'English', 2 => 'French']
puts hsh.inspect
puts "hsh.class"
puts hsh.class
puts "hsh.size"
puts hsh.size
puts

hsh = {1 => 'Red', 2 => 'Green', 3 => 'Blue'}

=begin
puts 'hsh.each { |key, value| print key, " => ", value.inspect, "\n" }'
hsh.each { |key, value| print key, " => ", value.inspect, "\n" }
puts "hsh.size"
puts hsh.size
puts

puts 'hsh.each { |key, value| print key, " => ", hsh[key].inspect, "\n" }'
hsh.each { |key, value| print key, " => ", hsh[key].inspect, "\n" }
puts "hsh.size"
puts hsh.size
puts
=end

puts 'hsh.each { |entry| puts entry.inspect }'
hsh.each { |entry| puts entry.inspect }
puts "hsh.size"
puts hsh.size
puts

puts 'hsh.each {|name, value| puts "#{name} => #{value}"}'
hsh.each {|name, value| puts "#{name} => #{value}"}
puts "hsh.size"
puts hsh.size
puts

hsh = {:name => 'Foo', :number => 1 }
puts hsh.inspect
puts "hsh.class"
puts hsh.class
puts "hsh.size"
puts hsh.size
puts

puts "hsh.has_key?(:number)"
puts hsh.has_key?(:number)
puts

puts "hsh.include?(:number)"
puts hsh.include?(:number)
puts

puts "hsh.key?(:number)"
puts hsh.key?(:number)
puts

puts "hsh.member?(:number)"
puts hsh.member?(:number)
puts

puts "hsh.has_key?(:technology)"
puts hsh.has_key?(:technology)
puts

puts "hsh.include?(:technology)"
puts hsh.include?(:technology)
puts

puts "hsh.key?(:technology)"
puts hsh.key?(:technology)
puts

puts "hsh.member?(:technology)"
puts hsh.member?(:technology)
puts

puts "hsh.has_key?(nil)"
puts hsh.has_key?(nil)
puts

puts "hsh.include?(nil)"
puts hsh.include?(nil)
puts

puts "hsh.key?(nil)"
puts hsh.key?(nil)
puts

puts "hsh.member?(nil)"
puts hsh.member?(nil)
puts

puts "hsh.has_value?('Foo')"
puts hsh.has_value?('Foo')
puts

puts "hsh.has_value?('Ruby')"
puts hsh.has_value?('Ruby')
puts

puts "hsh.has_value?(nil)"
puts hsh.has_value?(nil)
puts

puts "hsh[:technology].nil?"
puts hsh[:technology].nil?
puts

puts "hsh[:technology] # nil"
puts hsh[:technology] # return nil if key :technology does not exist
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "hsh[:name] ||= 'Ruby' # 'Foo'"
puts hsh[:name] ||= 'Ruby' # set default 'Ruby' if key :name does not exist
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "hsh[:technology] ||= 'Ruby' # 'Ruby'"
puts hsh[:technology] ||= 'Ruby' # set default 'Ruby' if key :technology does not exist
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

# puts "hsh.fetch(:version) # KeyError"
# puts hsh.fetch(:version)

puts "hsh.fetch(:name, 'Ruby') # 'Foo'"
puts hsh.fetch(:name, 'Ruby') # fetch default 'Ruby' if key :name does not exist
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "hsh.fetch(:version, 2.2) # 2.2"
puts hsh.fetch(:version, 2.2) # fetch default 2.2 if key :version does not exist
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts 'puts hsh.fetch(:version) { |key| "#{key} does not exist" } # version does not exist'
puts hsh.fetch(:version) { |key| "#{key} does not exist" } # return default 'version does not exist' if key :version does not exist
puts hsh.inspect
puts "hsh.size"
puts hsh.size
puts

puts "!hsh[:version].nil?"
puts !hsh[:version].nil?
puts "puts hsh.inspect if !hsh[:technology].nil?"
puts hsh.inspect if !hsh[:technology].nil?
puts

=begin
puts "comprehension"
puts "arr = 1.upto(5).to_a"
arr = 1.upto(5).to_a
puts "arr.class"
puts arr.class
puts arr.inspect
hsh = Hash[arr.to_a.map {|x| [x, (x*x)]}]
puts hsh.inspect
puts "hsh.class"
puts hsh.class
puts "hsh.size"
puts hsh.size
puts
=end

puts "comprehension"
puts "hsh = Hash[1.upto(5).to_a.map {|x| [x, (x*x)]}]"
hsh = Hash[1.upto(5).to_a.map {|x| [x, (x*x)]}]
puts hsh.inspect
puts "hsh.class"
puts hsh.class
puts "hsh.size"
puts hsh.size
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
h = {}
hsh_sort.each do |x|
  h = h.merge(Hash[*x] )
end
p "sorted hash"
p h
p "h.class"
p h.class
p "h.size"
p h.size
p "h.eql? hsh"
p h.eql? hsh
p "h.equal? hsh"
p h.equal? hsh
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
h = {}
hsh_sort.each do |x|
  h = h.merge(Hash[*x] )
end
p "sorted hash"
p h
p "h.class"
p h.class
p "h.size"
p h.size
p "h.eql? hsh"
p h.eql? hsh
p "h.equal? hsh"
p h.equal? hsh
puts

p "get by value"
hsh = {:a => 'Austria', :c => 'Canada', :b => 'Belgium', :A => 'Australia', :C => 'Canada', :B => 'Brazil'}
p hsh
p "hsh.keys"
p hsh.keys
p "hsh.keys.class"
p hsh.keys.class
p "hsh.values"
p hsh.values
p "hsh.values.class"
p hsh.values.class
p "hsh.values_at(:a, :c, :z)"
p hsh.values_at(:a, :c, :z)
p "hsh.each { |name, value| p name if  value == 'Canada' }"
hsh.each { |name, value| p name if  value == 'Canada' }
puts

puts "EOF"