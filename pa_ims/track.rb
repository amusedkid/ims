class Track

  def initialize(track_name, artist_name)
    @name = track_name
    @artist = artist_name
  end

  attr_reader :name
  attr_reader :artist
end
