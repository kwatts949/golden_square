def get_most_common_letter(text)
  counter = Hash.new(0)
  p counter
  text.chars.each do |char|
  p char
    counter[char] += 1
  p counter
  end
  p counter.to_a.sort_by { |k, v| v }[0][0]
end

# Intended output:
# 
 get_most_common_letter("the roof, the roof, the roof is on fire!")
# => "o"