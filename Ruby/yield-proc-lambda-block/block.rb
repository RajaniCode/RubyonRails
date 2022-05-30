def ampersand_block(&block)
  puts block.class
  puts block_given?
  block.call
end

ampersand_block do
 puts "ampersand_block.call"
end

puts

class Sample
 def ampersandblock(&block)
  puts block.class
  puts block_given?
  block.call(self)
 end
end

Sample.new.ampersandblock do
 puts "ampersandblock.call"
end

puts