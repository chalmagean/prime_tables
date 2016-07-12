# PrimeTables

This is a coding exercise

## Introduction

Write an application that takes numeric input (N) from a user and outputs a multiplication table of (N) prime numbers.
This should not take you more than a couple of hours. But the aim is NOT to see how much you can code in a given time, so feel free to spend as much time as you want to highlight your level of coding.
You must put your code onto GitHub, otherwise we won’t consider it. We will review it from there.

## The requirements

- You can use whatever programming language you like for this exercise - we mainly use C# and JavaScript internally
- Write your application with high unit test coverage
- For the input and output you can use the console, a web page, or something else
- Please write an algorithm to solve the prime number generation - do not use a library method to generate your primes
- The user should input a whole number N, where is N is at least 1
- The application should output an N+1 x N+1 grid of numbers (we will test it with N == 1)

## How to run

Start a ruby REPL (I am using Ruby 2.2.3). The example below uses the number `5` as the size of the primes array.

```
$ git clone git@github.com:chalmagean/prime_tables.git
$ cd prime_tables
$ ruby -Ilib ./bin/prime_tables 5
```

Should render a table like this:

```
|      |    2 |    3 |    5 |    7 |   11 |
|    2 |    4 |    6 |   10 |   14 |   22 |
|    3 |    6 |    9 |   15 |   21 |   33 |
|    5 |   10 |   15 |   25 |   35 |   55 |
|    7 |   14 |   21 |   35 |   49 |   77 |
|   11 |   22 |   33 |   55 |   77 |  121 |
```

Let's try a different size:

```
$ ruby -Ilib ./bin/prime_tables 3
```

This time, the table is smaller:

```
|     |   2 |   3 |   5 |
|   2 |   4 |   6 |  10 |
|   3 |   6 |   9 |  15 |
|   5 |  10 |  15 |  25 |
```

## Tests

To run the whole test suite:

```
$ rspec
```

## Conclusions

Overall this seems like a good solution. Given more time, I would probably learn more about how to generate prime numbers and optimize for better performance.

The output formatter is very easy to extend, you just need to add another formatter and pass it in to the multiplication instance as a renderer.

