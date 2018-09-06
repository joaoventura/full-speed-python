# Modules and functions

In this chapter we will talk about modules and functions. A function is a block of code that is used to perform a single action. A module is a Python file containing variables, functions and many more things.

Start up your Python REPL and let’s use the "math" module which provides access to mathematical functions:

```Python
>>> import math
>>> math.cos(0.0)
1.0
>>> math.radians(275)
4.799655442984406
```

Functions are sequences of instructions that are executed when the function is invoked. The following defines the "do\_hello" function that prints two messages when invoked:

```Python
>>> def do_hello():
...     print("Hello")
...     print("World")
...
>>> do_hello()
Hello
World
```

Make sure that you insert a tab before both print expressions in the previous function. Tabs and spaces in Python are relevant and define that a block of code is somewhat dependent on a previous instruction. For instance, the print expressions are "inside" the "do\_hello" function therefore must have a tab.

Functions can also receive parameters a return values (using the "return" keyword):

```Python
>>> def add_one(val):
...     print("Function got value", val)
...     return val + 1
...
>>> value = add_one(1)
Function got value 1
>>> value
2
```

## Exercises with the math module

Use the Python documentation about the math module (<https://docs.python.org/3/library/math.html>) to solve the following exercises:

1.  Find the greatest common divisor of the following pairs of numbers: (15, 21), (152, 200), (1988, 9765).

2.  Compute the base-2 logarithm of the following numbers: 0, 1, 2, 6, 9, 15.

3.  Use the "input" function to ask the user for a number and show the result of the sine, cosine and tangent of the number. Make sure that you convert the user input from string to a number (use the int() or the float() function).

## Exercises with functions

1.  Implement the "add2" function that receives two numbers as arguments and returns the sum of the numbers. Then implement the "add3" function that receives and sums 3 parameters.

2.  Implement a function that returns the greatest of two numbers given as parameters. Use the "if" statement to compare both numbers: <https://docs.python.org/3/tutorial/controlflow.html#if-statements>.

3.  Implement a function named "is\_divisible" that receives two parameters (named "a" and "b") and returns true if "a" can be divided by "b" or false otherwise. A number is divisible by another when the remainder of the division is zero. Use the modulo operator ("%").

4.  Create a function named "average" that computes the average value of a list passed as parameter to the function. Use the "sum" and "len" functions.

## Recursive functions

In computer programming, a recursive function is simply a function that calls itself. For instance take the factorial function.

\begin{equation}
f(x)=\begin{cases}
    1, & \text{if $x=0$}.\\
    x \times f(x-1), & \text{otherwise}.
\end{cases}
\end{equation}

As an example, take the factorial of 5:

\begin{equation}
\begin{split}
5! &= 5 \times 4! \\
    &= 5 \times 4 \times 3! \\
    &= 5 \times 4 \times 3 \times 2! \\
    &= 5 \times 4 \times 3 \times 2 \times 1 \\
    &= 120
\end{split}
\end{equation}

Basically, the factorial of 5 is 5 times the factorial of 4, etc. Finally, the factorial of 1 (or of zero) is 1 which breaks the recursion. In Python we could write the following recursive function:

```Python
def factorial(x):
    if x == 0:
        return 1
    else:
        return x * factorial(x-1)
```

The trick with recursive functions is that there must be a "base" case where the recursion must end and a recursive case that iterates towards the base case. In the case of factorial we know that the factorial of zero is one, and the factorial of a number greater that zero will depend on the factorial of the previous number until it reaches zero.

## Exercises with recursive functions

1.  Implement the factorial function and test it with several different values. Cross-check with a calculator.

2.  Implement a recursive function to compute the sum of the \(n\) first integer numbers (where \(n\) is a function parameter). Start by thinking about the base case (the sum of the first 0 integers is?) and then think about the recursive case.

3.  The Fibonnaci sequence is a sequence of numbers in which each number of the sequence matches the sum of the previous two terms. Given the following recursive definition implement \(fib(n)\).

    \begin{equation}
    fib(n)=\begin{cases}
        0, & \text{if $n=0$}.\\
        1, & \text{if $n=1$}.\\
        fib(n-1) + fib(n-2), & \text{otherwise}.
    \end{cases}
    \end{equation}

    Check your results for the first numbers of the sequence: 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
