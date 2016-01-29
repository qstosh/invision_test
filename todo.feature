Definitions
  'To do item'
  'Project'
    — a set of tasks

Scenario: I can create an account
    Given I am an unregistered user
     When I input any url containing the following:
          'todolist.herokuapp.com' | 'localhost:8080/todolist'
          into the address bar
     Then I am redirected to 'Log in / Create new account page'
      And I fill email address input
      And I fill password input
      And I fill the 'project name' input
      And I submit form by clicking on 'Create account' button
     Then I am redirected to 'Project page'

Scenario: I can log in
    Given I am a registered user
     When I input any url containing one of the following
          'todolist.herokuapp.com' | 'localhost:8080/todolist'
          into the address bar
      And I am not logged in
     Then I am redirected to 'Log in / Create new account page'
      And I click on the 'Log in' tab
      And I fill email address input
      And I fill password input
     Then I am redirected to 'Project page'
      And I see the last project I had selected last time before I logged out

Scenario: I can add new 'To do item'
  Given I am a registered user
    And I am logged in
   When I click on 'Add new item' button
  Then the button expands into 'Item edit mode'
    And I fill 'Title' input
    And I fill 'Description' input
    And I click 'Add' button
   Then I can see the item at the bottom of the 'To do list'

Scenario: I can log out
    Given I am a registered user
     When I hover over 'User icon'
      And I am logged in
     Then I see a dropdown menu
      And I click on 'Log out' button
     Then I am redirected to 'Log in / Create new account page'

Scenario: I can create a new project
