require_relative 'page_helper'

class Product

  AUTHENTIC_DAIRY_CRATE_LINK = { css: 'a[href*="/shop/storage/crates?productId=10000531"]' }

  class << self
    def select_product product
      case product
        when :authentic_dairy_crate
          PageHelper.click AUTHENTIC_DAIRY_CRATE_LINK
      end

    end
  end
end