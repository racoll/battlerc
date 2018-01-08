feature "View hit points" do

  scenario "See Player 2 hit points" do
    visit("/")
    fill_in :player_1_name, with: "rob"
    fill_in :player_2_name, with: "rory"
    click_button "Submit"
    expect(page).to have_content "rory: 60HP"
  end
  
end
