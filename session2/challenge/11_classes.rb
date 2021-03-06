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

  def initialize(bottles)
    if bottles < 0
      @bottles = 0
    elsif bottles > 99
      @bottles = 99
    else
      @bottles = bottles
    end
  end

  def text1(i)
    numbers_to_name = {90 => "ninety", 80 => "eighty", 70 => "seventy", 60 => "sixty",
      50 => "fifty", 40 => "forty", 30 => "thirty", 20 => "twenty", 19=>"nineteen",
      18=>"eighteen", 17=>"seventeen", 16=>"sixteen", 15=>"fifteen", 14=>"fourteen",
      13=>"thirteen", 12=>"twelve", 11 => "eleven", 10 => "ten", 9 => "nine", 8 => "eight",
      7 => "seven", 6 => "six", 5 => "five", 4 => "four", 3 => "three", 2 => "two",
      1 => "one", 0=> "zero"
    }
    str = ""
    numbers_to_name.each { |num, name|
      if i == 0
        return "Zero"
      elsif i.to_s.length == 1 && i/num > 0
        return str + "#{name}"
      elsif i/num > 0
        return str + "#{name}" if i%num == 0
        return str + "#{name}" + "-" + text1(i%num)
      end
      }
    end

  def text2(i)
    if i == 1
      "bottle"
    else
      "bottles"
    end
  end

  def lines(i)
    if i == 0
      return ""
    else
      puts "#{text1(i).capitalize} #{text2(i)} of beer on the wall,",
           "#{text1(i).capitalize} #{text2(i)} of beer,",
           "Take one down, pass it around,",
           "#{text1(i-1).capitalize} #{text2(i-1)} of beer on the wall."
    end
  end

  def print_song
    @bottles.downto(1) {|i| lines(i)}
  end

end
