Feature: Merge Articles
  As a blog administrator
  In order to merge two similar articles
  I want to be able to merge articles

the non admin user is set up

  Background:
    Given the blog is set up

  Scenario: A non-admin cannot merge two articles
    Given the non admin user is set up 
    And I am on the edit article page
    Then I should not see "Merge Articles"

  Scenario: When articles are merged, the merged article should contain the text of both previous articles
    Given I am at the admin panel
    And Successfully written articles
    And I am editting article page "1"
    Then I should see "Merge Articles"
    When I fill in "merge_with" with "4"
    And I press "Merge"
    Then I should be on the admin content page
    When I go to the home page
    Then I should see "article 1"
    When I follow "article 1"
    Then I should see "article1content"
