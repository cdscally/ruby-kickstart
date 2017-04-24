# Write a method named every_other_char for strings that,
# returns an array containing every other character
#
# example:
# "abcdefg".every_other_char  # => "aceg"
# "".every_other_char         # => ""


class String
  def every_other_char
    a = self.split''
    if a != []
      a = a.values_at(* a.each_index.select {|i| i.even?})
    end
    a = a.join''
  end
end

#oh shit I figured it out with self


#suggested solution
=begin
class String
  def every_other_char
    to_return = ''
    each_char.with_index do |char, index|
      to_return << char if index.even?
    end
    to_return
  end
end
=end
