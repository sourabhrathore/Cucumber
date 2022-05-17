When('I enter {string} and {string} and login') do |string, string2|
  @facebook = Facebook.new()
  @facebook.login(string, string2)
end