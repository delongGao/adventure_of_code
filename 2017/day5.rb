def count_steps(input)
  cur_index = 0
  steps = 0
  total_count = input.length
  while cur_index < total_count
    raise "This is not accepted: negative index: #{cur_index}" if cur_index.negative?
    next_index = cur_index + input[cur_index]
    input[cur_index] += 1
    cur_index = next_index
    steps += 1
  end
  steps
end

# tests
test_case = [0,3,0,1,-3]
raise "Test failed!!" if count_steps(test_case) != 5

input = File.read('day5_input.txt').split(/\n/).map(&:to_i)
puts count_steps(input)
