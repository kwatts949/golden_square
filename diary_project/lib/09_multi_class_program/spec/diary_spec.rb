require 'diary'

RSpec.describe 'diary method' do 
  it 'starts with an empty list of entries' do
    diary = Diary.new
    expect(diary.all).to eq [] 
  end
  it 'returns the number of words in the diary entries' do
    diary = Diary.new
    expect(diary.count_words).to eq 0
  end
end
