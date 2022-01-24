class Conformation
  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def conformation_details?
    $wait.until{driver.first(css: '.table').displayed?}
    driver.first(css: '.table').text
  end

end