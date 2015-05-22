require_relative 'page_helper'
require_relative '../lib/data_helper'

class Login
  include PageHelper
  include DataHelper

  USER_INPUT_FIELD     = { id: 'j_username' }
  PASSWORD_INPUT_FIELD = { id: 'j_password' }
  LOGIN_FORM           = { id: 'submit' }

  class << self

    def login_as_existing_user
      DataHelper.user_data(ENV['test_user_login']).each do |user|
        PageHelper.type(USER_INPUT_FIELD, user[:username])
        PageHelper.type(PASSWORD_INPUT_FIELD, user[:password])
      end
      PageHelper.submit(LOGIN_FORM)
    end

  end

end
