class InteractiveCalculator
  def initialize(terminal)
    @terminal = terminal
  end

  def subtract
    @terminal.puts "Please enter a number"
    num1 = @terminal.gets
    @terminal.puts "Please enter another number"
    num2 = @terminal.gets
    @terminal.puts "Here is your result: #{num1} - #{num2} = #{num1 - num2}"
  end
end

#interactive_calculator = InteractiveCalculator.new(Kernel)
#interactive_calculator.run

# Hello. I will subtract two numbers.
# Please enter a number
# 4
# Please enter another number
# 3
# Here is your result:
# 4 - 3 = 1