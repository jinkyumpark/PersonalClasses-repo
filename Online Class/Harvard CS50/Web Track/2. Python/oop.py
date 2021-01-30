class Point():
	def __init__(self, x, y):
		self.x = x
		self.y = y

	def distance(self, x1, y1):
		return sqrt((x1-x)**2 + (y1-y)**2)


p = Point(2, 8)


class Flight():
	def __init__(self, capacity):
		self.capacity = capacity
		self.passaengers = []

	def add_passenger(self, name):
		if not self.open_seats():
			return False
		self.passengers.append(name)
		return True

	def open_seats(self):
		return self.capacity - len(self.passengers)

flight = Flight(3)

people = ["Jin", "Yerim", "Rona", "Zeri"]
for person in people:
	success = flight.add_passenger(person)
	if success:
		print(f"Added {person} to flight successfully")
	else:
		print(f"No available seats for {person}")
