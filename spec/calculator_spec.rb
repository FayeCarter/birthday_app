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
  
  describe '#difference' do
    it 'finds the difference between date and birthday' do
      calculator.date = Date.parse("4/3")
      expect(calculator.difference). to eq 4
    end
  end
end