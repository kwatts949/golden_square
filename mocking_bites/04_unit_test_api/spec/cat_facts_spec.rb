require 'cat_facts'

RSpec.describe 'cat facts' do
  it 'returns a cat fact' do
    fake_requester = double :requester
    allow(fake_requester).to receive(:get).with(URI("https://catfact.ninja/fact")).and_return(
      '{"fact":"A healthy cat has a temperature between 38 and 39 degrees Celcius.","length":66}')
    cat_fact = CatFacts.new(fake_requester)
    expect(cat_fact.provide).to eq "Cat fact: A healthy cat has a temperature between 38 and 39 degrees Celcius."
  end
end