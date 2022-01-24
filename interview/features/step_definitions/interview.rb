Given('I open the browser') do
    @browser = Browser.new($chrome)
end

When("I am on {string} website") do |url|
    @browser.navigate_to(url)
end

Then("I verify that {string} is visible") do |home_page_message|
    @home_page = SimpleTravelAgency.new(@browser.driver)
    expect(@home_page.message?).to include(home_page_message)
end

When("I click on 'destination of the week! The Beach!' link") do
    @home_page.click_destination_of_the_week
end

Then("I verify that link has open in new tab and the string called {string} is included in url") do |page|
    expect(@browser.current_url?).to include(page)
end

When('I navigate back to home page') do
    @browser.navigate_back
end

And("I select departure city as {string} and {string} as destination city") do |departure, destination|
    @home_page.select_departure(departure)
    @home_page.select_destination(destination)
    @home_page.click_find_flight
end

And('I select most cheap flight') do
    @purchase = Flights.new(@browser.driver)
    @purchase.select_flight
end

Then("I verify that i redirected to {string} page") do |page|
    expect(@browser.current_url?).to include(page)
end

And("I verify that {string} field is visible in the purchase page") do |page|
    expect(@purchase.fields?.split("\n")[5]).to include(page)
end

When('I click on purchase flight button') do
    @purchase.click_purchase_flight
end

Then("I verify i redirected to purchase {string} page") do |page|
    expect(@browser.current_url?).to include(page)
end

And('I save the conformatio details') do
    details = Conformation.new(@browser.driver).conformation_details?
end