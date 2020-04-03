feature 'Index page loads' do
  scenario 'with greeting' do
    visit '/'
    expect(page).to have_content "Hello there!"
  end

  scenario 'with ability to enter name' do
    visit '/'
    fill_in :name, with: 'Faye'
    click_button 'Go!'
    expect(page).to have_content "Faye"
  end

  scenario 'with ability to enter birthday' do
    visit '/'
    expect(page).to have_field 'day'
  end
end