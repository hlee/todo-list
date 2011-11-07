Feature: Manage items
  In order to [goal]
  [stakeholder]
  wants [behaviour]
  
  Scenario: Register new item
    Given I am on the new item page
    When I fill in "Content" with "content 1"
    And I fill in "Bg status" with "1"
    And I fill in "Priority" with "1"
    And I press "Create"
    Then I should see "content 1"
    And I should see "1"
    And I should see "1"

  Scenario: Delete item
    Given the following items:
      |content|bg_status|priority|
      |content 1|1|1|
      |content 2|2|2|
      |content 3|3|3|
      |content 4|4|4|
    When I delete the 3rd item
    Then I should see the following items:
      |Content|Bg status|Priority|
      |content 1|1|1|
      |content 2|2|2|
      |content 4|4|4|
