require 'diary_entry'

RSpec.describe 'Diary entry' do
  it 'constructs' do
    diary = DiaryEntry.new("title", "my_contents")
    expect(diary.title).to eq 'title'
    expect(diary.contents).to eq 'my_contents'
  end

   it 'counts words in entries' do
    diary = DiaryEntry.new("title", "my_contents")
    expect(diary.count_words).to eq 1
  end
end