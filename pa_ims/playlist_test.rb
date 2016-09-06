require 'minitest/autorun'
require './playlist'

class Playlist_Test < Minitest::Test

  def setup
    @playlist = Playlist.new
    artist1 = Artist.new("Blur")
    artist2 = Artist.new("Oasis")
    @playlist.add_artist(artist1)
    @playlist.add_artist(artist2)

    @playlist.add_track("Coffee and TV", "b")
    @playlist.add_track("Don't Look Back In Anger", "o")
  end

  def test_tracks
    assert_equal ["Coffee and TV", "Don't Look Back In Anger"],
    @playlist.track_names
  end

  def test_artists
    assert_equal ["Blur", "Oasis"], @playlist.artist_names
  end

  def test_count_tracks
    assert_equal 1, @playlist.count_tracks("b")
  end
end
