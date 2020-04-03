require './lib/calculator'
require_relative 'web_helpers'

feature 'Greeting page loads' do
  
  scenario 'with greeting' do
    fill_details
    expect(page).to have_content "Faye"
  end

  scenario 'with happy birthday greeting if birthday' do
    pretend_now_is(2020,"apr",7,20) do
      fill_details
      expect(page).to have_content "Happy Birthday, Faye!"
    end
  end

  scenario 'with happy birthday greeting if birthday' do
    fill_details
    allow(Date).to receive(:today).and_return Date.new(2020,4,3)
    expect(page).to have_content "Your bithday is in 4 days, Faye!"
  end
  
end