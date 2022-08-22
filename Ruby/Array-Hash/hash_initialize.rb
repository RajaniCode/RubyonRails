a = {}
p a
b = { :x => 1, 2 => 3, :n => 4, Fixnum => 5 }
p b
c = Hash.new # empty
p c 
p c.class
d = Hash[ [1, 2], [3, 4] ]
p d

d = Hash[ [ [1, 2], [3, 4] ] ]
p d


e = Hash.new { |hsh, key| hsh[key] = [] } # empty
p e # empty
p e.class