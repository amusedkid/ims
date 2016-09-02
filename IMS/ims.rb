require '.\artist'

class IMS

  def initialize
  end

  def start

    puts "Welcome to the Interactive Music Shell"
    puts "Type a command or type 'help' to get started"
    puts "Type quit to exit"
    print "> "

    choice = $stdin.gets.chomp

    # change this to while true when you finish making your exit method
    while choice != "exit"

      if choice.downcase == 'help'
        help
      end

      if choice.downcase[0...10] == 'add artist'
        artist = Artist.new(choice[11..choice.length])
        artist.store_artist_name
      end

      print "> "
      choice = $stdin.gets.chomp
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
