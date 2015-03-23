# Find the minimal positive integer not occurring in a given sequence.
# https://codility.com/demo/take-sample-test/missing_integer

def solution(a)
  max = 1
  h = {}

  a.each do |number|
    max = number if number > max
    h[number] = true
  end

  1.upto(max + 1).each do |number|
    return number if h[number].nil?
  end
end


require 'minitest/autorun'

describe 'solution' do
  it 'returns the minimal positive integer that does not occur in the array' do
    solution([1, 3, 6, 4, 1, 2]).must_equal 5
    solution([-1]).must_equal 1
    solution([1]).must_equal 2
    solution([1, 2, 3]).must_equal 4
    solution([1, 2, 3, -2, 4]).must_equal 5
    solution([1, 2, 3000, 5000, 10000]).must_equal 3
  end
end