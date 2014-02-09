# Enumerabull

Enumerabull pollutes Kernelspace with inverted versions of Enumerable's instance methods.
It's like unleashing a bull in your Ruby shop to get "functional programming".

## Usage

``` ruby
p reduce :+, 10, 1..10
p select :even?, 1..10
each->n { p n }, 1..10
```
