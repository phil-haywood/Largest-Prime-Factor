func largestPrimeFactor(for number: Int) -> Int {
    var n = number
    var largestPrime = 2

    while n > 1 {
        while n % largestPrime == 0 {
            n /= largestPrime
        }

        largestPrime += 1

        if largestPrime * largestPrime > n {
            if n > 1 {
                return n
            }  else {
                return largestPrime
            }
        }
    }

    return largestPrime
}

let number = 600851475143
let largestPrime = largestPrimeFactor(for: number)
print("The largest prime Factor of \(number) is: \(largestPrime)")