# Calculate the values of counters after applying all alternating operations:
# increase counter by 1; set value of all counters to current maximum.
# https://codility.com/demo/take-sample-test/max_counters

def solution(n, a)
  counters = Array.new(n, 0)
  max = 0
  max_changed = false
  
  a.each do |number|
    if number == n + 1
      if max_changed
        counters = Array.new(n, max)
        max_changed = false
      end
      next
    end
    
    new_max = counters[number - 1] += 1
    if new_max > max
      max = new_max
      max_changed = true
    end
  end
  
  counters
end


require 'minitest/autorun'

describe 'solution' do
  it 'calculates counters' do
    solution(5, [3, 4, 4, 6, 1, 4, 4]).must_equal [3, 2, 2, 4, 2]
    solution(2, [3, 3, 3, 3, 3, 3, 3]).must_equal [0, 0]
    solution(4, [1, 1, 1, 5]).must_equal [3, 3, 3, 3]
  end
end