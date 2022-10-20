class StringRepeater
  def initialize(terminal)
    @terminal = terminal
  end

  def run
    @terminal.puts "Hello. I will repeat a string many times."
    str = @terminal.gets.chomp
    @terminal.puts "Please enter a number of repeats"
    n = @terminal.gets
    @terminal.puts "Here is your result:"
    @terminal.puts str * n.to_i
  end
end

# Hello. I will repeat a string many times.
# Please enter a string
# TWIX
# Please enter a number of repeats
# 10
# Here is your result:
# TWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIXTWIX