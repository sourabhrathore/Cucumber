class Facebook
  include Action
  attr_reader :driver, :wait

  def initialize(driver, wait)
    @driver = driver
    @wait = wait
  end

  def is_sign_up_button_displayed
    wait_for_element(css: FACEBOOK['sign_up_button'])
    displayed?(css: FACEBOOK['sign_up_button'])
  end

end
