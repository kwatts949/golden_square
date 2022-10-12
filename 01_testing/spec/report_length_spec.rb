require "report_length"

RSpec.describe "report_length method" do
  it "takes a string and returns its length" do
    result = report_length("Hello, Kay!")
    expect(result).to eq "This string was 11 characters long."
  end
end