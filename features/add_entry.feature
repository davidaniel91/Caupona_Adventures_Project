Feature: Add a new restaurant entry
  
  As a reviewer
  So that I can easily contribute to a restaurant
  I want to be able to add a restaurant
  
Scenario: As a reviewer I want to be able to navigate from the homepage to the new restaurant form
  Given I am on the home page
  When I click on the "Restaurants" link
  Then I should be on the "Caupona Adventures" page
  When I click on the "Add a New Restaurant" link
  Then I should be on the "New Restaurant" page
  And I should see the "Name" field
  And I should see the "Location" field
  And I should see the "Description" field
  
  
