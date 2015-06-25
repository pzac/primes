# Toy prime numbers generator. Recent Ruby versions have a nice Prime built-in,
# the set of all prime numbers.
#
class PrimeGenerator
  # We could use BigDecimal::INFINITY, too
  #
  MAX_INT = 999_999_999

  # Prime numbers set lazy enumerator
  #
  def self.as_enum
    (1..MAX_INT).lazy.select{|n| is_prime?(n)}
  end

  # Simple primality test
  #
  def self.is_prime?(x)
    return false if x < 2
    return true  if x <= 3
    return false if x % 2 == 0 || x % 3 == 0

    i = 5

    while i * i <= x
      return false if x % i == 0
      # Futher optimisation is possible if we consider that all primes are of
      # the form 6k +/- 1. Outside the scope of this exercise.
      i += 1
    end

    true
  end
end


generator = PrimeGenerator.as_enum
100.times do
  puts generator.next
end
