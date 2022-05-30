# Note 
# a = [1, 2], b = [3, 4, 5] 
# p a # [[1, 2], [3, 4, 5]]

a = [1, 2]; b = [3, 4, 5] 

p a.class # Array
p a # [1, 2]
p b # [3, 4, 5]

p a.include?(1) # true
p a + b # [1, 2, 3, 4, 5]
p [a] * 2 # [[1, 2], [1, 2]]

p a[0] # 1
p a.first # 1
p a[-1] # 2
p a.last # 2
p a.length # 2
p a.size # 2
p a.count # 2


vals = [:a, :b, :c, :d]

## index, index [left to right]

# count from 0..count from 0 
# p vals[1..2] # [:b, :c]

# count from 0...count from 1
p vals[1...3] # [:b, :c]

## index, index [right to left] [negative]

# count from 1..count from 1
p vals[-3..-2] # [:b, :c]

# count from 1...count from 0
p vals[-3...-1] # [:b, :c]


## index [left to right], length

# count from 0 , length
p vals[1, 2] # [:b, :c]

# index [right to left] [negative], length

# count from 1, length
p vals[-3, 2] # [:b, :c]


