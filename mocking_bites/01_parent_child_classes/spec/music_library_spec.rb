require 'music_library'

RSpec.describe 'music library method' do
  it 'adds a single track to the library' do
    library = MusicLibrary.new
    fake_track = double :fake_track
    library.add(fake_track)
    expect(library.all).to eq [fake_track]
  end

  it 'adds many track to the library and lists them' do
    library = MusicLibrary.new
    fake_track_1 = double :fake_track
    fake_track_2 = double :fake_track
    fake_track_3 = double :fake_track
    library.add(fake_track_1)
    library.add(fake_track_2)
    library.add(fake_track_3)
    expect(library.all).to eq [fake_track_1, fake_track_2, fake_track_3]
  end

  it 'returns a list of tracks matching the keyword' do
    library = MusicLibrary.new
    fake_track_1 = double :fake_track
    expect(fake_track_1).to receive(:matches?).with('two').and_return(true)
    library.add(fake_track_1)
    expect(library.search('two')).to eq [fake_track_1]
  end
end