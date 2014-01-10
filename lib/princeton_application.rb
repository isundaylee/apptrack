require 'lib/form_based_application'

class PrincetonApplication < FormBasedApplication

  def initialize(username, password)
    super(username, password)

    @filename = 'Princeton'
    @url = 'https://admissionapp.princeton.edu/uac/login.jsp?j_ecode=3'
    @form_name = 'logonForm'
    @username_field = 'j_username'
    @password_field = 'j_password'
  end

  def retrieve_page
    page1 = super
  end

end