Feature:
  As a candidate for the role at Ten10
  I want to complete the Technical Tasks
  So that I can potentially land a job

  @soap
  Scenario Outline: Retrive a UK location from a county, and confirm town
    Given I retrieve the UK county <county>
    Then the result should contain town <town>
    Examples:
      | county         | town      |
      | London         | Greenwich |
      | Merseyside     | Liverpool |
      | Leicestershire | Medbourne |

  @soap
  Scenario Outline: Retrive a UK location from a county, and confirm postcode
    Given I retrieve the UK county <county>
    Then the result should contain postcode <postcode>
    Examples:
      | county     | postcode |
      | London     | SW6      |
      | Merseyside | L12      |
      | Manchester | M17      |