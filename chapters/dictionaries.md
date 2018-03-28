# Dictionaries

In this chapter we will work with Python dictionaries. Dictionaries are data structures that indexes values by a given key (key-value pairs). The following example shows a dictionary that indexes students ages by name.

```Python
ages = {
    "Peter": 10,
    "Isabel": 11,
    "Anna": 9,
    "Thomas": 10,
    "Bob": 10,
    "Joseph": 11,
    "Maria": 12,
    "Gabriel": 10,
}

>>> print(ages["Peter"])
10
```

It is possible to iterate over the contents of a dictionary using "items", like this:

```Python
>>> for name, age in ages.items():
...     print(name, age)
...
Peter 10
Isabel 11
Anna 9
Thomas 10
Bob 10
Joseph 11
Maria 12
Gabriel 10
```

However, dictionary keys don’t necessarily need to be strings but can be any [immutable](https://docs.python.org/3/tutorial/datastructures.html#dictionaries) object:

```Python
d = {
    0: [0, 0, 0],
    1: [1, 1, 1],
    2: [2, 2, 2],
}

>>> d[2]
[2, 2, 2]
```

And you can also use other dictionaries as values:

```Python
students = {
    "Peter": {"age": 10, "address": "Lisbon"},
    "Isabel": {"age": 11, "address": "Sesimbra"},
    "Anna": {"age": 9, "address": "Lisbon"},
}

>>> students['Peter']
{'age': 10, 'address': 'Lisbon'}
>>> students['Peter']['address']
'Lisbon'
```

This is quite useful to structure hierarchical information.

## Exercises with dictionaries

Use the Python documentation at <https://docs.python.org/3/library/stdtypes.html#mapping-types-dict> to solve the following exercises.

Take the following Python dictionary:

    ages = {
        "Peter": 10,
        "Isabel": 11,
        "Anna": 9,
        "Thomas": 10,
        "Bob": 10,
        "Joseph": 11,
        "Maria": 12,
        "Gabriel": 10,
    }

1.  How many students are in the dictionary? Search for the "len" function.

2.  Implement a function that receives the "ages" dictionary as parameter and returns the average age of the students. Traverse all items on the dictionary using the "items" method as above.

3.  Implement a function that receives the "ages" dictionary as parameter and returns the name of the oldest student.

4.  Implement a function that receives the "ages" dictionary and a number "n" and returns a new dict where each student is \(n\) years older. For instance, *new_ages(ages, 10)* returns a copy of "ages" where each student is 10 years older.

## Exercises with sub-dictionaries

Take the following dictionary:

    students = {
        "Peter": {"age": 10, "address": "Lisbon"},
        "Isabel": {"age": 11, "address": "Sesimbra"},
        "Anna": {"age": 9, "address": "Lisbon"},
    }

1.  How many students are in the "students" dict? Use the appropriate function.

2.  Implement a function that receives the students dict and returns the average age.

3.  Implement a function that receives the students dict and an address, and returns a list with names of all students whose address matches the address in the argument. For instance, invoking "find_students(students, ’Lisbon’)" should return Peter and Anna.
