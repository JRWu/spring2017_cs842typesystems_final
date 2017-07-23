class Bird(object):
	def __init__(self, bytes name, int age):
		self.name = name
		self.age = age
	def talk(self):
		return 'Chirp! ' + 'I am ' + str(self.age) + ' years old! '

class Duck(Bird):
	def __init__(self, bytes name, int age):
		super().__init__(name, age)

	def talk(self):
		return 'Quack'

class Goose(Bird):
	def talk(self):
		return 'Honk'
