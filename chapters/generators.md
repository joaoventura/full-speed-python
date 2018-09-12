# Generators

If you read the previous chapter, you know that iterators are objects that are regularly used with "for" loops. In other words, iterators are objects that implement the iteration protocol. A Python generator is a convenient way to implement an iterator. Instead of a class, a generator is a function which returns a value each time the "yield" keyword is used. Here’s an example of a generator to count the values between two numbers:

```Python
def myrange(a, b):
    while a < b:
        yield a
        a += 1
```

Like iterators, generators can be used with the "for" loop:

```Python
>>> for value in myrange(1, 4):
...     print(value)
...
1
2
3
```

Under the hood, generators behave similarly to iterators:

```Python
>>> seq = myrange(1,3)
>>> next(seq)
1
>>> next(seq)
2
>>> next(seq)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

The interesting thing about generators is the "yield" keyword. The "yield" keyword works much like the "return" keyword, but unlike "return", it allows the function to eventually resume its execution. In other words, each time the next value of a generator is needed, Python wakes up the function and resumes its execution from the "yield" line as if the function had never exited.

Generator functions can use other functions inside. For instance, it is very common to use the "range" function to iterate over a sequence of numbers:

```Python
def squares(n):
    for value in range(n):
        yield value * value
```

## Exercises with generators

1.  Implement a generator called "squares" to yield the square of all numbers from \(a\) to \(b\). Test it with a "for" loop and print each of the yielded values.

2.  Create a generator to yield all the even numbers from 1 to \(n\).

3.  Create another generator to yield all the odd numbers from 1 to \(n\).

4.  Implement a generator that returns all numbers from \(n\) down to 0.

5.  Create a generator to return the fibonnaci sequence starting from the first element up to \(n\). The first numbers of the sequence are: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

6.  Implement a generator that returns all consecutive pairs of numbers from 0 to \(n\), such as (0, 1), (1, 2), (2, 3)...
