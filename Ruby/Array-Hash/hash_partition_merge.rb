hsh = { :A => "A", :B => "B", :C => "C", :D => "D", :E => "E", :e => "e", :g => "g", :d => "d", 
1 => 1, 2 => 2, 3 => 3, 4 => 4, 5 => 5, 7 => 7, 9 => 9, 0 => 0 }
hsh.each {|key, value| puts "hash[#{key}] = #{value}" }
hsh_numeric, hsh_alpha = hsh.partition { |k, v| k.is_a? Numeric }.map(&:to_h)
puts hsh_numeric.class
puts hsh_numeric
puts hsh_alpha.class
puts hsh_alpha
hsh = hsh_numeric.merge!(hsh_alpha)
puts hsh.class
puts hsh
