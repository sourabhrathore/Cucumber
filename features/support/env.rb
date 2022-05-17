require 'selenium-webdriver'
require 'byebug'

Before do |scenario|
  $browser = Browser.new('chrome')
  $driver = $browser.driver
  $wait = Selenium::WebDriver::Wait.new(timeout: 15)
end

After do |scenario|
  $browser.quit_browser
end

$screenshot_store_path = 'screenshots'
AfterStep do |scenario|
  if scenario.failed?
    file = Tempfile.new(%w[screenshot_ png], $screenshot_store_path)
    screenshort = file.path
    file.close(true)
    $browser.driver.save_screenshot(screenshort)
    attach screenshort, 'image/png'
  end
end
