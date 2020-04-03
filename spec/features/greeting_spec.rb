feature 'Greeting page loads' do
  scenario 'with greeting' do
    visit '/'
    fill_in :name, with: 'Faye'
    click_button 'Go!'
    expect(page).to have_content "Faye"
  end

end