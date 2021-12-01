feature "testing infrastructure" do
  
  scenario "it return Testing infrastructure working!" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end

  scenario "fill the names and return them on the screen" do
    visit('/')
    fill_in :name_1, with: "Chris"
    fill_in :name_2, with: "Francesco"
    click_on "Submit"
    expect(page).to have_content "Chris" && "Francesco"
  end
end