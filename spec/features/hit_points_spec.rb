feature "View hit points" do

  scenario "See Player 1 hit points" do
    sign_in_and_play
    expect(page).to have_content "rob: 60HP"
  end

  scenario "See Player 2 hit points" do
    sign_in_and_play
    expect(page).to have_content "rory: 60HP"
  end

end
