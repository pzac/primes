require_relative 'prime_table'
require_relative 'table'

prime_table = PrimeTable.new(12)

table = Table.new
table.rows = prime_table.to_a
table.headers = true

puts table
