def shuffle(some_array)
  shuffled_array=[]

  while some_array.length > 0
    #Randomly pick one element fro array
    random_index = rand(some_array.length)
    #Go through each item in array,
    #put items into still_unshuffled,
    #except those that randomly match random_index
    current_index = 0
    still_unshuffled = []

    some_array.each do |item|
      if current_index == random_index
        shuffled_array.push item
      else
        still_unshuffled.push item
      end
    #indexise each item as you iterate through the array
    current_index = current_index + 1
    end
    #replace the original array with the WIP array
    some_array = still_unshuffled
  end
  #return the final shuffled _rray once recursive shuffle method has been executes
  shuffled_array

end
puts (shuffle(['1', '2', '3', '5']))
