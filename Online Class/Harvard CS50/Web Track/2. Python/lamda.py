people = [
	{"name": "Harry", "house": "Gryffindor"},
	{"name": "Cho", "house": "ravenclaw"},
	{"name": "Draco", "house": "Slyntherin"}
]

def f(person):
	return person["name"]

people.sort(key=f)

print(people)

#Equivalent Lamda Expression
people.sort(key=lambda person: person["name"])
print(people)
