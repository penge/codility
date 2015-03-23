# Find the missing element in a given permutation.
# https://codility.com/demo/take-sample-test/perm_missing_elem

def solution(a)
  a.empty? ? 1 : (((a.length + 1) * (a.length + 2)) / 2) - a.inject(:+)
end


require 'minitest/autorun'

describe 'solution' do
  it 'returns missing number' do
    solution([2, 3, 1, 5]).must_equal 4
    solution([1, 2, 3, 4]).must_equal 5
    solution([4, 5, 2, 3]).must_equal 1
    solution([2]).must_equal 1
    solution([1]).must_equal 2
    solution([]).must_equal 1
  end
end