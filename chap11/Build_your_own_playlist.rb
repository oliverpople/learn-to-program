def shuffle array

  x = 0
  track_number = 0
  number_songs = 0
  playlist = []

  number_songs = array.length

  while x < number_songs
    track_number = rand(number_songs)

    if array[track_number] != ''
      playlist.push array[track_number]
      array[track_number] = ''
      x = x + 1
  else
  end
  end

  Dir.chdir '/Users/oliverpople/Desktop/Makers/learn-to-program/chap11/Testplaylist'

  filename = 'playlist.m3u'

  File.open filename, 'w' do |f|
    f.puts playlist
  end

end

tracks = Dir['/Users/oliverpople/Desktop/Makers/learn-to-program/chap11/Musictest/**/*.{mp3,AIFF,AIFF-C,track}']
shuffle tracks
puts 'It\'s done!'
