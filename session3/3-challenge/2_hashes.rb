# Given a nonnegative integer, return a hash whose keys are all the odd nonnegative integers up to it
# and each key's value is an array containing all the even non negative integers up to it.
#
# Examples:
# staircase 1  # => {1 => []}
# staircase 2  # => {1 => []}
# staircase 3  # => {1 => [], 3 => [2]}
# staircase 4  # => {1 => [], 3 => [2]}
# staircase 5  # => {1 => [], 3 => [2], 5 =>[2, 4]}


def staircase n
  i = 1
  hash = {}
  until n < i
    if i.odd?
      hash[i] = array_filler(i)
    end
    i += 1
  end
  hash
end

def array_filler(number)
  array = []
  j = 1
  until number < j
    if j.even?
      array << j
    end
    j +=1
  end
  array
end
