Given ('I launch facebook URL') do
  @browser.navigate_to(FB_URL)
end

Then ('I see sign-up page') do
  @facebook = Facebook.new(@browser.driver, @wait)
  expect(@facebook.is_sign_up_button_displayed).to eq(true)
end

