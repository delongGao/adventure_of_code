# While this is very space-efficient (no squares are skipped),
# requested data must be carried back to square 1
# (the location of the only access port for this memory system)
# by programs that can only move up, down, left, or right.
# They always take the shortest path: the Manhattan
# Distance between the location of the data and square 1.

# 17  16  15  14  13
# 18   5   4   3  12
# 19   6   1   2  11
# 20   7   8   9  10
# 21  22  23---> ...

# TODO: I don't like this very much... there must be a better way...
def steps(num)
  return 0 if num == 1
  level = 1

  while level ** 2 < num
    level += 2
  end
  max_num = level ** 2
  mids = (0..3).collect { |i| max_num - (level - 1) * i - level / 2 }
  base_steps = (level - 1) / 2
  additional_step = 0

  until mids.collect { |mid| [mid + additional_step, mid - additional_step] }.flatten.include?(num)
    additional_step += 1
  end

  base_steps + additional_step
end

puts steps(ARGV.shift.to_i)
