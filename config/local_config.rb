require 'selenium-webdriver'

Selenium::WebDriver::Chrome::Service.executable_path = File.join(Dir.pwd, '/vendor/chromedriver')
$driver = Selenium::WebDriver.for :firefox