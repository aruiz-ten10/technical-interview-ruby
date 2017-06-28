Given (/^I navigate to the wikipedia homepage$/) do
  @browser.goto "http://www.wikipedia.org"
end

When (/^I type (.*?) into the search input field$/) do |input|
  search_field = @browser.text_field(:xpath => "//div[contains(@class, 'search-container')]//input[@id='searchInput']")
  search_field.set(input)
end

When (/^I select English as the search language for the input field$/) do
  lang_select = @browser.select_list(:xpath => "//div[contains(@class, 'search-container')]//select[@id='searchLanguage']")
  lang_select.click
  lang_option = @browser.option(:xpath => "//div[contains(@class, 'search-container')]//select[@id='searchLanguage']/option[@value='en']")
  lang_option.click
end

When (/^I click the search button$/) do
  search_button = @browser.button(:xpath => "//form[@id='search-form']//button[@type='submit']")
  search_button.click
end

Then (/^the heading of the search results page should match (.*)$/) do |input|
  heading_sz = @browser.h1(:xpath => "//div[@id='content']//h1[@id='firstHeading']").text
  expect(input.match(/^#{heading_sz}$/i)).not_to be_nil
end

Then (/^the search results page should be available in (.*)$/) do |language|
  @lang_link = @browser.link(:xpath => "//div[@id='p-lang']//a[contains(@class, 'interlanguage-link-target') and text()='#{language}']")
  expect(@lang_link).not_to be nil
end

When (/^I click on the link to view the article in (.*)$/) do |language|
  @weblang_link.click
end