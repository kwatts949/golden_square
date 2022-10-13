{{PROBLEM}} Method Design Recipe
1. Describe the Problem
As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature
# `reading_time(string)` returns number of words/200 to give total minutes

reading_time = calculate_reading_time(string)
# * string is a string of word
# * reading_time is an integer


# The method prints time in minutes

3. Create Examples as Tests

reading_time("")
# => 0

reading_time("one")
# => 1

reading_time(TWO_HUNDRED_WORDS)
# => 2

reading_time(FIVE_HUNDRED_WORDS)
# => 5

4. Implement the Behaviour
After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.

