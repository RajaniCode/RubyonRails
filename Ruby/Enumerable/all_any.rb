require 'date'
now = DateTime.now
puts now

puts ".all? = true when none of the collection members are false or nil, true if empty"
puts ["Alpha", 'c', true, !false, 0, 1, 2, now].all? # true
puts [nil, true, 99].all? # false
puts [].all? # true
puts

puts %w{}.all? # true
puts %w{ alpha beta gamma }.all? { |x| x.length >= 4 } # true
puts %w{ alpha beta gamma }.all? { |x| x.length >= 5 } # false
puts

empty_array = []
empty_hash = {}
puts empty_array.all? # true
puts empty_hash.all? # true
puts

puts ".any? = true if at least one of the collection members is not false or nil, false if empty"
puts ["Alpha", 'c', true, !false, 0, 1, 2, now].any?  # true
puts [nil, true, 99].any? # true
puts [].any?  # false
puts

puts %w{}.any? #false
puts %w{ alpha beta gamma }.any? { |x| x.length >= 4 } # true
puts %w{ alpha beta gamma }.any? { |x| x.length >= 5 } # true
puts

empty_array = []
empty_hash = {}
puts empty_array.any? # false
puts empty_hash.any? # false
