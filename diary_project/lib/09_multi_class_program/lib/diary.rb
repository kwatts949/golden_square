class Diary
  def initialize
    @entries = []
  end

  def add(entry)
    @entries << entry
  end

  def all
    return @entries
  end

  def count_words
    return @entries.map(&:count_words).sum
  end

  def reading_time(wpm)
    return (count_words/wpm.to_f).ceil
  end

  def find_best_entry_for_reading_time(wpm, mins)
    readable = @entries.filter do |entry|
      entry.reading_time(wpm) <= mins
    end
    readable.max_by(&:count_words)
  end
  
end
