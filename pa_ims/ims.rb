require './playlist'
require './track'

class IMS

  def initialize
    @playlist = Playlist.new
  end

  def start

    puts "Welcome to the Interactive Music Shell"
    puts "Type a command or type 'help' to get started"
    puts "Type 'exit' to quit"
    print "> "

    choice = $stdin.gets.chomp
    choice = choice.split

    # change this to while true when you finish making your exit method
    while choice[0] != 'exit'

      if choice[0].downcase == 'help'
        help

      elsif choice[0].downcase == 'add' && choice[1].downcase == 'artist'
        artist = Artist.new(choice[2, choice.length].join(' '))
        @playlist.add_artist(artist)
        puts artist.artist_id

      elsif choice[0].downcase == 'add' && choice[1].downcase == 'track'
        if !choice[2..choice.length].include? 'by'
          raise "Incorrect format\nEnter 'add track [track_name] by [artist_id]"
        else # issue with tracks whose names include 'by'
          track_name = choice[2...choice.index('by')].join(' ')
          artist_id = choice[choice.index('by')+1]
          @playlist.add_track(track_name, artist_id)
        end

      elsif choice[0].downcase == 'info' && choice[1].downcase == 'artist'
        artist_id = choice[2]
        @playlist.artist_info(artist_id)

      elsif choice[0].downcase == 'info' && choice[1].downcase == 'track'
        track_num = Integer(choice[2])
        @playlist.track_info(track_num)


      elsif choice[0].downcase == 'count' && choice[1].downcase == 'tracks' &&
        choice[2].downcase == 'by'
        artist_id = choice[3]
        puts "#{@playlist.count_tracks(artist_id)}"
      end


      print "> "
      choice = $stdin.gets.chomp
      choice = choice.split
    end
  end

  def help
    puts """\n  Available Commands:\n\n
    Info -- Information on current state. Includes the last three tracks played, the total number of tracks,
    print and the total number of artists\n
    Info track [number]-- display info about a track\n
    Info artist [artist_id]-- display info about an artist\n
    Add artist [artist name] -- adds an artist\n
    Add track [track name] by [artist_id] -- adds a new track\n
    Play track [track_number] -- records that a track was played at the current time\n
    Count tracks by [artist_id] -- count how many tracks are played by a current artist\n
    List tracks by [artist_id] -- list tracks played by a certain artist
    """
  end
end

ims = IMS.new()
ims.start()
