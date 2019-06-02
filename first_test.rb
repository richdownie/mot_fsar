require 'selenium-webdriver'
require 'webdrivers'
require 'pry'

caps = Selenium::WebDriver::Remote::Capabilities.chrome(chromeOptions: { args: [ "--headless" ]})

@browser = Selenium::WebDriver.for :firefox
@browser.get('https://fullstackautomationwithruby.com/elements')
@browser.find_element(id: 'fsar-input').send_keys('MoT')
@browser.find_element(id: 'fsar-button').click
@browser.find_element(id: 'fsar-modal').displayed?
@browser.close
