$logger_depth = 0

def log desc, &block
  prefix = ' '*$logger_depth

  puts prefix + 'Beginning"' + desc + '"...'

  $logger_depth = $logger_depth + 1
  result = block.call

  $logger_depth = $logger_depth - 1
  puts prefix + '..."' + desc + '" finished, returning:  ' + result.to_s
end

log 'yet another block' do
  log 'some litle block' do
    log 'teeny-tiny block' do
      'lOts Of lOve.'.downcase
    end

    7 * 3 * 2
  end

  log 'yet another block' do
    'I like thai food'
  end

  '0' == '0'
end
