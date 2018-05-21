require 'selenium-webdriver'

#chrome instatiation
driver = Selenium::WebDriver.for :chrome

#loading the assertselenium URL
driver.navivgate.to "http://www.assertselenium.com"

#click on the follow link repsent on the assert selenium homepage
FollowButton = driver.find_element(:link, "Follow")
FollowButton.click

#Typing the UserName
LoginButton = driver.find_element(:id, 'user_login')
LoginButton.send_keys "sampleUser77dff27"

#typing the email-id
EmailId=driver.find_element(:id, "user_email")
EmailId.send_keys "sampleUser7f7df27@gmail.com"

#clicking on the submit button
SubmitButton = driver.find_element(:id, "wp-submit")
SubmitButton.click

#Asserting whether the registration success message is displayed
SuccessMessage = driver.find_element(:css, "p.message")
"Registration complete. Please check your e-mail.".eql? SuccessMessage.text
puts "Successfully completed the user registration and validated the Success Message"

#quitting the browswer
driver.quit