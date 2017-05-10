# -*- coding: utf-8 -*-
# n! means n * (n − 1) * ... * 3 * 2 * 1
# 
# For example, 10! = 10 * 9 * ... * 3 * 2 * 1 = 3628800,
# and the sum of the digits in the number 10! is 3 + 6 + 2 + 8 + 8 + 0 + 0 = 27.
# 
# Find the sum of the digits in the number 100!

import math

def sumDigits(n):
    s = 0
    while n:
        s += n % 10
        n //= 10
    return s

print(sumDigits(math.factorial(100)))