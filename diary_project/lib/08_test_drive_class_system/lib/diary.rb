class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.map(&:count_words).sum
  end

  def reading_time(wpm) 
    fail "WPM must be greater than 0" unless wpm.positive?
    return (count_words/ wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, minutes)
    readable_entries = @entries.filter do |entry|
      entry.reading_time(wpm) <= minutes
    end
    readable_entries.max_by(&:count_words)
  end
end
