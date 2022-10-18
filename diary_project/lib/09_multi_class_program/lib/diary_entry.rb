class DiaryEntry
  def initialize(title, contents)
    @title = title
    @contents = contents
  end

  def title
  # returns the title
    return @title
  end

  def contents
  # returns the contents
    return @contents
  end

  def count_words
    @contents.split(" ").length
  end

  def reading_time(wpm)
    return (count_words/wpm.to_f).ceil
  end
end