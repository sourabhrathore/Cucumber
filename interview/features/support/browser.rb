class Browser
  attr_reader :driver

  def initialize(driver)
    @driver =  driver
  end

  def navigate_to(url)
    driver.navigate.to(url)
  end

  def current_url?
    sleep 3
    driver.current_url
  end

  def navigate_back
    driver.navigate.back
  end
end