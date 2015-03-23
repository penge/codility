# Check whether array A is a permutation.
# https://codility.com/demo/take-sample-test/perm_check

def solution(a)
  occ = Array.new(a.length + 1, false)
  
  a.each do |number|
    return 0 if number > a.length
    return 0 if occ[number] == true
    
    occ[number] = true
  end
  
  return 1
end


require 'minitest/autorun'

describe 'solution' do
  describe 'permutation' do
    it 'returns 1' do
      solution([4, 1, 3, 2]).must_equal 1
      solution([1, 2, 3]).must_equal 1
      solution([1]).must_equal 1
    end
  end
  
  describe 'no permutation' do
    it 'returns 0' do
      solution([4, 1, 3]).must_equal 0
      solution([3, 3, 3]).must_equal 0
      solution([29, 1, 1, 1, 1, 1, 1, 1]).must_equal 0
      solution([2, 2, 2, 4]).must_equal 0
    end
  end
end