# Lists

Python lists are data structures that group sequences of elements. Lists can have elements of several types and you can also mix different types within the same list although all elements are usually of the same datatype.

Lists are created using square brackets and the elements separated by commas. The elements in a list can be accessed by their positions where 0 is the index of the first element:

```Python
>>> l = [1, 2, 3, 4, 5]
>>> l[0]
1
>>> l[1]
2
```

Can you access the number 4 in the previous list?

Sometimes you want just a small portion of a list, a sublist. Sublists can be retrieved using a technique called *slicing*, which consists on defining the start and end indexes:

```Python
>>> l = ['a', 'b', 'c', 'd', 'e']
>>> l[1:3]
['b', 'c']
```

Finally, arithmetic with lists is also possible, like adding two lists together or repeating the contents of a list.

```Python
>>> [1,2] + [3,4]
[1, 2, 3, 4]
>>> [1,2] * 2
[1, 2, 1, 2]
```

## Exercises with lists

Create a list named "l" with the following values ([1, 4, 9, 10, 23]). Using the Python documentation about lists (<https://docs.python.org/3.5/tutorial/introduction.html#lists>) solve the following exercises:

1.  Using list slicing get the sublists \[4, 9\] and \[10, 23\].

2.  Append the value 90 to the end of the list "l". Check the difference between list concatenation and the "append" method.

3.  Calculate the average value of all values on the list. You can use the "sum" and "len" functions.

4.  Remove the sublist [4, 9].

## List comprehensions

List comprehensions are a concise way to create lists. It consists of square brackets containing an expression followed by the "for" keyword. The result will be a list whose results match the expression. Here’s how to create a list with the squared numbers of another list.

```Python
>>> [x*x for x in [0, 1, 2, 3]]
[0, 1, 4, 9]
```

Given its flexibility, list comprehensions generally make use of the "range" function which returns a range of numbers:

```Python
>>> [x*x for x in range(4)]
[0, 1, 4, 9]
```

Sometimes you may want to filter the elements by a given condition. The "if" keyword can be used in those cases:

```Python
>>> [x for x in range(10) if x % 2 == 0]
[0, 2, 4, 6, 8]
```

The example above returns all even values in range 0..10. More about list comprehensions can be found at <https://docs.python.org/3/tutorial/datastructures.html#list-comprehensions>.

## Exercises with list comprehensions

1.  Using list comprehensions, create a list with the squares of the first 10 numbers.

2.  Using list comprehensions, create a list with the cubes of the first 20 numbers.

3.  Create a list comprehension with all the even numbers from 0 to 20, and another one with all the odd numbers.

4.  Create a list with the squares of the even numbers from 0 to 20, and sum the list using the "sum" function. The result should be 1140. First create the list using list comprehensions, check the result, then apply the sum to the list comprehension.

5.  Make a list comprehension that returns a list with the squares of all even numbers from 0 to 20, but ignore those numbers that are divisible by 3. In other words, each number should be divisible by 2 and not divisible by 3. Search for the "and" keyword in the Python documentation. The resulting list is \[4, 16, 64, 100, 196, 256\].
