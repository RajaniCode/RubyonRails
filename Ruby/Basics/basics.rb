class Document

 attr_accessor :title, :author, :content

 def initialize(title, author, content)
  @title = title
  @author = author
  @content = content
 end

 def words
   @content.split
 end

 def word_count
  words.size
 end

end

doc = Document.new("Ruby", "Matz", "To be or ...")

puts doc.words

puts

puts doc.word_count

puts

doc.words.each do |word|
 puts word
end

puts

doc.words.each { |word| puts word }

puts

puts "doc.class"
puts doc.class
puts

puts "doc.instance_of? Document"
puts doc.instance_of? Document
puts

puts "doc.kind_of? Document"
puts doc.kind_of? Document
puts

puts "doc.is_a? Document"
puts doc.is_a? Document