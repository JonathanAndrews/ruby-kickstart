# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*input, &block)
  array = []
  until input[0] == nil
    array << block.call(input[-1])
    input.delete_at(-1)
  end
  array
end
