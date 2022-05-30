# Nested Hash

=begin
x={}
x[:a] = {}
x[:a][:b] = {}
x[:a][:b][:c] = {}
x[:a][:b][:c][:d] = "e"
=end

def autovivifying_hash
   Hash.new {|ht,k| ht[k] = autovivifying_hash}
end

x = autovivifying_hash
x[:a][:b][:c][:d] = "e"

puts x
puts x[:a]
puts x[:a][:b]
puts x[:a][:b][:c]
puts x[:a][:b][:c][:d]


class Hash
  def self.recursive
    new { |hash, key| hash[key] = recursive }
  end
end

date = Hash.recursive
date[:month][:day][:hours][:min][:sec] = 1

puts date
puts date[:month]
puts date[:month][:day]
puts date[:month][:day][:hours]
puts date[:month][:day][:hours][:min]
puts date[:month][:day][:hours][:min][:sec]