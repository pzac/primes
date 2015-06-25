require_relative './test_helper'

class TestPrimeGenerator < Minitest::Test
  def test_detects_prime_numbers
    assert_equal true, PrimeGenerator.is_prime?(17)
    assert_equal false, PrimeGenerator.is_prime?(18)
  end

  def test_returns_an_enumerable_set
    assert_respond_to PrimeGenerator.as_enum, :next
  end


  def test_returns_an_array_of_primes
    assert_equal [2,3,5,7,11], PrimeGenerator.as_enum.first(5)
  end
end
