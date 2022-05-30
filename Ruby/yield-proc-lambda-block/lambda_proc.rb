def _proc
  victor = Proc.new { return "proc returns immediately" }
  victor.call
  # return "proc will ignore unexpected arguments and assign nil to any that are missing"
  "proc will ignore unexpected arguments and assign nil to any that are missing"
end

puts _proc

def _lambda
  victor = lambda { return "lambda returns control back to the calling method" }
  victor.call
  # return "lambda will throw an error if you pass it the wrong number of arguments"
  "lambda will throw an error if you pass it the wrong number of arguments"
end

puts _lambda