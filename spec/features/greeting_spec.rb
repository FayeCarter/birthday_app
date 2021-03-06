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
    pretend_now_is(2020,"apr",3,20) do
      fill_details
      expect(page).to have_content "Your bithday is in 4 days, Faye!"
    end
  end
  
  scenario 'with happy birthday greeting if birthday' do
    pretend_now_is(2020,"apr",6,20) do
      fill_details
      expect(page).to have_content "Your bithday is tomorrow, Faye!"
    end
  end
end