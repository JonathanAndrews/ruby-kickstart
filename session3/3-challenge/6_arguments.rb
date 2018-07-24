# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

def match_maker(key, *input_data)
  data = []
  input_data.each_slice(2) { |a, b| data << [a, b]}
  storage = []
  data.each do |x|
    i = (x[0] ? true : false)
    j = (x[1] ? true : false)
    storage << (i == j ? "similarly" : "oppositely")
  end
  result = []
  storage.each do |y|
    if key == true && y == "oppositely" then result << true
    elsif key == false && y == "similarly" then result << true
    else result << false
    end
  end
  result
end
