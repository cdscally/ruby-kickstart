# Given an array of elements, return true if any element shows up three times in a row
#
# Examples:
# got_three? [1, 2, 2, 2, 3]  # => true
# got_three? ['a', 'a', 'b']  # => false
# got_three? ['a', 'a', 'a']  # => true
# got_three? [1, 2, 1, 1]     # => false

def got_three?(ary)
  l = ary.length
  return false if l < 3
  state = false
  for i in 2..l-1
    if ary[i] == ary[i-1] &&ary[i] == ary[i-2]
      state = true
    end
  end
  state
end
