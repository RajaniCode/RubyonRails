# Use only Kernel#proc as it's more concise and it's symmetrical to Kernel#lambda
# Kernel#proc
puts proc { true }

puts Proc.new { true }

puts lambda { true }


def _proc
 p = proc { return "proc" }
 p.call
 return "proc call"
end

def _lambda
 l = lambda { return "lambda" }
 l.call
 return "lambda call"
end

puts _proc

puts _lambda