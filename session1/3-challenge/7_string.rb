# given a string, return the character after every letter "r"
#
# pirates_say_arrrrrrrrr("are you really learning Ruby?") # => "eenu"
# pirates_say_arrrrrrrrr("Katy Perry is on the radio!")   # => "rya"
# pirates_say_arrrrrrrrr("Pirates say arrrrrrrrr")        # => "arrrrrrrr"

def pirates_say_arrrrrrrrr(string)
    array = string.split("")
    collection = []
    
    for i in 0...(array.length) do
        #puts "#{i} 1"
        if array[i] == "r" || array[i] == "R" then
            #puts "#{i} 2"
            collection << array[i + 1]
        end
    end

    collection.join
end

    
    pirates_say_arrrrrrrrr("are you really learning Ruby?")