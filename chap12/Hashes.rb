test_hash = {}

test_hash['mega'] = 'manchester'
test_hash['wicked'] = 'london'
test_hash['gurt'] = 'bristol'

test_hash.each do | term, place|
  puts " If they say #{term} they're from #{place}"
end
