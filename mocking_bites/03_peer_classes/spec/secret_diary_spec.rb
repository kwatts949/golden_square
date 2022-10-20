require 'secret_diary'

RSpec.describe "secret diary" do
  it 'locks the diary' do
    diary = double :diary
    locked = SecretDiary.new(diary)
    expect(locked.lock).to eq true
  end

  it 'unlocks the diary' do
    diary = double :diary
    unlocked = SecretDiary.new(diary)
    expect(unlocked.unlock).to eq false
  end

  it 'reads the diary' do
    diary = double(:diary, read: "my_contents")
    secret_diary= SecretDiary.new(diary)
    secret_diary.unlock
    expect(secret_diary.read).to eq 'my_contents'
  end

  context "when locked" do
    it 'fails' do
      diary = double(:diary)
      secret_diary = SecretDiary.new(diary)
      expect{secret_diary.read}.to raise_error "Go away!"
    end
  end
end