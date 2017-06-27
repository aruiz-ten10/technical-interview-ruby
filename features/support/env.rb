require 'rspec'
require 'watir'
require 'savon'
require 'pry'
require 'nokogiri'

Before('@ui') do |scenario|
  @browser = Watir::Browser.new :chrome
end

After('@ui') do |scenario|
  @browser.close
end

Before('@soap') do |scenario|
  @soap_client = Savon.client(wsdl: "http://www.webservicex.net/uklocation.asmx?WSDL",
    log: true, # set true to switch on logging
    log_level: :debug,
    pretty_print_xml: true)
end