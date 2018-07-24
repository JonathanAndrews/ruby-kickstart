# DO NOT SPEND MORE THAN 30-40 MINUTES STRUGGLING THROUGH THIS BEFORE MOVING ON!

# Print to stdout, each element in a hash based linked list, in reverse.
# If you don't know what that is, go check out the previous problem.
#
# EXAMPLES:
# head = {:data => 1, :next => nil}
# head = {:data => 2, :next => head}
#
# print_list_in_reverse head   # >> "1\n2\n"

def print_list_in_reverse list
  if list[:next] == nil
    puts list[:data]
  else
    print_list_in_reverse list[:next]
    puts list[:data]
  end
end

=begin

head = {:data => 1, :next => nil}
head = {:data => 2, :next => head}

print_list_in_reverse head   # >> "1\n2\n"
=end
