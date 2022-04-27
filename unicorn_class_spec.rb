require 'rspec'
require './unicorn'

describe Unicorn do
  it 'is an instance of unicorn' do
    unicorn = Unicorn.new('Bob', 'Black')
    expect(unicorn).to be_a Unicorn
  end

  it 'has a name' do
    unicorn = Unicorn.new('Bob', 'Black')
    expect(unicorn.name).to eq 'Bob'
  end

  it 'has a color' do
    unicorn = Unicorn.new('Bob', 'Black')
    expect(unicorn.color).to eq 'Black'
  end
end
