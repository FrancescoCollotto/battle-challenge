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
    expect(page).to have_content "60HP"
  end
end