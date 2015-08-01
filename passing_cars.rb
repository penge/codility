# Count the number of passing cars on the road.
# https://codility.com/demo/take-sample-test/passing_cars

def solution(a)
  zeros = 0
  count = 0
  a.each { |num| num.zero? ? zeros += 1 : count += zeros }
  count > 1_000_000_000 ? - 1 : count
end


require 'minitest/autorun'

describe 'solution' do
  it 'returns count of passing cars' do
    solution([0, 1, 0, 1, 1]).must_equal 5
    solution([1, 1, 1, 0, 0]).must_equal 0
  end
end