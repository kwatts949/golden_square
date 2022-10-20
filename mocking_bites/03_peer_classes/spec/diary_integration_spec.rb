require 'diary'
require 'secret_diary'

RSpec.describe "integration tests" do
  context "when locked" do
    it 'raises an error message' do
      diary = Diary.new("my_contents")
      secret_diary = SecretDiary.new(diary)
      expect {secret_diary.read}.to raise_error "Go away!"
    end

    it 'raises an error message' do
      diary = Diary.new("my_contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      secret_diary.lock
      expect {secret_diary.read}.to raise_error "Go away!"
    end
  end
  context "when unlocked" do
    it 'reads contents of diary' do
      diary = Diary.new("my_contents")
      secret_diary = SecretDiary.new(diary)
      secret_diary.unlock
      expect(secret_diary.read).to eq "my_contents"
    end
  end
end