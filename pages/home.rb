require_relative '../config/local_config'
require_relative 'page_helper'

class Home

  include PageHelper

  SIGN_IN_LINK  = { css: '#topControls > a[href*="/profile/login.htm"]' }
  WELCOME_MODAL = { css: '[id="monetate_lightbox_contentMap"] > [href="#close"]' }

  def initialize
    $driver.get ENV['base_url']
    $driver.manage.window.maximize
    PageHelper.click_if_displayed WELCOME_MODAL
    $driver.navigate.refresh
  end


  class << self

    def goto
      $driver.get ENV['base_url']
    end

    def sign_in
      $driver.find_element(SIGN_IN_LINK).click
    end

    def quit
      $driver.quit
    end

  end

end