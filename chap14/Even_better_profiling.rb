def profile block_description, &block
  #  To turn profiling on/off, set this
  # to true/ false

  profiling_on = false

  if profiling_on
    start_time = Time.new
    block.call

    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  else
    block.call
  end
end

profile '25000 doublings' do
  number = 1

  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
  # That's the numberof digits in the HUGE number
end

profile 'count to a million' do
  number = 0
  1000000.times do
    number = number + 1
  end
end
