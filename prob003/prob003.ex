defmodule Prob003 do

  @number 600851475143

  # via trial division! Because lazy!
  def is_prime(num, primes) do
    ! Enum.any? primes, fn 
        elem -> rem(num, elem) == 0
      end
  end

  def find_next_prime(primes) do
    find_next_prime(List.last(primes) + 1, primes)
  end

  # makes me sad that I have to use if but
  # you can't use custom functions in guard
  # clauses; Erlang can't promse they're pure functions
  def find_next_prime(candidate, primes) do
    if is_prime(candidate, primes) do
      candidate
    else
      find_next_prime(candidate+1, primes)
    end
  end

  def answer do
    [largest | _] = factorize 
    largest
  end

  # starting off point. Initializes values
  def factorize do
    factorize(@number, [2])
  end
  
  # API to the recursive stuff below
  def factorize(num, primes=[divisor|_]) do
    factorize(num, primes, divisor, [])
  end

  # if num is 1, we've factored it. Return the factors list
  def factorize(1, _, _, factors) do
    factors
  end

  # if divisor is nil, that means we trial-divided num and failed
  # to find divisor as a divisor. We need a new divsior
  # this entails finding what the next prime is, saving it to
  # primes (to find more primes later), and passing it as
  # the next divisor
  def factorize(num, primes, nil, factors) do
    next_prime = find_next_prime(primes)
    factorize(num, primes ++ [next_prime], next_prime, factors)
  end

  # the divisor is a factor of num. Update num, update factors
  def factorize(num, primes, divisor, factors) when rem(num, divisor) == 0 do
      factorize( div(num, divisor), primes, divisor, [divisor | factors])
  end
  # divisor is not a factor of num. Find a new divisor
  def factorize(num, primes, _, factors) do
      factorize( num, primes, nil, factors)
  end
end
