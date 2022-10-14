require "music"

RSpec.describe "music method" do
  it "returns an empty list" do
    music = MusicList.new
    expect(music.tracks).to eq []
  end
  it "adds a track to the list" do
    music = MusicList.new
    music.add("Centuries")
    expect(music.tracks).to eq ["Centuries"]
  end
  it "adds two tracks to the list" do
    music = MusicList.new
    music.add("Centuries")
    music.add("Who let the dogs out?")
    expect(music.tracks).to eq ["Centuries", "Who let the dogs out?"]
  end
   it "raises an error if the track already exists" do
    music = MusicList.new
    music.add("Centuries")
    expect {music.add("Centuries")}.to raise_error "Track already added."
  end
end