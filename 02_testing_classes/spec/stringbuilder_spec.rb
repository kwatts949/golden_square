require "stringbuilder"

RSpec.describe "stringbuilder method" do
  it "returns an empty string" do
  stringbuilder = StringBuilder.new
  expect(stringbuilder.output).to eq ""
end

it "returns a length of 0" do
  stringbuilder = StringBuilder.new
  expect(stringbuilder.size).to eq 0
end

it "has a length of a string" do
  stringbuilder = StringBuilder.new
  stringbuilder.add("four")
  expect(stringbuilder.output).to eq "four"
end

it "returns length of string" do
  stringbuilder = StringBuilder.new
  stringbuilder.add("four")
  expect(stringbuilder.size).to eq 4
end
end

