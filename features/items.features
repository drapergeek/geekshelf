Feature: 
  In order to easily find resources
  As a user
  I want to bee able to search, upload and view items in the library

  Scenario: Listing books
    Given I am signed in as a user 
    Given there are 5 items in that library
    When I visit the homepage
    Then I should see 5 items

  Scenario: Viewing a single book
    Given I am signed in as a user 
    Given an item exists with a name of "Ruby 1.9"
    When I visit the homepage
    And I click on "Ruby 1.9"
    Then I should see the name "Ruby 1.9" and a description
  
