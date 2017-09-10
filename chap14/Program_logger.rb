def log description, &block
  puts 'Beginning "' + description + '"...'
  result = block.call
  puts'..."' + description + ' " finished, returning:  ' + result.to_s
end
log 'outer block' do
  log 'some little block' do
    1**1 + 2**2
  end

  log 'yet another block' do
    'I like thai food!'
  end
  '0' == 0
end
