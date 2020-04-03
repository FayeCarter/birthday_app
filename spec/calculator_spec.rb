require 'calculator'
require 'date'

describe Calculator do

  it 'initialzes with date' do
    p Calculator.new.date
    expect(subject.date).to eq Date.today
  end

end