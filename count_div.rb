# Compute number of integers divisible by k in range [a..b].
# https://codility.com/demo/take-sample-test/count_div

def solution(a, b, k)
  count = (b / k) - (a / k)
  count += 1 if (a % k == 0)
  count
end


require 'minitest/autorun'

describe 'solution' do
  it 'returns number of integers within [A..B] that are divisible by K' do
    # K > B
    solution(0, 9, 10).must_equal 1
    solution(9, 9, 10).must_equal 0
    
    # K = 1
    solution(0, 9, 1).must_equal 10
    solution(6, 9, 1).must_equal 4
    
    # A = B
    solution(9, 9, 3).must_equal 1
    solution(9, 9, 6).must_equal 0
    
    # A = 0
    solution(0, 9, 3).must_equal 4
    
    # A > 0
    solution(3, 9, 3).must_equal 3
    solution(4, 9, 3).must_equal 2
  end
end