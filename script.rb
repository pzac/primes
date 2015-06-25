require_relative 'prime_generator'
require_relative 'table'

generator = PrimeGenerator.as_enum
# 10.times do
#   puts generator.next
# end


primes = generator.first(20)

rows = [[nil] + primes]

primes.each do |prime|
  rows << [prime] + primes.map{|x| x * prime}
end


table = Table.new
table.rows = rows
table.headers = true

puts table
