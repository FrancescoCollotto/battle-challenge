feature "testing infrastructure" do
  scenario "it return Testing infrastructure working!" do
    visit('/')
    expect(page).to have_content "Testing infrastructure working!"
  end
end