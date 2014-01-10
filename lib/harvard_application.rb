require 'lib/form_based_application'

class HarvardApplication < FormBasedApplication

  def initialize(username, password)
    super(username, password)

    @filename = 'Harvard'
    @url = 'https://admapp.admissions.fas.harvard.edu/ha/submit?module=applicant&amp;usecase=applicantCheckStatus'
    @form_name = 'login'
    @username_field = '_id'
    @password_field = '_pwd'
  end

end