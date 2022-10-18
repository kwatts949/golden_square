class Diary
  def initialize
    @entries = []
  end

  def add(entry) # entry is an instance of DiaryEntry
    @entries << entry
  end

  def entries
    # Returns a list of DiaryEntries
    return @entries
  end

  def count_words
    # Returns the number of words in all entries
    return @entries.sum(&:count_words)
  end
end