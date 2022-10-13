require "make_snippet"

RSpec.describe "make_snippet method" do
  it "returns an empty string when given the same" do
    result = make_snippet("")
    expect(result).to eq ""
  end

   it "returns the first 5 words of a string" do
    result = make_snippet("Three friends sat and chatted")
    expect(result).to eq "Three friends sat and chatted"
  end

   it "returns the first 5 words of a string..." do
    result = make_snippet("The cat sat on the mat")
    expect(result).to eq "The cat sat on the ..."
  end
end