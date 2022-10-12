require "counter"

RSpec.describe Counter do
  it "takes a number and adds it to the count" do
    counter = Counter.new
    counter.add(20)
    result = counter.report()
    expect(result).to eq "Counted to 20 so far"
  end
end