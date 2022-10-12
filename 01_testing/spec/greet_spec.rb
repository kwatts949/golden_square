require 'greet'

RSpec.describe "greet method" do
  it "returns Hello and user name" do
    result = greet("Kay")
    expect(result).to eq "Hello, Kay!"
  end
end