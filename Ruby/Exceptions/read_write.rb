File.open('file.txt', 'w') do |f|
 f.puts "Hello World!"  
end 

File.open('file.txt', 'r') do |f|  
 while line = f.gets  
  puts line  
 end
 puts f.close
end

