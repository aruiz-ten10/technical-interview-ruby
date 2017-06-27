Feature:
  As a candidate for the role at Ten10
  I want to complete the Technical Tasks
  So that I can potentially land a job

  @ui
  Scenario Outline: Navigate to wikipedia.org and perform search validation
    Given I navigate to the wikipedia homepage
    When I type <search_input> into the search input field
    And I select English as the search language for the input field
    And I click the search button
    Then the heading of the search results page should match <search_input>
    And the search results page should be available in <language>
    When I click on the link to view the article in <language>
    Then the search results page should be available in English
    Examples:
      | search_input | language |
      | paella       | Español  |
      | Paris        | Français |
      | Honda        | 日本語      |
      | Athena       | Ελληνικά |

