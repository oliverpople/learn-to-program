def english_number number
  if number < 0 # No negative numbers
    return 'Please enter a number that isn\'t negative.'
  end
  if number == 0
    return 'zero'
  end

  #no more special cases! No more returns!!
  num_string = '' # This is the string we will return

  ones_place = ['one',       'two',       'three',
                'four',      'five',      'six',
                'seven',     'eight',     'nine']
  tens_place = ['ten',       'twenty',    'thirty',
                'forty',     'fifty',     'sixty',
                'seventy',   'eighty',    'ninety']
  teenagers  = ['eleven',    'twelve',    'thirteen',
                'fourteen',  'fifteen',   'sixteen',
                'seventeen', 'eighteen',  'nineteen']

#"left" is how much of the number we still have to write out.
#"write" is the part we are writing out now.
  left  = number
  write = left/1000000000000
  left  = left - write*1000000000000

  if write > 0

    trillions = english_number write
    num_string = num_string + trillions + ' trillion'
    if left > 0
      num_string = num_string + ' '
    end
  end

  left  = number
  write = left/100          # How many hundeds are left?
  left  = left - write*100  # Substract off those hundreds.

  if ((write > 0) && (left > 0))
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
    # So we don't write 'two hundredfifty-one'...
      num_string = num_string + ' '
    end
  end

  write  = left/10          # How many tens left?
  left = left - write*10    # Substract off those tens_place

  if write > 0
    if ((write == 1) and (left > 0))
    # Since we can't write "twenty-two" instead
    # "twelve", we have to make a special expception for these.
      num_string = num_string + teenagers[left-1]
      # The "-1" is because teenagers[3] is "fourteen" not "thirteen"
      # Since we took care of the digit in the ones place already
      # by using a teenager, we have noting left to write.
      left = 0
    else
      num_string = num_string + tens_place[write-1]
      # similarly we have '-1' because tens_place[3] is 'forty'
      # not 'thirty'
    end

    if left > 0
    # so we don't write 'sixtyfour'....
      num_string = num_string + '-'
    end
  end

  write = left  # How many ones left to write out?
  left = 0       # Substract off those ones.

  if write >  0
      num_string = num_string + ones_place[write-1]
      # Yet again, there's a '-1' because ones_place[3] is
      # 'four', not 'three'.
  end

  # Now we just return  "num_string"...
  num_string
end

puts english_number(       0)
puts english_number(       9)
puts english_number(      11)
puts english_number(      17)
puts english_number(     234)
puts english_number(99999999)
puts english_number(1000000000000)
