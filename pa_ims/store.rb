require 'pstore'

class Store

  def initialize
    @datafile = PStore.new('artists.pstore')
  end

  def write(artist_name)
    @datafile.transaction do
        @datafile["Artists"] >> artist_name
        data.commit
    end
  end
end
