r = [1,2,3,4,5,1,2,3]

print(r.index(3,3))
print(r.count(3))

if 100 in r:
    print('exit')

r.sort()
print(r)

s = 'My name is Mike.'
to_split = s.split()
print(to_split)

print(help(list))