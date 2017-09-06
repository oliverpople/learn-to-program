def roman_numeral(number)
  while (1..3000).include?(number)
    #if number/1000 >= 1   #Might not be necessary
      numeral_array = ""
      numeral_array << "M"*(number/1000).to_i
      numeral_array << "D"*((number%1000)/500)
      numeral_array << "C"*((number%500)/100)
      numeral_array << "L"*((number%100)/50)
      numeral_array << "X"*((number%50)/10)
      numeral_array << "V"*((number%10)/5)
      numeral_array << "I"*((number%5)/1)
      puts numeral_array
      break
  end
end

roman_numeral(2500)
roman_numeral(2900)
roman_numeral(3000)
roman_numeral(1150)
roman_numeral(1110)
roman_numeral(1115)
roman_numeral(1111)
roman_numeral(1999)
