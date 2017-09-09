def music_shuffle array
  x = 0
  track_number = 0
  number_songs = 0
  playlist = []
  full_track_title = []
  previous_album = ''
  curent_album = ''

  number_songs = array.length

  while x < number_songs
    track_number = rand(number_songs)
    full_track_title = array[track_number].split'/'
    current_album = full_track_title[2]
    if current_album != previous_album
      if array[track_number] != ''
        playlist.push array[track_number]
        array[track_number] = ''
        x = x + 1
      else
      end
      previous_album = current_album
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
music_shuffle tracks
puts 'It\'s done!'
