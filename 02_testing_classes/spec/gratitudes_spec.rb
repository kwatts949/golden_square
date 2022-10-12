require "gratitudes"

RSpec.describe Gratitudes do
  it "initially returns an empty array" do
    grats = Gratitudes.new
    grats.add("Tea")
    expect(grats.format).to eq "Be grateful for: Tea"
  end
end