require 'diary'
require 'diary_entry'

RSpec.describe 'integration tests' do
  it 'counts all words in all entries' do
    diary = Diary.new
    diary.add(DiaryEntry.new("title1", "my_contents 1"))
    diary.add(DiaryEntry.new("title2", "my_contents 2"))
    expect(diary.count_words).to eq 4
  end
end