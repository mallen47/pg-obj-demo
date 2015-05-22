require_relative 'page_helper'
require_relative '../lib/data_helper'

class ShippingMethod

  PHONE_NUMBER_INPUT   = { css: 'input#rows0\.customerPhone\.phone\.phoneNumber' }
  SHIPPING_METHOD_FORM = { css: 'form#shippingMethods' }

  class << self

    def submit_contact_phone
      DataHelper.user_data(ENV['shipping_method_phone']).each do |input|
        PageHelper.find(PHONE_NUMBER_INPUT).send_keys(input[:phone])
      end
      PageHelper.submit SHIPPING_METHOD_FORM
    end
  end
end