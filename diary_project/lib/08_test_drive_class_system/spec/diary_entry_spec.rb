require 'diary_entry'

RSpec.describe 'diary_entry method' do
  it "returns the nothing if the entry is blank" do
    diary_entry = DiaryEntry.new("", "")
    expect(diary_entry.title).to eq ""
  end
  it "returns the title of the entry" do
    diary_entry = DiaryEntry.new("Wednesday", "Went to shops")
    expect(diary_entry.title).to eq "Wednesday"
  end
  it "returns the contents of the entry" do
    diary_entry = DiaryEntry.new("Wednesday", "Went to shops")
    expect(diary_entry.contents).to eq "Went to shops"
  end
  it "returns the number of words in an entry as an integer" do
    diary_entry = DiaryEntry.new("Wednesday", "Went to shops")
    expect(diary_entry.count_words).to eq 3
  end
  it "returns 0 words if blank" do
    diary_entry = DiaryEntry.new("Wednesday", "")
    expect(diary_entry.count_words).to eq 0
  end
  it "returns an estimate of the reading time when given wpm" do
    diary_entry = DiaryEntry.new("Thursday", "Went to shops and ate some cakes, crisps and cookies")
    expect(diary_entry.reading_time(2)).to eq 5
  end
  it "returns a string with a chunk of contents that the reader could read in the time given" do
    diary_entry = DiaryEntry.new("Thursday", "Went to shops and ate some cakes, crisps and cookies")
    expect(diary_entry.reading_chunk(2, 3)).to eq "Went to shops and ate some"
  end
  it "returns a string with the next chunk of contents that the reader could read in the time given" do
    diary_entry = DiaryEntry.new("Thursday", "Went to shops and ate some cakes, crisps and cookies")
    diary_entry.reading_chunk(2, 3)
    expect(diary_entry.reading_chunk(2, 3)).to eq "cakes, crisps and cookies"
  end
  it "returns to start if user has read all" do
    diary_entry = DiaryEntry.new("Thursday", "Went to shops and ate some cakes, crisps and cookies")
    diary_entry.reading_chunk(2, 3)
     diary_entry.reading_chunk(2, 3)
    expect(diary_entry.reading_chunk(2, 3)).to eq "Went to shops and ate some"
  end
end