require 'ostruct'

person = OpenStruct.new
person.color = "Red"
person.code = "FF0000"
person.is_rgb = true

puts person.color
puts person.code
puts person.is_rgb