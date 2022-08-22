# Non Unique
lst = ['alpha', 'beta', 'gamma' , 'delta', 'epsilon', 'beta', 'zeta', 'greek', 'gamma', 'eta', None, 1, 'theta', 'latin']

print(type(lst).__name__)
print(lst)
print(len(lst))

print("lst.append('iota')")
lst.append('iota')

print("lst.remove('greek')")
lst.remove('greek')

print("lst.remove(1)")
lst.remove(1)

print("lst.pop() # pop last item")
lst.pop()

# Unlike Ruby, which pop last 5 items
print("lst.pop(5) # pop item at index 5")
lst.pop(5)

print("del lst[6]")
del lst[6]

print("lst.insert(9, 'kappa')")
lst.insert(9, 'kappa')

print("lst[10] = 'lambda'")
lst[10] = 'lambda'

print("lst.insert(len(lst), 'mu')")
lst.insert(len(lst), 'mu')

print("lst.insert(8, 'iota')")
lst.insert(8, 'iota')

l = ['nu', 'xi', 'omicron', 'pi', 'rho', 'sigma', 'tau', 'upsilon', 'phi', 'chi', 'psi', 'omega']

print("lst.extend(l)")
lst.extend(l)

print("le = lst")
le = lst

print("le == lst")
print(le == lst)

print("le is lst")
print(le is lst)

#Python 3.5
'''

print("lc = lst.copy()")
lc = lst.copy()

print("lc == lst")
print(lc == lst)

print("lc is lst")
print(lc is lst) # False

'''
