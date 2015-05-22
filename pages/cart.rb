require_relative 'page_helper'

class Cart

  CHECKOUT_BUTTON =  { css: '#checkout-button' }

  class << self
    def checkout
      PageHelper.click CHECKOUT_BUTTON
    end
  end
end