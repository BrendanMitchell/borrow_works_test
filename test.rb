require 'minitest/autorun'
require_relative './hamming_distance'

class Test < Minitest::Test
  def test_hamming_distance
    assert_equal 2, HammingDistance.new('GGG', 'GGGGG').dh
    assert_equal 7, HammingDistance.new('GAGCCTACTAACGGGAT', 'CATCGTAATGACGGCCT').dh
    assert_equal 1, HammingDistance.new('GAC', 'GAG').dh
    assert_equal 3, HammingDistance.new('GAGCCTACTAACGGGAT', 'GAGCCTGCTAACAGGATT').dh
  end
end
