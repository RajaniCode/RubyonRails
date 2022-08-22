begin
 puts "Before raise"
 raise "Error occurred"
 puts "After raise"
rescue Exception => e
 puts e.message
 puts e.backtrace.inspect
ensure
 puts "finally"
end

