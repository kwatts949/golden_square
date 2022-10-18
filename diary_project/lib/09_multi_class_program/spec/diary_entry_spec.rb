require 'diary_entry'

RSpec.describe "diary entry method" do
  it 'returns the title of the entry' do
    entry = DiaryEntry.new("Wednesday", "Went swimming")
    expect(entry.title).to eq "Wednesday"
  end
  it 'returns the contents of the entry' do
    entry = DiaryEntry.new("Wednesday", "Went swimming")
    expect(entry.contents).to eq "Went swimming"
  end
   it 'counts the number of words in an entry' do
    entry = DiaryEntry.new("Wednesday", "Went swimming")
    expect(entry.count_words).to eq 2
  end
   it 'returns the reading time based on wpm' do
    entry = DiaryEntry.new("Wednesday", "Went swimming")
    expect(entry.reading_time(1)).to eq 2
  end
end