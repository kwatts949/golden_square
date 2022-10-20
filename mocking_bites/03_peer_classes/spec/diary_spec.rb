require 'diary'

RSpec.describe "diary" do
  it 'returns an empty list of diary entries' do
    diary = Diary.new('')
    expect(diary.read).to eq ''
  end

  it 'returns the contents of the diary entry' do
    diary = Diary.new('my_contents')
    expect(diary.read).to eq 'my_contents'
  end
end