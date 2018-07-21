# Write a method named every_other_char for strings that,
# returns a string containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""

class String
  def every_other_char
      string = self
      arr = string.split(//)
      arr2 =[]
      arr.each_index do |i| 
          if i % 2 == 0 then arr2.push arr[i] end
      end
      arr2.join("")
  end
  
end
