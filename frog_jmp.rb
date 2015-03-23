# Count minimal number of jumps from position X to Y.
# https://codility.com/demo/take-sample-test/frog_jmp

def solution(x, y, d)
  ((y - x) / d.to_f).ceil
end


require 'minitest/autorun'

describe 'solution' do
  it 'returns number of jumps needed' do
    solution(10, 85, 30).must_equal 3
    solution(10, 50, 60).must_equal 1
    solution(10, 200, 10).must_equal 19
    solution(40, 40, 20).must_equal 0
  end
end