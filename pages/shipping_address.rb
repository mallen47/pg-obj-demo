require_relative 'page_helper'
require_relative '../lib/data_helper'

class ShippingAddress

  SHIPPING_ADDRESS_FORM = { css: 'div#singleTabContent form#customerAddress' }
  FIRST_NAME_INPUT      = { css: 'div#singleTabContent input#address\.firstName' }
  LAST_NAME_INPUT       = { css: 'div#singleTabContent input#address\.lastName' }
  ADDRESS_INPUT         = { css: 'div#singleTabContent input#address\.addressLine1' }
  CITY_INPUT            = { css: 'div#singleTabContent input#address\.city' }
  STATE_INPUT           = { css: 'div#singleTabContent select#states' }
  ZIP_CODE_INPUT        = { css: 'div#singleTabContent input#address\.postalCode' }

  class << self
    def enter_shipping_address
      DataHelper.user_data(ENV['shipping_address']).each do |input|
        PageHelper.find(FIRST_NAME_INPUT).send_keys(input[:fname])
        PageHelper.find(LAST_NAME_INPUT).send_keys(input[:lname])
        PageHelper.find(ADDRESS_INPUT).send_keys(input[:address])
        PageHelper.find(CITY_INPUT).send_keys(input[:city])
        PageHelper.select(STATE_INPUT, input[:state])
        PageHelper.find(ZIP_CODE_INPUT).send_keys(input[:zip])
      end
      PageHelper.submit SHIPPING_ADDRESS_FORM
    end
  end
end