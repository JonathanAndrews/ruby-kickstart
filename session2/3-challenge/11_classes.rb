# DO NOT STRUGGLE ON THIS PROBLEM FOR MORE THAN 30 MINUTES!!

# Write a program that outputs the lyrics for "Ninety-nine Bottles of Beer on the Wall"
# Your program should print the number of bottles in English, not as a number. For example:
#
# Ninety-nine bottles of beer on the wall,
# Ninety-nine bottles of beer,
# Take one down, pass it around,
# Ninety-eight bottles of beer on the wall.
# ...
# One bottle of beer on the wall,
# One bottle of beer,
# Take one down, pass it around,
# Zero bottles of beer on the wall.
#
# Your program should not use ninety-nine output statements!
# Design your program with a class named BeerSong whose initialize method
# receives a parameter indicating the number of bottles of beer initially on the wall.
# If the parameter is less than zero, set the number of bottles to zero. Similarly,
# if the parameter is greater than 99, set the number of beer bottles to 99
# Then make a public method called print_song that outputs all stanzas from the number of bottles of beer down to zero.
# Add any additional methods you find helpful.

class BeerSong
    
    def initialize num
        if num < 0 
            @num = 0
        elsif num > 99
            @num = 99
        else
            @num = num
        end
        
        #print_song @num
    end
    
    def written_num(n)
        
        array = []
        case 
            when n > 90 
                array << "ninety"
                n -= 90
                array << written_num(n)
                return array.join("-").capitalize
            when n == 90 
                array << "ninety"
                return array.join("-").capitalize
            when n > 80 
                array << "eighty"
                n -= 80
                array << written_num(n)
                return array.join("-").capitalize
            when n == 80 
                array << "eighty"
                return array.join("-").capitalize
            when n > 70 
                array << "seventy"
                n -= 70
                array << written_num(n)
                return array.join("-").capitalize
            when n == 70 
                array << "seventy"
                return array.join("-").capitalize
            when n > 60 
                array << "sixty"
                n -= 60
                array << written_num(n)
                return array.join("-").capitalize
            when n == 60 
                array << "sixty"
                return array.join("-").capitalize
            when n > 50 
                array << "fifty"
                n -= 50
                array << written_num(n)
                return array.join("-").capitalize
            when n == 50 
                array << "fifty"
                return array.join("-").capitalize
            when n > 40 
                array << "forty"
                n -= 40
                array << written_num(n)
                return array.join("-").capitalize
            when n == 40 
                array << "forty"
                return array.join("-").capitalize
            when n > 30 
                array << "thirty"
                n -= 30
                array << written_num(n)
                return array.join("-").capitalize
            when n == 30 
                array << "thirty"
                return array.join("-").capitalize
            when n > 20 
                array << "twenty"
                n -= 20
                array << written_num(n)
                return array.join("-").capitalize
            when n == 20 
                array << "twenty"
                return array.join("-").capitalize
            when n == 19 
                array << "nineteen"
                return array.join("-").capitalize
            when n == 18 
                array << "eighteen"
                return array.join("-").capitalize
            when n == 17 
                array << "seventeen"
                return array.join("-").capitalize
            when n == 16 
                array << "sixteen"
                return array.join("-").capitalize
            when n == 15 
                array << "fifteen"
                return array.join("-").capitalize
            when n == 14 
                array << "fourteen"
                return array.join("-").capitalize
            when n == 13 
                array << "thirteen"
                return array.join("-").capitalize
            when n == 12 
                array << "twelve"
                return array.join("-").capitalize
            when n == 11 
                array << "eleven"
                return array.join("-").capitalize
            when n == 10 
                array << "ten"
                return array.join("-").capitalize
            when n == 9 
                array << "nine"
                return array.join("-").capitalize
             when n == 8 
                array << "eight"
                return array.join("-").capitalize
             when n == 7 
                array << "seven"
                return array.join("-").capitalize
             when n == 6 
                array << "six"
                return array.join("-").capitalize
             when n == 5 
                array << "five"
                return array.join("-").capitalize
             when n == 4 
                array << "four"
                return array.join("-").capitalize
             when n == 3
                array << "three"
                return array.join("-").capitalize
             when n == 2 
                array << "two"
                return array.join("-").capitalize
             when n == 1 
                array << "one"
                return array.join("-").capitalize
             when n == 0 
                return 
        end
        array.join("-").capitalize
    end
    
    def print_song 
        bottles = @num
        until bottles == 0 || bottles == nil
            if bottles == 1
                puts "#{written_num(bottles)} bottle of beer on the wall,"
                puts "#{written_num(bottles)} bottle of beer,"
                puts "Take one down, pass it around,"
                bottles -= 1
                puts "Zero bottles of beer on the wall."
            else
                puts "#{written_num(bottles)} bottles of beer on the wall,"
                puts "#{written_num(bottles)} bottles of beer,"
                puts "Take one down, pass it around,"
                bottles -= 1
                if bottles == 1
                    puts "#{written_num(bottles)} bottle of beer on the wall."
                else
                    puts "#{written_num(bottles)} bottles of beer on the wall."
                end
            end
        end
    end
    
    
end

#BeerSong.new(44).print_song