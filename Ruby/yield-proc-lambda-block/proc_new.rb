# Use only Kernel#proc as it's more concise and it's symmetrical to Kernel#lambda
# Kernel#proc
puts proc { true }

puts Proc.new { true }

puts lambda { true }