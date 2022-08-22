def func
 begin
  raise RuntimeError, "To Force Issue"
 rescue
  return 1
 else
  return 2
 ensure
  return 3
 end
end

def nested
 begin
  begin
   raise RuntimeError,"To Force Issue"
  rescue
   return 4
  else
   return 5
  ensure
   return 6
  end
 rescue
  puts 7
 else
  puts 8
 ensure
  puts 9
 end
end
        
puts func()

puts nested()