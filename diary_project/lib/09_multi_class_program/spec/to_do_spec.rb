require 'to_do'

RSpec.describe "to_do method" do
  it 'returns an empty string if no title os given' do
    task = ToDo.new("")
    expect(task.title).to eq ''
  end
end
