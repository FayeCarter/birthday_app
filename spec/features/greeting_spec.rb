require './lib/calculator'
require_relative 'web_helpers'

feature 'Greeting page loads' do
  
  let(:calculator) { Calculator.new("4/7")}
  
  scenario 'with greeting' do
    fill_details
    expect(page).to have_content "Faye"
  end

  scenario 'with happy birthday greeting if birthday' do
    fill_details
    expect(page).to have_content "Happy Birthday, Faye!"
  end
end