# Coroutines

Python coroutines are similar to generators but instead of producing data, coroutines are mostly used as data consumers. In other words, coroutines are functions that are resumed everytime a value is sent using the `send` method.

The trick with coroutines is the use of the `yield` keyword on the right side of an assignment expression. Here's an example of a coroutine that just prints the values that are sent to it:

```Python
def coroutine():
    print('My coroutine')
    while True:
        val = yield
        print('Got', val)

>>> co = coroutine()
>>> next(co)
My coroutine
>>> co.send(1)
Got 1
>>> co.send(2)
Got 2
>>> co.send(3)
Got 3
```

The initial call to `next` is required to move the coroutine forward. You can see that it executes the print statement. Eventually, the function reaches the `yield` expression where it will wait to be resumed. Then, everytime a value is sent (with `send`), the coroutine function resumes from the `yield`, copies the value to **val** and prints it.

Coroutines can be closed with the `close()` method.

```Python
>>> co.close()
>>> co.send(4)
Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
StopIteration
```

## Exercises with coroutines

1.  Create a coroutine named "square" that prints the square of any sent value.

2.  Implement the "minimize" coroutine that keeps and prints the minimum value that is sent to the function.

## Pipelines

Coroutines can be used to implement data pipelines where one coroutine will send data to the next coroutine in the pipeline. Coroutines push data into the pipeline using the `send()` method.

![](images/coroutine_pipeline.png)

Here's an example of a small pipeline where the values sent to the producer coroutine are squared and sent to the consumer coroutine for printing:

```Python
def producer(consumer):
    print("Producer ready")
    while True:
        val = yield
        consumer.send(val * val)

def consumer():
    print("Consumer ready")
    while True:
        val = yield
        print('Consumer got', val)
```

As above, coroutines must be "primed" with `next` before any value can be sent.

```Python
>>> cons = consumer()
>>> prod = producer(cons)
>>> next(prod)
Producer ready
>>> next(cons)
Consumer ready

>>> prod.send(1)
Consumer got 1
>>> prod.send(2)
Consumer got 4
>>> prod.send(3)
Consumer got 9
```

Also, with coroutines, data can be sent to multiple destinations.The following example implements two consumers where the first only prints numbers in 0..10 and the second only print numbers in 10..20:

```Python
def producer(consumers):
    print("Producer ready")
    try:
        while True:
            val = yield
            for consumer in consumers:
                consumer.send(val * val)
    except GeneratorExit:
        for consumer in consumers:
            consumer.close()

def consumer(name, low, high):
    print("%s ready" % name)
    try:
        while True:
            val = yield
            if low < val < high:
                print('%s got' % name, val)
    except GeneratorExit:
        print("%s closed" % name)
```

As before, coroutines must be "primed" before any value can be sent.

```Python
>>> con1 = consumer('Consumer 1', 00, 10)
>>> con2 = consumer('Consumer 2', 10, 20)
>>> prod = producer([con1, con2])

>>> next(prod)
Producer ready
>>> next(con1)
Consumer 1 ready
>>> next(con2)
Consumer 2 ready

>>> prod.send(1)
Consumer 1 got 1
>>> prod.send(2)
Consumer 1 got 4
>>> prod.send(3)
Consumer 1 got 9
>>> prod.send(4)
Consumer 2 got 16

>>> prod.close()
Consumer 1 closed
Consumer 2 closed
```

The data is sent to all consumers but only the second executes the print statement. Notice the use of the `GeneratorExit` exception. Sometimes it can be useful to catch the exception and inform the downstream coroutines that the pipeline is no longer useful.

![](images/consumers_pipeline.png)

## Exercises with coroutine pipelines

1.  Implement a producer-consumer pipeline where the values squared by the producer are sent to two consumers. One should store and print the minimum value sent so far and the other the maximum value.

2.  Implement a producer-consumer pipeline where the values squared by the producer are dispatched to two consumers, one at a time. The first value should be sent to consumer 1, the second value to consumer 2, third value to consumer 1 again, and so on. Closing the producer should force the consumers to print a list with the numbers that each one obtained.
