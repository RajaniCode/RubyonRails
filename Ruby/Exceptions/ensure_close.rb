begin
 fw = File.new("file.txt", "w")
 fw.write("Hello World!")
ensure
 fw.close
end

begin
 fr = File.new("file.txt", "r")
 while (line = fr.gets)
  puts line
 end
ensure
 fr.close
end

File.open('file.txt', 'w') do |f|
 f.puts "Hello World!"  
end 

File.open('file.txt', 'r') do |f|  
 while line = f.gets  
  puts line  
 end
 puts f.close
end


