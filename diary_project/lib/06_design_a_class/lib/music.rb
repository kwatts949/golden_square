class MusicList
  def initialize
    @tracks = []
  end

  def add(track)
    fail "Track already added." if @tracks.include?(track)
    @tracks << track
  end

  def tracks
    return @tracks
  end
end