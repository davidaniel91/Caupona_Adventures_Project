require 'rails_helper.rb'

feature "Reviewer adds an restaurant" do 
    scenario "Reviewer successfuly navigates to the new restaurant page from the listing restaurants page" do
    visit restaurants_path
    #expect(page).to have_content("Listing restaurants")
    click_link "Add a New Restaurant"
    expect(page).to have_content("New Restaurant")
    expect(page).to have_field("Name")
    expect(page).to have_field("Location")
    expect(page).to have_field("Description")
    end
    
    scenario "Reviewer successfully creates a new restaurant" do
        visit new_restaurant_path
        expect(page).to have_content("New Restaurant")
        fill_in "Name", with: "New Capybara Restaurant"
        fill_in "Location", with: "Capybara"
        fill_in "Description", with: "Serves Giant Rat and whiskey straight without any mixers or anything to chase it with. Is owned and operated by github."
        click_button "Create Restaurant"
        expect(page).to have_content("New Capybara Restaurant")
        expect(page).to have_content("Capybara")
        expect(page).to have_content("Serves Giant Rat and whiskey straight without any mixers or anything to chase it with. Is owned and operated by github.")
    end
end