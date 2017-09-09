puts 'Please state your birthday in yyyymmdd.'

birthday = gets.chomp
b_year  = birthday[0..3].to_i
b_month = birthday[4..5].to_i
b_day   = birthday[6..7].to_i

t = Time.new

t_year  = t.year
t_month = t.month
t_day   = t.day

age = t_year - b_year

if t_year < b_year ||  t_month == b_month && t_day < b_hday
  age -= 1
end
if t_month == b_month && t_day == b_day
  puts "Happy Birthday!!"
end
puts "You are #{age} years old."
puts 'SPANK!'*age
