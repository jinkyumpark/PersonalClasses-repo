#Str
name = "Jin"
print(name[0]) #J

#list - sequnce of mutable values
names = ["Jin", "Yerim"]
print(names) #["Jin", "Yerim"]

names.append("Rona")
names.sort()

#tuple - sequnce of immutable values
coordinate = (10.0, 20.0)

#set - collection of unique values
s = set() # empty set
s.add(1)
s.add(1)
s.remove(1)

print(f"The set has {len(s)} elements")

#dict - collection of key-value pairs
