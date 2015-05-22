require_relative '../config/local_config'

module PageHelper
  class << self

    def click_if_displayed locator
      click locator if is_displayed? locator
    end

    def find locator
      $driver.find_element(locator)
    end

    def is_displayed? locator
      rescue_exception { Selenium::WebDriver::Wait.new(timeout: 10).until { find(locator).displayed? } }
    end

    def is_selected? locator
      find(locator).selected?
    end

    def type(locator, text)
      find(locator).send_keys(text)
    end

    def click locator
      find(locator).click
    end

    def select(locator, option)
      list = Selenium::WebDriver::Support::Select.new find locator
      list.select_by(:text, option)
    end

    def submit locator
      find(locator).submit
    end

    def rescue_exception
      yield
    rescue Selenium::WebDriver::Error::NoSuchElementError
      false
    end


  end
end


