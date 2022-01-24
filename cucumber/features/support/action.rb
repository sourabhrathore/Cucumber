module Action

  def wait_for_element(element)
    wait.until{driver.find_element(element).displayed?}
  end

  def find(element)
    wait_for_element(element)
    driver.find_element(element)
  end

  def find_all(element)
    wait_for_element(element)
    driver.find_elements(element)
  end

  def displayed?(element)
    driver.find_element(element).displayed?
  end

end