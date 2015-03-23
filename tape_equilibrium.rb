# Minimize the value |(A[0] + ... + A[P-1]) - (A[P] + ... + A[N-1])|.
# https://codility.com/demo/take-sample-test/tape_equilibrium

def solution(a)
  total = 0
  sums = []
  
  a.each do |num|
    total += num 
    sums << total
  end
  
  min = Float::INFINITY
  sums[0..-2].each do |sum|
    new_min = (sum - (total - sum)).abs
    min = new_min if new_min < min
  end
  
  min
end


require 'minitest/autorun'

describe 'solution' do
  it 'returns minimal difference' do
    solution([3, 1, 2, 4, 3]).must_equal 1
    solution([-3, 1]).must_equal 4
    solution([1, 1, 1, 1, 1, 1]).must_equal 0
    solution([1, 1, 1, 1, 1, 1, 1]).must_equal 1
  end
end