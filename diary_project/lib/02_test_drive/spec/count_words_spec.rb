require "count_words"

RSpec.describe "count_words method" do
  it "returns the number of words in an empty string" do
    result = count_words("")
    expect(result).to eq 0
  end

   it "returns the number of words in a string" do
    result = count_words("My dog likes chicken")
    expect(result).to eq 4
  end

   it "returns the number of words in a string" do
    result = count_words("This string is quite long, but not long enough")
    expect(result).to eq 9
  end
end