require './track'
require './artist'

class Playlist

  def initialize
    @tracks = Array.new # stores track as Track objects
    @artists = Array.new # stores artists as Artist objects
  end

  def track_names
    track_names = []
    for track in @tracks
      track_names.push(track.name)
    end
    return track_names
  end

  def artist_names
    artist_names = []
    for artist in @artists
      artist_names.push(artist.name)
    end
    return artist_names
  end

  def add_artist(artist)
    @artists.push(artist)
  end

  def add_track(track_name, track_artist_id)
    added = false
    for artist in @artists
      if artist.artist_id == track_artist_id
        added = true
        track = Track.new(track_name, artist.name)
        @tracks.push(track)
        artist.tracks.push(track.name)
        break
      end
    end

    if added == false
      raise "Artist hasn't been added!"
    end
  end

  def artist_info(artist_id)
    for artist in @artists
      if artist.artist_id == artist_id
        puts """
                Artist name: #{artist.name}
                Artist id: #{artist.artist_id}
                Tracks: #{artist.tracks.to_s}"""
      end
    end
  end

  def track_info(track_number)
    found_track = @tracks[track_number]
        puts """
        Track name: #{found_track.name}
        Artist: #{found_track.artist}
        """
  end

  def count_tracks(artist_id)
    for artist in @artists
      if artist.artist_id == artist_id
        return artist.tracks.length
      end
    end
  end
end
