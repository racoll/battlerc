feature 'Enter names' do
  scenario 'submitting names' do
    visit('/')
    fill_in :player_1_name, with: 'rob'
    fill_in :player_2_name, with: 'rory'
    click_button 'Submit'
    expect(page).to have_content 'rob vs. rory'
  end
end
