class Contacts
  def initialize(diary)
    @diary = diary
  end

  def get_numbers
    @diary.all.flat_map do |entry|
      get_numbers_from_entry(entry)
    end
  end

  def get_numbers_from_entry(entry)
    return entry.contents.scan(/07[0-9]{9}/)
  end
end