require_relative 'page_helper'
require_relative '../lib/data_helper'

class Billing

  CARD_TYPE_SELECT        = { id: 'creditCardType' }
  CARD_NUMBER_INPUT       = { id: 'creditCardNumber' }
  EXPIRATION_MONTH_SELECT = { id: 'expirationMonthString' }
  EXPIRATION_YEAR_SELECT  = { id: 'expirationYear' }
  SECURITY_CODE_INPUT     = { id: 'cvvCodeNewCard' }
  BILLING_FORM            = { css: 'form#billingInformation' }
  BILLING_ADDRESS_RADIO   = { css: '#addressRadios > p:nth-child(1) > label > input[type="radio"]' }

  class << self
    def payment_method_credit
      DataHelper.user_data(ENV['payment_info']).each do |input|
        PageHelper.select(CARD_TYPE_SELECT, input[:card_type])
        PageHelper.find(CARD_NUMBER_INPUT).send_keys(input[:card_number])
        PageHelper.select(EXPIRATION_MONTH_SELECT, input[:exp_month])
        PageHelper.select(EXPIRATION_YEAR_SELECT, input[:exp_year])
        PageHelper.find(SECURITY_CODE_INPUT).send_keys(input[:security_code])
      end
    end

    def address_same_as_shipping
      PageHelper.click BILLING_ADDRESS_RADIO
    end

  end
end

