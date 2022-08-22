def func(*args)
 puts args.class
 p args
end

# *args is also named arguments (unlike Python *args) and array elements
func(a = 'Alpha')
puts
func(a = 'A', n = 1)
puts

# *args is also named arguments (unlike Python *args) and array of arrays
func(arr = ['A', 'B', 'G'])
puts
func(arr = ['A', 'B', 'C'], nums = [1, 2, 3])
puts

# *args is array elements
func('alpha', 'beta', 'gamma')
puts
func(:alpha, :beta, :gamma)
puts
func(1)
puts
func('A')
puts
func(true)
puts
func()
puts
# func(Nil) # uninitialized constant Nil (NameError)

# *args is array of arrays
arr = ['a', 'b', 'g']
func(arr)
puts
nums = ['1', '2', '3']
func(arr, nums)
puts




