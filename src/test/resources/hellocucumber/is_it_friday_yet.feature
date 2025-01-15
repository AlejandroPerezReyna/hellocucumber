@is_it_friday_yet
Feature: Is it Friday yet?
  Everybody wants to know when it's Friday


  #Scenario Outline: Sunday isn't Friday
   # Given today is "<day>"
   # When I ask whether it's Friday yet
   # Then I should be told "<answer>"

    #Examples:
     # | day            | answer |
     # | Friday         | TGIF   |
     # | Sunday         | Nope   |
     # | anything else! | Nope   |

  @today_is_friday
  Scenario: Sunday isn't Friday
    Given today is 'Friday'
    When I ask whether it's Friday yet
    Then I should be told 'TGIF'

  @today_is_sunday
  Scenario: Sunday isn't Friday
    Given today is "Sunday"
    When I ask whether it's Friday yet
    Then I should be told "Nope"

  @today_is_anything_else
  Scenario: Sunday isn't Friday
    Given today is "anything else!"
    When I ask whether it's Friday yet
    Then I should be told "Nope"
