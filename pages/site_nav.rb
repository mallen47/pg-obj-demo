require_relative 'page_helper'

class SiteNav

  STORAGE_NAV_MENU_OPTION = { css: 'ul.nav-two > li:nth-child(2) > h3 > a' }
  class << self
    def select_storage
      PageHelper.click STORAGE_NAV_MENU_OPTION
    end
  end
end