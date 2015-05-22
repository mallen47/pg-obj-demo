require_relative 'page_helper'

class Category

  CRATES_LINK = { css: 'a[href*="/shop/storage/crates?"]' }

  class << self
    def select_product_category type
      case type
        when :crates
          PageHelper.click_if_displayed CRATES_LINK
      end
    end
  end
end