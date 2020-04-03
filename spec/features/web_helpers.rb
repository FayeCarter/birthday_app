def fill_details
  visit '/'
  fill_in :name, with: 'Faye'
  fill_in :day, with: '7'
  select('April', from: 'month')
  click_button 'Go!'
end