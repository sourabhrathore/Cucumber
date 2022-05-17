class Facebook
  include Action

  def initialize; end

  def is_sign_up_button_displayed
    wait_for_element(css: FACEBOOK['sign_up_button'])
    displayed?(css: FACEBOOK['sign_up_button'])
  end

  def login(email, password)
    wait_for_element(css: FACEBOOK['email_box'])
    find(css: FACEBOOK['email_box']).send_keys(email)
    wait_for_element(css: FACEBOOK['password_box'])
    find(css: FACEBOOK['password_box']).click
    find(css: FACEBOOK['password_box']).send_keys(password)
    find(css: FACEBOOK['sign_up_button']).click
  end

  def home_page_displayed?
    wait_for_element(css: FACEBOOK['home_page'])
    find(css: FACEBOOK['home_page']).displayed?
  end
end
