require_relative './test_helper'

class TestPrimeTable < Minitest::Test
  def setup
    @table = PrimeTable.new(4)
  end

  def test_returns_a_table_as_array
    assert_kind_of(Array, @table.to_a)
  end

  def test_returns_a_valid_table
    expected = [
      [nil, 2,  3,  5,  7],
      [2,   4,  6, 10, 14],
      [3,   6,  9, 15, 21],
      [5,  10, 15, 25, 35],
      [7,  14, 21, 35, 49]
    ]
    assert_equal(expected, @table.to_a)
  end
end
