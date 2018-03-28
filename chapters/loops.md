# Iteration and loops

In this chapter we are going to explore the topics of iteration and loops. Loops are used in computer programming to automate repetitive tasks.

In Python the most common form of iteration is the "for" loop. The "for" loop allows you to iterate over all items of a list such that you can do whatever you want with each item. For instance, let’s create a list and print the square value of each element.

```Python
>>> for value in [0, 1, 2, 3, 4, 5]:
...     print(value * value)
...
0
1
4
9
16
25
```

It’s quite easy but very powerful\! The "for" loop is the basis of many things in programming. For instance, you already know about the "sum(list)" function which sums all the elements of a list, but here’s an example using the "for" loop:

```Python
>>> mylist = [1,5,7]
>>> sum = 0
>>> for value in mylist:
...     sum = sum + value
...
>>> print(sum)
13
```

Basically, you create the variable "sum" and keep adding each value as it comes from the list.

Sometimes, instead of the values of a list, you may need to work with the indexes themselves, i.e., not with the values, but the positions where they are in the list. Here’s an example that iterates over a list and returns the indexes and the values for each index:

```Python
>>> mylist = [1,5,7]
>>> for i in range(len(mylist)):
...     print("Index:", i, "Value:", mylist[i])
...
Index: 0 Value: 1
Index: 1 Value: 5
Index: 2 Value: 7
```

You can see that we are not iterating over the list itself but iterating over the "range" of the length of the list. The range function returns a special list:

```Python
>>> list(range(3))
[0, 1, 2]
```

So, when you use "range" you are not iterating over "mylist" but over a list with some numbers that you’ll use as indexes to access individual values on "mylist". More about the range function in the Python docs at <https://docs.python.org/3/tutorial/controlflow.html#the-range-function>.

Sometimes you may need both things (indexes and values), and you can use the "enumerate" function:

```Python
>>> mylist = [1,5,7]
>>> for i, value in enumerate(mylist):
...     print("Index:", i, "Value:", value)
...
Index: 0 Value: 1
Index: 1 Value: 5
Index: 2 Value: 7
```

Remember that the first value on a Python list is always at index 0.

Finally, we also have the "while" statement that allows us to repeat a sequence of instructions while a specified condition is true. For instance, the following example starts "n" at 10 and **while "n" is greater than 0**, it keeps subtracting 1 from "n". When "n" reaches 0, the condition "n \> 0" is false, and the loop ends:

```Python
>>> n = 10
>>> while n > 0:
...     print(n)
...     n = n-1
...
10
9
8
7
6
5
4
3
2
1
```

Notice that it never prints 0...

## Exercises with the for loop

For this section you may want to consult the Python docs at <https://docs.python.org/3/tutorial/controlflow.html#for-statements>.

1.  Create a function "add" that receives a list as parameter and returns the sum of all elements in the list. Use the "for" loop to iterate over the elements of the list.

2.  Create a function that receives a list as parameter and returns the maximum value in the list. As you iterate over the list you may want to keep the maximum value found so far in order to keep comparing it with the next elements of the list.

3.  Modify the previous function such that it returns a list with the first element being the maximum value and the second being the index of the maximum value in the list. Besides keeping the maximum value found so far, you also need to keep the position where it occurred.

4.  Implement a function that returns the reverse of a list received as parameter. You may create an empty list and keep adding the values in reversed order as they come from the original list. Check what you can do with lists at <https://docs.python.org/3/tutorial/datastructures.html#more-on-lists>.

5.  Make the function "is\_sorted" that receives a list as parameter and returns True if the list is sorted in ascending order. For instance \[1, 2, 2, 3\] is ordered while \[1, 2, 3, 2\] is not. Suggestion: you have to compare a number in the list with the next one, so you can use indexes or you need to keep the previous number in a variable as you iterate over the list.

6.  Implement the function "is\_sorted\_dec" which is similar to the previous one but all items must be sorted by decreasing order.

7.  Implement the "has\_duplicates" function which verifies if a list has duplicate values. You may have to use two "for" loops, where for each value you have to check for duplicates on the rest of the list.

## Exercises with the while statement

1.  Implement a function that receives a number as parameter and prints, in decreasing order, which numbers are even and which are odd, until it reaches 0.
    
        >>> even_odd(10)
        Even number: 10
        Odd number: 9
        Even number: 8
        Odd number: 7
        Even number: 6
        Odd number: 5
        Even number: 4
        Odd number: 3
        Even number: 2
        Odd number: 1
