# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three? arr
    if arr == nil || arr[0] == nil then return false end
    arr.each_with_index do |v, i|
        if arr[i + 2] == nil then return false end
        if arr[i] == arr[i + 1] && arr[i] == arr[i + 2]
            return true
        end
    end
end


    
