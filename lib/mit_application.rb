require 'lib/form_based_application'

class MITApplication < FormBasedApplication

  def initialize(username, password)
    super(username, password)

    @filename = 'MIT'
    @url = 'https://my.mit.edu'
    @form_name = 'loginForm'
    @username_field = 'j_username'
    @password_field = 'j_password'
  end

end