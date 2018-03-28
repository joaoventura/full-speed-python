# Iterators

As we saw previously, in Python we use the "for" loop to iterate over the contents of objects:

```Python
>>> for value in [0, 1, 2, 3, 4, 5]:
...     print(value)
...
0
1
4
9
16
25
```

Objects that can be used with a "for" loop are called iterators. An iterator is, therefore, an object that follows the iteration protocol.

The built-in function "iter" can be used to build iterator objects, while the "next" function can be used to gradually iterate over their content:

```Python
>>> my_iter = iter([1, 2, 3])
>>> my_iter
<list_iterator object at 0x10ed41cc0>
>>> next(my_iter)
1
>>> next(my_iter)
2
>>> next(my_iter)
3
>>> next(my_iter)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

If there are no more elements, the iterator raises a "StopIteration" exception.

## Iterator classes

Iterators can be implemented as classes. You just need to implement the "\_\_next\_\_" and "\_\_iter\_\_" methods. Here’s an example of a class that mimics the "range" function, returning all values from "a" to "b":

```Python
class MyRange:

    def __init__(self, a, b):
        self.a = a
        self.b = b

    def __iter__(self):
        return self

    def __next__(self):
        if self.a < self.b:
            value = self.a
            self.a += 1
            return value
        else:
            raise StopIteration
```

Basically, on every call to "next" it moves forward the internal variable "a" and returns its value. When it reaches "b", it raises the StopIteration exception.

```Python
>>> myrange = MyRange(1, 4)
>>> next(myrange)
1
>>> next(myrange)
2
>>> next(myrange)
3
>>> next(myrange)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

But most important, you can use the iterator class in a "for" loop:

```Python
>>> for value in MyRange(1, 4):
...     print(value)
...
1
2
3
```

## Exercises with iterators

1.  Implement an iterator class to return the square of all numbers from "a" to "b".

2.  Implement an iterator class to return all the even numbers from 1 to \(n\).

3.  Implement an iterator class to return all the odd numbers from 1 to \(n\).

4.  Implement an iterator class to return all numbers from \(n\) down to 0.

5.  Implement an iterator class to return the fibonnaci sequence from the first element up to \(n\). You can check the definition of the fibonnaci sequence in the function’s chapter. These are the first numbers of the sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

6.  Implement an iterator class to return all consecutive pairs of numbers from 0 until \(n\), such as (0, 1), (1, 2), (2, 3)...
