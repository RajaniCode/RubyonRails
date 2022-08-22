require 'ostruct'

person = OpenStruct.new

zipper = [1,2].zip([3,4])

puts zipper.inspect
puts "zipper.class"
puts zipper.class
puts "zipper.length"
puts zipper.length
puts 

a = [1,2]
b = {3 => 4 }

a.zip(b).all? {|pair| pair[0] === pair[1]}

puts "a.zip(b).all?"
puts a.zip(b).all?


=begin
all?() public
Passes each element of the collection to the given block. The method returns true if the block never returns false or nil. If the block is not given, Ruby adds an implicit block of {|obj| obj} (that is all? will return true only if none of the collection members are false or nil.)

%w{ant bear cat}.all? {|word| word.length >= 3}   #=> true
%w{ant bear cat}.all? {|word| word.length >= 4}   #=> false
[ nil, true, 99 ].all?                            #=> false
=end
puts a.inspect
puts b.inspect