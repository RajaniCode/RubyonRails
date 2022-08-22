module Log
 def self.write
  "Logging"
 end
end

class EventLog
 include Log
 def Prepare
  puts Log.write
 end
end

e = EventLog.new
e.Prepare