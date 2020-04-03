require 'calculator'
require 'date'

describe Calculator do

  let(:calculator) { described_class.new("4/7")}

  it 'initialzes with date' do
    expect(calculator.date).to eq Date.today
  end

  it 'initialzes with birthday input' do
    expect(calculator.birthday).to be_a(Date)
  end
  
end