require 'music_library'
require "track"

RSpec.describe "integration" do
  it 'returns a list of all the tracks' do
    library = MusicLibrary.new
    track1 = Track.new("Placebo", "Summer Rain")
    library.add(track1)
    expect(library.all).to eq [track1]
  end
end