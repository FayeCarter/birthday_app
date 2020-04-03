feature 'Index page loads' do
  scenario 'with greeting' do
    visit '/'
    expect(page).to have_content "Hello there!"
  end

  scenario 'with ability to enter name' do
    visit '/'
    expect(page).to have_field 'name'
  end

  scenario 'with ability to enter birthday' do
    visit '/'
    expect(page).to have_field 'day'
  end

  scenario 'with ability to enter birth month' do
    visit '/'
    expect(page).to have_field 'month'
  end
end