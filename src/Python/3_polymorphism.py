import three_polymorphism

# Build list of objects
# Call methods of objects

#Animal = three_polymorphism.Bird("Polly", 42)
#print Animal.talk()

#Animal = three_polymorphism.Duck("Donald", 42)
#print Animal.talk()

objectList = []

for i in range(1,10000000):
	objectList.append(three_polymorphism.Bird("NewBird", i))