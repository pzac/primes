require 'optparse'
require_relative 'prime_table'
require_relative 'table'

size = 10

OptionParser.new do |opts|
  opts.banner = "Usage: ruby script.rb [options]"

  opts.on("--count N", OptionParser::DecimalInteger, "Size") do |c|
    size = c
  end
end.parse!

prime_table = PrimeTable.new(size.to_i)

table = Table.new
table.rows = prime_table.to_a
table.headers = true

puts table
