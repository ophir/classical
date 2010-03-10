Feature: Performance entry
  In order to store information about a performance
  As a user
  I want to create a performance record
  
  Scenario: create performance
    Given composer "Bach"
    And I am on the performance entry page
    Then I should see "Performance Entry"
    When I select "Bach" from "Composer"
    And I press "Add"
    Then I should see "Performance Add Successful"
    And I should see "Bach"

# Feature: Performance entry
# 
#   In order to enter the time worked
#   As a user
#   I want to log a time block entry
# 
#   Scenario: Simple Time Logging
#     Given task "Task 1"
#     And I am on the time entry page
#     Then I should see "Time Entry"
#     When I select "Task 1" from "Task"
#     And I press "Log Time"
#     Then I should see "Time Successfully Logged"
#     And I should see "Task 1"
