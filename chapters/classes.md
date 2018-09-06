# Classes

In object oriented programming (OOP), a class is a structure that allows to group together a set of properties (called attributes) and functions (called methods) to manipulate those properties. Take the following class that defines a person with properties "name" and "age" and the "greet" method.

```Python
class Person:

      def __init__(self, name, age):
          self.name = name
          self.age = age

      def greet(self):
          print("Hello, my name is %s!" % self.name)
```

Most classes will need the constructor method ("\_\_init\_\_") to initialize the class’s attributes. In the previous case the constructor of the class receives the person’s name and age and stores that information in the class’s instance (referenced by the *self* keyword). Finally, "greet" method prints the name of the person as stored in a specific class instance (object).

Class instances are used through the instantiation of objects. Here’s how we can instantiate two objects:

```Python
>>> a = Person("Peter", 20)
>>> b = Person("Anna", 19)

>>> a.greet()
Hello, my name is Peter!
>>> b.greet()
Hello, my name is Anna!

>>> print(a.age)  # We can also access the attributes of an object
20
```

## Exercises with classes

Use the Python documentation on classes at <https://docs.python.org/3/tutorial/classes.html> to solve the following exercises.

1.  Implement a class named "Rectangle" to store the coordinates of a rectangle given the top-left corner (x1, y1) and the bottom-right corner (x2, y2).

2.  Implement the class constructor with the parameters (x1, y1, x2, y2) and store them in the class instance using the "self" keyword.

3.  Implement the "width()" and "height()" methods which return, respectively, the width and height of a rectangle. Create two objects, instances of "Rectangle" to test the calculations.

4.  Implement the method "area" to return the area of the rectangle (width\*height).

5.  Implement the method "circumference" to return the perimeter of the rectangle (2\*width + 2\*height).

6.  Do a print of one of the objects created to test the class. Implement the "\_\_str\_\_" method such that when you print one of the objects it print the coordinates as (x1, y1)(x2, y2).

## Class inheritance

In object oriented programming, inheritance is one of the forms in which a subclass can inherit the attributes and methods of another class, allowing it to rewrite some of the super class’s functionalities. For instance, from the "Person" class above we could create a subclass to keep people with 10 years of age:

```Python
class TenYearOldPerson(Person):

      def __init__(self, name):
          super().__init__(name, 10)

      def greet(self):
          print("I don't talk to strangers!!")
```

The indication that the "TenYearOldPerson" class is a subclass of "Person" is given on the first line. Then, we rewrote the constructor of the subclass to only receive the name of the person, but we will eventually call the super class’s constructor with the name of the 10-year-old and the age hardcoded as 10. Finally we reimplemented the "greet" method.

## Exercises with inheritance

Use the "Rectangle" class as implemented above for the following exercises:

1.  Create a "Square" class as subclass of "Rectangle".

2.  Implement the "Square" constructor. The constructor should have only the x1, y1 coordinates and the size of the square. Notice which arguments you’ll have to use when you invoke the "Rectangle" constructor when you use "super".

3.  Instantiate two objects of "Square", invoke the area method and print the objects. Make sure that all calculations are returning correct numbers and that the coordinates of the squares are consistent with the size of the square used as argument.
