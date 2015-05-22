require_relative 'page_helper'

class Details

  ITEM_QUANTITY_INPUT =
      { css: '.sellableItems.gutter-bottom-double tbody tr:nth-of-type(3) td:nth-of-type(2) input[type="tel"]' }

  ADD_TO_CART_BUTTON =
      { css: '.sellableItems.gutter-bottom-double tbody tr:nth-of-type(3) td:nth-of-type(2) a.hide-on-tablet' }

  class << self
    def add_to_cart(qty, product_id)
      case product_id
        when '280010'
          PageHelper.find(ITEM_QUANTITY_INPUT).send_keys(qty)
          PageHelper.click ADD_TO_CART_BUTTON
      end
    end
  end
end