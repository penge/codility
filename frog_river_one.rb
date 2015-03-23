# Find the earliest time when a frog can jump to the other side of a river.
# https://codility.com/demo/take-sample-test/frog_river_one


def solution(x, a)
  leaves = {}
  
  a.each_with_index do |number, index|
    leaves[number] = true
    return index if leaves.size == x
  end
  
  -1
end


require 'minitest/autorun'

describe 'solution' do
  describe 'can jump' do
    it 'returns earliest time' do
      solution(5, [1, 3, 1, 4, 2, 3, 5, 4]).must_equal 6
      solution(4, [1, 3, 1, 4, 2, 3, 5, 4]).must_equal 4
    end
  end
  
  describe 'cannot jump' do
    it 'returns -1' do
      solution(7, [1, 3, 1, 4, 2, 3, 5, 4]).must_equal -1
      solution(4, [1, 2, 1, 4, 2, 2, 2, 1]).must_equal -1
    end
  end
end