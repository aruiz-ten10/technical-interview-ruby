Given (/^I retrieve the UK county (.*)$/) do |county|
  @response = @soap_client.call(:get_uk_location_by_county, message: {"County" => "#{county}"})
end

Then (/^the result should contain town (.*)$/) do |town|
  xml_doc  = Nokogiri::XML(@response.body[:get_uk_location_by_county_response][:get_uk_location_by_county_result])
  town_res = xml_doc.xpath("//Town[text() = '#{town}']")
  expect(town_res.size).to be > 0
end

Then (/^the result should contain postcode (.*)$/) do |town|
  xml_doc  = Nokogiri::XML(@response.body[:get_uk_location_by_county_response][:get_uk_location_by_county_result])
  town_res = xml_doc.xpath("//PostCode[text() = '#{town}']")
  expect(town_res.size).to be > 0
end
