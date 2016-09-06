require './artist'
require 'minitest/autorun'

class Artist_Test < Minitest::Test

  def setup
    @artist = Artist.new("Ash")
    @artist.add_track("Folk Song")
    @artist.add_track("Burn Baby Burn")
  end

  def test_artist_name
    assert_equal "Ash", @artist.name
  end

  def test_artist_id
    assert_equal "a", @artist.artist_id
  end

  def test_artist_tracks
    assert_equal ["Folk Song", "Burn Baby Burn"], @artist.tracks
  end
end
