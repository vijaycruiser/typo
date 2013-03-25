Feature: Add Categories
  As a blog administrator
  In order to group the articles
  I want to be able to add categories

  Background:
    Given the blog is set up
    And I am logged into the admin panel

  Scenario: Successfully edit categories
    Given I am on the edit category page
    When I fill in "Name" with "Complex"
    And I fill in "Description" with "Complex articles"
    And I press "Save"
    Then I should be on the edit category page
    Then I should see "Complex"
    Then I should see "Complex articles"
