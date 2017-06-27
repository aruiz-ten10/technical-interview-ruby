Feature:
  As a candidate for the role at Ten10
  I want to complete the Technical Tasks
  So that I can potentially land a job

  @soap
  Scenario Outline: Retrive a UK location from a county
    Given I retrieve the UK county <county>
    Then the result should contain <sz>
    Examples:
      | county         | sz        |
      | London         | Greenwich |
      | Merseyside     | Liverpool |
      | Leicestershire | Medbourne |
