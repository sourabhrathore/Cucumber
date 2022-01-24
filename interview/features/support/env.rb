require 'selenium-webdriver'
require 'active_support/all'
require 'cucumber'
require 'require_all'
require 'byebug'
require 'json'

Before do
    Selenium::WebDriver::Chrome.driver_path= File.absolute_path("./chromedriver")
    $chrome = Selenium::WebDriver.for :chrome
    $wait = Selenium::WebDriver::Wait.new(timeout: 60)
end