class Document
end

doc = Document.new

puts "doc.class"
puts doc.class
puts

puts "doc.instance_of? Document"
puts doc.instance_of? Document
puts

puts "doc.is_a? Document"
puts doc.is_a? Document
puts
puts "doc.kind_of? Document"
puts doc.kind_of? Document
puts

puts "Document.superclass"
puts Document.superclass
puts

puts "doc.instance_of? Document.superclass"
puts doc.instance_of? Document.superclass
puts

puts "doc.kind_of? Document.superclass"
puts doc.kind_of? Document.superclass
puts

puts "doc.is_a? Document.superclass"
puts doc.is_a? Document.superclass
puts

puts "Document.superclass.superclass"
puts Document.superclass.superclass
puts

puts "doc.instance_of? Document.superclass.superclass"
puts doc.instance_of? Document.superclass.superclass
puts

puts "doc.kind_of? Document.superclass.superclass"
puts doc.kind_of? Document.superclass.superclass
puts

puts "doc.is_a? Document.superclass.superclass"
puts doc.is_a? Document.superclass.superclass