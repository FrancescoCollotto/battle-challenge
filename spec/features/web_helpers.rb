def sign_in_and_play 
  visit('/')
  fill_in :name_1, with: "Chris"
  fill_in :name_2, with: "Francesco"
  click_on "Submit"
end
