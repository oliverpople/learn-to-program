def bottles(num_at_start)

  num_now = num_at_start

  while num_now > 0
    puts num_now.to_s + ' bottles of beer on the wall, ' +
         num_now.to_s + ' bottles of beer!'
    num_now = num_now - 1

    puts 'Take one down, pass it around, ' +
          num_now.to_s + ' bottles of beer on the wall!'
  end
end

bottles(9999)
