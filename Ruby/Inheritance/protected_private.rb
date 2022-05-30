class Program
 def public_method
  puts "This is public"
  puts "Internal call to private"
  hello()
 end
 protected
 def protected_method
  puts "This is protected"
 end
 # Convention
 # private
 def private_method
  puts "This is private"
 end 
 def hello() puts :Hi end
 # def hello() puts "What's up?" end
 # def hello; puts "What's up?"; end
 private :private_method, :hello
end

class Client < Program
 def main_method
   p = Program.new
   p.public_method
   p.protected_method
   # p.hello # Error
 end
end

Client.new.main_method
# Program.new.private_method # Error
# Program.new.private_method # Error

  