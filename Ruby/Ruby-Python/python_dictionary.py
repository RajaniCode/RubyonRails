from __future__ import print_function
import operator

dictionary = { 1: 'alpha', 2: 'beta', 3: 'gamma', 4: 'delta', 5: 'epsilon',
               2: 'beta', 6: 'zeta', 7: 'gamma', 9: None, 10: 'iota',
               None: 'kappa', 11: 'lambda', None: None, 12: 'mu', 13: 'nu' }

print(type(dictionary).__name__)
print(dictionary)
print(len(dictionary))

print("add if key does not exist else update # 8: 'theta'")
dictionary[8] = 'theta'

print("update if key exists else add # 7: 'eta'")
dictionary[7] = 'eta'

print("pop item based on key only # 9: None")
dictionary.pop(9)


print("pop item based on key only # KeyError: 20")
# dictionary.pop(20)

print("del item item based on key only # 11: 'lambda'")
del dictionary[11]

print("del item item based on key only # KeyError: 20")
# del dictionary[20]


print("popitem - arbitrary")
dictionary.popitem()

print("clear")
dictionary.clear()

print("del dictionary")
del dictionary

print("dictionary from list of tuples")
lst = [(1, 'Mango'), (2, 'Banana')]
dictionary = dict(lst)

print("dict")
dictionary = dict({1:'English', 2:'French'})

dictionary = {1: 'Red', 2: 'Green', 3: 'Blue'}

# print("iteritems() only in Python 2.7")
# print("for item in dictionary.iteritems(): print(item)")
# for item in dictionary.iteritems(): print(item)

# print("iteritems() only in Python 2.7")
# print("for key, value in dictionary.iteritems(): print(key, value)")
# for key, value in dictionary.iteritems(): print(key, value)

print("for item in dictionary.items(): print(item)")
for item in dictionary.items(): print(item)

print("for key, value in dictionary.items(): print(key, value)")
for key, value in dictionary.items(): print(key, value)

print("for key in dictionary: print(key, dictionary.get(key))")
for key in dictionary: print(key, dictionary.get(key))

print("for key in dictionary: print(key, dictionary[key])")
for key in dictionary: print(key, dictionary[key])

dictionary = {'name': 'Foo', 'number': 1 }

print("Only in Python 2.7 # dictionary.has_key('number')")
# print(dictionary.has_key('number'))

print("'technology' in dictionary")
print('technology' in dictionary)

print("'technology' not in dictionary")
print('technology' not in dictionary)

print("dictionary['technology'] # KeyError: 'technology'")
# print(dictionary['technology'])

print("dictionary.get('technology')")
print(dictionary.get('technology'))

print("set default if key does not exist # 'Foo'")
print(dictionary.setdefault('name', 'Python'))


print("set default if key does not exist # 'Python'")
print(dictionary.setdefault('technology', 'Python'))

print("get default if key does not exist # 'Foo'")
print(dictionary.get('name', 'Python'))


print("get default if key does not exist # 3.5")
print(dictionary.get('version', 3.5))

print("comprehension")
print("dictionary = {x: x*x for x in range(6)}")
dictionary = {x: x*x for x in range(6)}

print("alpha")
dictionary = {'a': 'Austria', 'c': 'Canada', 'b': 'Belgium', 'A': 'Australia', 'C': 'Cuba', 'B': 'Brazil', 'A': 'Antartica'}
print("dictionary retains only unique keys and undefined order despite duplicate keys and given order")
print(dictionary)

print("Print dictionary sorted by keys")
for key, value in sorted(dictionary.items(), key = operator.itemgetter(0)):
    print("%s: %s" % (key, value))

print("Print dictionary sorted by values")
for key, value in sorted(dictionary.items(), key = operator.itemgetter(1)):
     print("%s: %s" % (key, value))

print("numeric")
dictionary = {1: 1, 3: 9, -5: 25, 7: 49, -0.0: .1, 9: 81, -.8: -.7, 0: 0, 0: -0, 9: 9}
print("dictionary retains only unique keys and undefined order despite duplicate keys and given order")
print(dictionary)

print("Print dictionary sorted by keys")
for key, value in sorted(dictionary.items(), key=operator.itemgetter(0)):
    print("%s: %s" % (key, value))

print("Print dictionary sorted by values")
for key, value in sorted(dictionary.items(), key=operator.itemgetter(1)):
     print("%s: %s" % (key, value))

print("dictionary not intended for get by value")
dictionary = {'a': 'Austria', 'c': 'Canada', 'b': 'Belgium', 'A': 'Australia', 'C': 'Cuba', 'B': 'Brazil', 'A': 'Antartica'}
for key, value in dictionary.items():
    if value == "Antartica": print(key, value)
