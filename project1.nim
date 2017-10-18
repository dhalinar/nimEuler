#[
    Problem 1: Multiples of 3 and 5

    If we list all the natural numbers below 10 that are multiples of 3 or 5,
    we get 3, 5, 6 and 9. The sum of these multiples is 23. 
    
    Find the sum of all the multiples of 3 or 5 below 1000.
]#

proc sum_multiples_3_and_5(n: int): int =
    for i in 3..< n:
        if i mod 3 == 0 or i mod 5 == 0:
            result += i

when isMainModule:
    let n = 1000
    echo sum_multiples_3_and_5(n)

#[
    Answer: 233168
]#