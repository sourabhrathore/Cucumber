Given ('Setting Up the environment')do
  puts "Setting Up the environment"
end

Given ('I launch facebook URL') do
  $browser.navigate_to(FB_URL)
end

When ('I enter correct email and password and login') do
  @facebook = Facebook.new()
  @facebook.login(FB_USERNAME, FB_PASSWORD)
end

Then ('I should see home page') do
  expect(@facebook.home_page_displayed?).to eq(true)
end

When  (/^* click on forgot password$/) do
  $driver.find_element(:link, 'Forgotten password?').click()
end
