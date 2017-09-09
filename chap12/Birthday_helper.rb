# Initialise literal hash
birthdays = {}

File.read('birthday_list.txt').each_line do |line|
  line = line.chomp
# use first comma to index line
  first_comma = 0
  while line[first_comma] != ',' && first_comma < line.length
    first_comma = first_comma +1
    end

    name = line[0..(first_comma -1)]
    date = line[-12..-1]

    birthdays[name] = date
end

# Now ask the user which they want to know.
puts 'Whose birthday would you like to know?'
name = gets.chomp
date = birthdays[name]

if date == nil
  puts 'They\'re not on the list!'
else
puts date[1..5]
end
