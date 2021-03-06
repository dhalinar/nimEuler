#[
    Project 2: Even Fibonacci numbers

    Each new term in the Fibonacci sequence is generated by adding the previous two terms. 
    By starting with 1 and 2, the first 10 terms will be:
    1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

    By considering the terms in the Fibonacci sequence whose values do not exceed four million, 
    find the sum of the even-valued terms.
]#


proc sum_even_fibonacci(n: int): int =
    var
        a = 0
        b = 1
    while true:
        a += b
        # echo a
        if a > n:
            break
        if (a and 1) != 1: 
            result += a

        b += a
        # echo b
        if b > n: 
            break
        if (b and 1) != 1: 
            result += b

when isMainModule:
    let n = 4_000_000
    echo sum_even_fibonacci(n)
#[
    Answer: 4613732
]#