x = "Ruby On Rails"

puts "Ruby On Rails" =~ /On/

puts /On/ =~ "Ruby On Rails"

regexs = (/On/)
s = "Ruby On Rails"

puts s =~ regexs

regexs = (/^h/)
s = "hello"

puts s =~ regexs