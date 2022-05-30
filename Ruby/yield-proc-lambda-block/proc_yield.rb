def greeter
 yield
end

# phrase =  Proc.new { puts "Hello World!" }
phrase =  proc { puts "Hello World!" }

greeter(&phrase)

# message = Proc.new do puts "Hello World!" end
message = proc do puts "Hello World!" end

greeter(&message)