feature "testing infrastructure" do
  
  scenario "it return Testing infrastructure working!" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario "fill the names and return them on the screen" do
    sign_in_and_play
    expect(page).to have_content "Chris" && "Francesco"
  end

  scenario "See player 2 hitpoints" do
    sign_in_and_play
    expect(page).to have_content "Francesco Hitpoints: 60HP"
  end

  scenario "attack player 2" do
    sign_in_and_play
    click_on "attack"
    expect(page).to have_content "Chris attacked Francesco"
  end

  scenario "Player 2's hp is reduced by 10 after an attack" do
    sign_in_and_play
    click_on "attack"
    expect(page).to have_content "Francesco Hitpoints: 50HP"
  end
end