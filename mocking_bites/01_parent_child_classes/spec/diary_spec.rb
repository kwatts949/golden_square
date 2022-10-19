require 'diary'

RSpec.describe 'Diary' do
  it 'adds and lists a single diary entry' do
    diary = Diary.new
    fake_diary_entry = double :fake_diary_entry # a double creates a fake class instance
    diary.add(fake_diary_entry)
    expect(diary.entries).to eq [fake_diary_entry]
  end

  it 'adds and lists diary entries' do
    diary = Diary.new
    fake_diary_entry1 = double :fake_diary_entry
    fake_diary_entry2 = double :fake_diary_entry
    fake_diary_entry3 = double :fake_diary_entry
    diary.add(fake_diary_entry1)
    diary.add(fake_diary_entry2)
    diary.add(fake_diary_entry3)
    expect(diary.entries).to eq [fake_diary_entry1, fake_diary_entry2, fake_diary_entry3]
  end

  it 'counts words in the diary entries' do
    diary = Diary.new
    fake_diary_entry1 = double :fake_diary_entry, count_words: 2 # double here has a count_words method on it that returns 2
    diary.add(fake_diary_entry1)
    expect(diary.count_words).to eq 2
  end
end