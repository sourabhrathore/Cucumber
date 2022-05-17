class Browser
  attr_reader :driver

  def initialize(browser_name)
    @driver = start_browser(browser_name)
    maximize_window
  end

  def start_browser(name)
    case name
    when 'chrome'
      options = Selenium::WebDriver::Chrome::Options.new
      options.add_argument('--disable-notifications')
      options.add_argument('--disable-extensions')
      options.add_argument('--headless') if ENV['RUN_BROWSER']
      Selenium::WebDriver::Chrome::Service.driver_path = File.absolute_path('./chromedriver')
      Selenium::WebDriver.for(:chrome, capabilities: options)
      end
  end

  def delete_cookies
    driver.manage.delete_all_cookies
  end

  def maximize_window
    driver.manage.window.maximize
  end

  def navigate_to(url)
    driver.navigate.to(url)
  end

  def refresh
    driver.navigate.refresh
  end

  def new_window
    driver.execute_script('window.open()')
  end

  def windows_count?
    driver.window_handles
  end

  def switch_to_window(id)
    driver.switch_to.window(id)
  end

  def switch_to_frame(id)
    driver.switch_to.frame(id)
  end

  def close_window
    driver.close
  end

  def quit_browser
    driver.quit
  end

  def scroll(x, y)
    driver.script("window.scrollBy(#{x},#{y})")
  end

  def scroll_to_element(element)
    driver.script('arguments[0].scrollIntoView(true)', element)
  end
end
