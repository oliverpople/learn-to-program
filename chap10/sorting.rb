#create to list of words 1) unsorted,  2) sorted alphabetically
#one by one move the "smallest" word from the unsorted list to sorted listdef sort some_array  # This "wraps" recursive_sort

def sort(some_array)  # This "wraps" recursive_sort
   recursive_sort(some_array,[])
end

def recursive_sort(unsorted_array, sorted_array)
  if unsorted_array.length <= 0
    return sorted_array
  end
    smallest = unsorted_array.pop
    still_unsorted=[]

    unsorted_array.each do |test|
      if test < smallest
        still_unsorted.push smallest
        smallest = test
      else
        still_unsorted.push test
      end
    end
  sorted_array.push smallest
  recursive_sort(still_unsorted, sorted_array)

   # search nsorted_array for "smallest" word
   # add smallest word to sorted_array
end

puts (sort(['xeno', 'xeno', 'hedge', 'ant'])) == ['xeno', 'xeno', 'hedge', 'ant'].sort
