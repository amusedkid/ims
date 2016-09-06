require 'minitest/autorun'
require './track'

class Track_Test < Minitest::Test

  def setup
    @track = Track.new("Hysteria", "Muse")
  end

  def test_track_name
    assert_equal "Hysteria", @track.name
  end

  def test_artist
    assert_equal "Muse", @track.artist
  end
end
