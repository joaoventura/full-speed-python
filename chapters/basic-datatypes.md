# Numbers and strings

In this chapter we will work with the most basic datatypes, numbers and strings. Start your Python REPL and write the following:

```Python
>>> a = 2
>>> type(a)
<class 'int'>
>>> b = 2.5
>>> type(b)
<class 'float'>
```

Basically, you are declaring two variables (named "a" and "b") which will hold some numbers: variable "a" is an integer number while variable "b" is a real number. We can now use our variables or any other numbers to do some calculations:

```Python
>>> a + b
4.5
>>> (a + b) * 2
9.0
>>> 2 + 2 + 4 - 2/3
7.333333333333333
```

Python also has support for string datatypes. Strings are sequences of characters (like words) and can be defined using single or double quotes:

```Python
>>> hi = "hello"
>>> hi
'hello'
>>> bye = 'goodbye'
>>> bye
'goodbye'
```

You can add strings to concatenate them but you can not mix different datatypes, such as strings and integers.

```Python
>>> hi + "world"
'helloworld'
>>> "Hello" + 3
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
TypeError: must be str, not int
```

However, multiplication works as repetition:

```Python
>>> "Hello" * 3
'HelloHelloHello'
```

## Exercises with numbers

1.  Try the following mathematical calculations and guess what is happening: \((3 / 2)\), \((3 // 2)\), \((3 \% 2)\), \((3**2)\).

    Suggestion: check the Python library reference at <https://docs.python.org/3/library/stdtypes.html#numeric-types-int-float-complex>.

2.  Calculate the average of the following sequences of numbers: (2, 4), (4, 8, 9), (12, 14/6, 15)

3.  The volume of a sphere is given by (4/3 * pi * r^3). Calculate the volume of a sphere of radius 5. Suggestion: create a variable named "pi" with the value of 3.1415.

4.  Use the modulo operator (%) to check which of the following numbers is even or odd: (1, 5, 20, 60/7).

    Suggestion: the remainder of \(x/2\) is always zero when \(x\) is even.

5.  Find some values for \(x\) and \(y\) such that \(x < 1/3 < y\) returns "True" on the Python REPL. Suggestion: try \(0 < 1/3 < 1\) on the REPL.

## Exercises with strings

Using the Python documentation on strings (<https://docs.python.org/3/library/stdtypes.html?#text-sequence-type-str>), solve the following exercises:

1.  Initialize the string "abc" on a variable named "s":

    1.  Use a function to get the length of the string.

    2.  Write the necessary sequence of operations to transform the string "abc" in "aaabbbccc". Suggestion: Use string concatenation and string indexes.

2.  Initialize the string "aaabbbccc" on a variable named "s":

    1.  Use a function that allows you to find the first occurence of "b" in the string, and the first occurence of "ccc".

    2.  Use a function that allows you to replace all occurences of "a" to "X", and then use the same function to change only the first occurence of "a" to "X".

3.  Starting from the string "aaa bbb ccc", what sequences of operations do you need to arrive at the following strings? You can use the "replace" function.

    1.  "AAA BBB CCC"

    2.  "AAA bbb CCC"
