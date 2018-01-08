feature "Attacking" do

  scenario "attack player 2" do
    sign_in_and_play
    click_button "Attack"
    expect(page).to have_content "rob attacked rory"
  end

  scenario "reduce Player 2 HP by 10" do
    sign_in_and_play
    click_button "Attack"
    click_button "OK"
    expect(page).not_to have_content "rory: 60HP"
    expect(page).to have_content "rory: 50HP"
  end


end
