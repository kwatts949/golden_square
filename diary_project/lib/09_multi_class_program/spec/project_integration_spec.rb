require 'diary'
require 'diary_entry'
require 'to_do_list'
require 'to_do'
require 'contacts'

RSpec.describe 'integration tests' do
  it 'returns a list of diary entries' do
    diary = Diary.new
    diary_1 = DiaryEntry.new("Monday", "Went to the shops")
    diary_2 = DiaryEntry.new("Tuesday", "Went to the park")
    diary.add(diary_1)
    diary.add(diary_2)
    expect(diary.all).to eq [diary_1, diary_2]
  end
  it 'counts the number of words in all diary entries' do
    diary = Diary.new
    diary_1 = DiaryEntry.new("Monday", "Went to the shops")
    diary_2 = DiaryEntry.new("Tuesday", "Went to the park")
    diary.add(diary_1)
    diary.add(diary_2)
    expect(diary.count_words).to eq 8
  end
  it 'returns a suitable entry for the reading time' do
    diary = Diary.new
    diary_entry1 = DiaryEntry.new("Monday", "Went to the dentist")
    diary.add(diary_entry1)
    result = diary.find_best_entry_for_reading_time(4 ,1)
    expect(result).to eq diary_entry1
  end
end
  context 'to do list and to do integration' do
    it 'creates a list of tasks' do
      task = ToDoList.new
      task_1 = ToDo.new("Clean house")
      task_2 = ToDo.new("Wash car")
      task.add(task_1)
      task.add(task_2)
      expect(task.tasks).to eq [task_1, task_2]
    end
  end

  context 'phone number extraction' do
    it 'gets phone numbers from diary entries' do
      diary = Diary.new
      phone_nums = Contacts.new(diary)
      diary.add(DiaryEntry.new("Monday", "Amy 07353933191"))
      diary.add(DiaryEntry.new("Tuesday", "Visited gran"))
      expect(phone_nums.get_numbers).to eq ["07353933191"]
  end
end
