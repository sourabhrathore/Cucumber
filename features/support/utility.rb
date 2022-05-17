class Utility
  attr_reader :driver

  def initialize(driver)
    @driver = driver
  end

  def wait(element)
    $wait.until { $driver.find_element(element).displayed? }
  end

  def scroll(horizontal:, vertical:)
    driver.exicute_script("window.scrollBy(#{horizontal},#{vertical})")
  end

  def is_visible?(element)
    $wait.until { $driver.find_element(element).displayed? }
  rescue StandardError => exception
    puts exception.message
  end
end
