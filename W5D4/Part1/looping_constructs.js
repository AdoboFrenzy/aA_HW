// fizzBuzz
// 3 and 5 are magic numbers.
// Define a function fizzBuzz(array) that takes an array and returns a new array of every number in the array that is divisible by either 3 or 5, but not both.

const fizzBuzz = (array) => {
  let result = [];
  array.forEach(function(num) {

    if (((num % 3) === 0 || (num % 5) === 0) && (num % 15)) {
      result.push(num)
    }})
  console.log(result);
}

// isPrime
// Define a function isPrime(number) that returns true if number is prime. Otherwise, false. Assume number is a positive integer.

function isPrime(number) {
  let factors = [];
  for (var i = 2; i < number; i++) {
    if (number % i === 0) {
      factors.push(i);
    }
  }

  if (factors.length === 0) {
    console.log(true);
  }

  else {
    console.log(false);
  }

}

// sumOfNPrimes
// Using firstNPrimes, write a function sumOfNPrimes(n) that returns the sum of the first n prime numbers. Hint: use isPrime as a helper method.
//
// > sumOfNPrimes(0)
// 0
//
// > sumOfNPrimes(1)
// 2
//
// > sumOfNPrimes(4)
// 17

function sumOfNPrimes(n) {
  let primes = [];
  const reducer = (accumulator, currentValue) => accumulator + currentValue;
  while (primes.length != n) {
    for (i = 2; i==i ; i++) {
      if (isPrime(i)) {
        primes.push(i);
      }
    }
  }
  console.log(primes.reduce(reducer));


  // error somewhere
}
