require 'track'

RSpec.describe 'track method' do
  it 'matches a keyword in the title or artist' do
    track = Track.new("Placebo", "Summer Rain")
    expect(track.matches?("Placebo")).to eq true
  end

   it 'matches a keyword in the title or artist' do
    track = Track.new("Placebo", "Summer Rain")
    expect(track.matches?("nothing")).to eq false
  end
end