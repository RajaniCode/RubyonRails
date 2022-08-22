def func(**kwargs)
 puts kwargs.class
 p kwargs
end

# **kwargs is also named arguments and hash
func(a={:alpha => 1, :beta => 2, :gamma => 3})
# **kwargs CANNOT be passed numeric key hash
# func(n = {1 => 'alpha', 2 => 'beta', 3 => 'gamma'})
puts()

# **kwargs is hash
habc = {:a => 1, :b => 2, :c => 3}
func(habc)
puts()
hdef = {:d => 4, :e => 5, :f => 6}
# **kwargs cannot be passed comma separated hashes
# func(habc, hdef)
puts(habc, hdef)
puts
hn = {1 => 'alpha', 2 => 'beta', 3 => 'gamma'}
# **kwargs CANNOT be passed numeric key hash
# func(hn)
puts(hn)
puts()


# **kwargs is hash of hashes
func(:a => {:alpha => 1, :beta => 2, :gamma => 3}, :n => {:a => 1, :b => 2, :g => 3})
puts()

# **kwargs is hash key-value
func("d": 1)
puts()
func("a": "A")
puts()
func(:a => "alpha")
puts()
func(:a => "alpha", :n => 1) # func(:a => :alpha, :n => 1)