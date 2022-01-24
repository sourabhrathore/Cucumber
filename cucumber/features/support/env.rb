require 'selenium-webdriver'
require 'byebug'

Before do
    @browser = Browser.new('chrome')
    @wait = Selenium::WebDriver::Wait.new(timeout: 15)
end

After do
    @browser.quit_browser
end