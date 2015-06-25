require_relative './test_helper'

class TestTable < Minitest::Test
  def setup
    @table = Table.new
    @table.rows = [
      [1,2,3],
      [4,5,10]
    ]
  end

  def test_returns_a_table_as_a_string
    expected = " 1  2  3\n" \
               " 4  5 10"
    assert_equal(expected, @table.to_s)
  end

  def test_returns_a_table_with_headers
    @table.headers = true
    expected = " 1 |  2  3\n" \
               "---+------\n"  \
               " 4 |  5 10"
    assert_equal(expected, @table.to_s)
  end

  def test_detects_cell_size
    assert_equal 2, @table.largest_cell_size
  end
end
