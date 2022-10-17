require 'diary'
require 'diary_entry'

RSpec.describe "diary integration test" do
  it "adds a diary entry to the diary" do 
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
    diary.add(diary_entry1)
    expect(diary.all).to eq [diary_entry1]
  end
  it "adds 2 diary entries to the diary" do 
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
    diary_entry2 = DiaryEntry.new("Tuesday", "Went to the park")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.all).to eq [diary_entry1, diary_entry2]
  end
  it "counts the number of words in all diary entries" do 
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
    diary_entry2 = DiaryEntry.new("Tuesday", "Went to the park")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.count_words).to eq 8
  end
  describe "reading time behaviour" do
   it "fails when wpm is 0" do 
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
    diary.add(diary_entry1)
    expect{ diary.reading_time(0)}.to raise_error("WPM must be greater than 0")
   end
  end
   it "returns an integer for time in minutes to read all entries." do 
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
    diary_entry2 = DiaryEntry.new("Tuesday", "Went to the park")
    diary.add(diary_entry1)
    diary.add(diary_entry2)
    expect(diary.reading_time(3)).to eq 3
  end
  describe "best reading entry" do
    context "where there is just one entry and it is readable within the time" do
      it "returns that entry" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(4 ,1)
        expect(result). to eq diary_entry1
      end
    end
    context "where there is just one entry and it is unreadable within the time" do
      it "returns nil" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist and ate lunch")
        diary.add(diary_entry1)
        result = diary.find_best_entry_for_reading_time(4 ,1)
        expect(result).to eq nil
      end
    end
    context "where there is more than one entry and one is readable within the time" do
      it "returns readable entry" do
        diary = Diary.new
        diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist and ate lunch")
        diary_entry2 = DiaryEntry.new("Tuesday", "Went to the park")
        diary.add(diary_entry1)
        diary.add(diary_entry2)
        result = diary.find_best_entry_for_reading_time(4 ,1)
        expect(result).to eq diary_entry2
      end
    end
    context "where there is more than one entry and one is readable within the time" do
      it "returns the longest readable entry" do
        diary = Diary.new
        best_entry = DiaryEntry.new("title", "one, two")
        diary.add(best_entry)
        diary.add(DiaryEntry.new("title", "one"))
        diary.add(DiaryEntry.new("title", "one, two, three"))
        result = diary.find_best_entry_for_reading_time(2 ,1)
        expect(result).to eq best_entry
      end
    end
  end
end