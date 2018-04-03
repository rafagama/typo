Feature: Create categories
  As a blog administrator
  In order to gift my thoughts to the world
  I want to be able to add categories to my blog

Background:
  Given the blog is set up
  And I am logged into the admin panel
    
Scenario: Successfully create category
  Given I am on the new category page
  When I fill in "category_name" with "Foo"
  And I fill in "category_keywords" with "Bar"
  And I fill in "category_permalink" with "link"
  And I fill in "category_description" with "desc"
  And I press "Save"
  Then  I should see "Category was successfully saved."
  Then I follow "Foo"
  When I fill in "category_name" with "Foo1"
  And I fill in "category_keywords" with "Bar1"
  And I fill in "category_permalink" with "link1"
  And I fill in "category_description" with "desc1"
  And I press "Save"
  Then  I should see "Category was successfully saved."