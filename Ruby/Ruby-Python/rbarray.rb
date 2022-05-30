lst = ['alpha', 'beta', 'gamma' , 'delta', 'epsilon', 'beta', 'zeta', 'greek', 'gamma', 'eta', nil, 1, 'theta', 'latin']

puts "lst.class"
puts lst.class
puts

print lst
puts
puts "lst.length"
puts lst.length # String or Array
puts "lst.size"
puts lst.size # collections
puts "lst.count"
puts lst.count # block or an argument
puts

puts "lst.push('iota')"
lst.push('iota')
print lst
puts
puts lst.length
puts

puts "lst.delete('greek')"
lst.delete('greek')
print lst
puts
puts lst.length
puts

puts "lst.delete(1)"
lst.delete(1)
print lst
puts
puts lst.length
puts

puts "lst.pop()"
lst.pop()
print lst
puts
puts lst.length
puts

# lst.pop(5) # will pop last 5 elements
=begin
puts "lst.pop(5)"
lst.pop(5)
print lst
puts
puts lst.length
puts
=end

puts "lst.delete_at(5)"
lst.delete_at(5)
print lst
puts
puts lst.length
puts

puts "lst.delete_at(6)"
lst.delete_at(6)
print lst
puts
puts lst.length
puts

puts("lst.insert(9, 'kappa')")
lst.insert(9, 'kappa')
print lst
puts
puts lst.length
puts

puts "lst[10] = 'lambda'"
lst[10] = 'lambda'
print lst
puts
puts lst.length
puts

puts "lst.insert(lst.count, 'mu')"
lst.insert(lst.count, 'mu')
print lst
puts
puts lst.length
puts

puts "lst.delete(nil)"
lst.delete(nil)
print lst
puts
puts lst.length
puts

puts "lst.insert(8, 'iota')"
lst.insert(8, 'iota')
print lst
puts
puts lst.length
puts

l = ['nu', 'xi', 'omicron', 'pi', 'rho', 'sigma', 'tau', 'upsilon', 'phi', 'chi', 'psi', 'omega']

puts "lst.concat(l)"
lst.concat(l)
print lst
puts
puts lst.length
puts

puts "le = lst"
le = lst 
puts

puts "le == lst"
puts le == lst
puts

puts "le != lst"
puts le != lst
puts

puts "le === lst"
puts le === lst
puts

puts "le.eql? lst"
puts le.eql? lst
puts

puts "le.equal? lst"
puts le.equal? lst
puts

puts "lc = lst.compact"
lc = lst.compact # Returns a copy of self with all nil elements removed
puts

puts "lc == lst"
puts lc == lst
puts

puts "lc != lst"
puts lc != lst
puts

puts "lc === lst"
puts lc === lst
puts

puts "lc.eql? lst"
puts lc.eql? lst
puts

puts "lc.equal? lst"
puts lc.equal? lst