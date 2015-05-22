require_relative 'page_helper'

class CheckoutModal

  MODAL_CHECKOUT_BUTTON = { css: '#addToCartModal div.modal-content div.footer a.blue-button' }

  class << self
    def continue
      PageHelper.click_if_displayed MODAL_CHECKOUT_BUTTON
    end
  end
end