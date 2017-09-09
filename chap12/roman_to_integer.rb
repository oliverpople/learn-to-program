def roman_to_integer roman

  integer_values = {'i' => 1,
                    'v' => 5,
                    'x' => 10,
                    'l' => 50,
                    'c' => 100,
                    'd' => 500,
                    'm' => 1000}

  total = 0
  previous_value  = 0
  index = roman.length-1

  while index >= 0
    char = roman[index].downcase
    index = index -1
    value = integer_values[char]
    if !value
      puts 'That\'s not a roman numeral'
      return
    end

    if value < previous_value
      value = value * -1
    else
      previous_value = value
    end
    total = total + value
  end
  total
end

puts(roman_to_integer('mcmxcix'))
