class SimpleTravelAgency
  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def message?
    $wait.until{driver.first(css: '.container').displayed?}
    driver.all(css: '.container').second.text
  end

  def click_destination_of_the_week
    $wait.until{driver.first(xpath: "//*[contains(text(),'destination of the week! The Beach!')]").displayed?}
    driver.first(xpath: "//*[contains(text(),'destination of the week! The Beach!')]").click
  end

  def select_departure(city)
    $wait.until{driver.first(css: '.form-inline').displayed?}
    driver.all(css: '.form-inline').first.click
    $wait.until{driver.first(xpath: "//*[contains(text(),'#{city}')]").displayed?}
    driver.first(xpath: "//*[contains(text(),'#{city}')]").click
  end

  def select_destination(city)
    $wait.until{driver.first(css: '.form-inline').displayed?}
    driver.all(css: '.form-inline').second.click
    $wait.until{driver.first(xpath: "//*[contains(text(),'#{city}')]").displayed?}
    driver.first(xpath: "//*[contains(text(),'#{city}')]").click
  end

  def click_find_flight
    $wait.until{driver.first(css: '[value="Find Flights"]').displayed?}
    driver.first(css: '[value="Find Flights"]').click
  end

end