require_relative 'prime_generator'

class PrimeTable
  def initialize(items = 10)
    @items = items
    @generator = PrimeGenerator.as_enum
  end

  def to_a
    primes = @generator.first(@items)
    rows = [[nil] + primes]

    primes.each do |prime|
      rows << [prime] + primes.map{|x| x * prime}
    end

    rows
  end
end
