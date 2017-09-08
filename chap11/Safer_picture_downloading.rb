# changes current working directory
Dir.chdir '/Users/oliverpople/Desktop/Test_images2'

# First we find all of the pictures to be moved
pic_names = Dir['/Users/oliverpople/Desktop/Test_images1/*.{jpeg,jpg}']

puts 'What would you like to call this batch?'
batch_name = gets.chomp

puts
print "Downloading #{pic_names.length} files:  "

# this will be your counter. We'll start at 1 today.
pic_number = 1

pic_names.each do |name|
  print '.' #  This is the "progress bar"

  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}.jpg"
  else
    "#{batch_name}#{pic_number}.jpg"
  end

if File.exist? "#{new_name}"
  puts 'Error: File already exist'
  exit
else
  File.rename name, new_name
end
# Finally we increment the counter.
pic_number = pic_number + 1
end

puts # So we're not on progress bar line.
puts 'It\'s done.'
