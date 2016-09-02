class Artist
  @discography = []

  def initialize(artist_name)
    @artist_name = artist_name
  end

  def create_artist_id
    @artist_id = @artist_name

  end

  def info
    puts "Name: #{@artist_name}"
    puts "Id: #{@artist_id}"
    puts "Discography: #{@discography}"
  end

  def add_track(track)
    @discography.push(track)
  end

  def get_artist_name
    return @artist_name
  end
end
