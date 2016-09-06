class Artist

  def initialize(artist_name)
    @name = artist_name
    @tracks = Array.new

    artist_name = artist_name.split()
    artist_id = ""
    for word in artist_name
      artist_id = artist_id + word[0].downcase
    end
    @artist_id = artist_id

  end

  attr_reader :name
  attr_reader :tracks
  attr_reader :artist_id

  def add_track(track)
    @tracks.push(track)
  end
end
