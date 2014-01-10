require 'lib/form_based_application'

class DartmouthApplication < FormBasedApplication

  def initialize(username, password)
    super(username, password)

    @filename = 'Dartmouth'
    @url = 'https://dplace.dartmouth.edu/banner/groucho/twbkwbis.P_GenMenu?name=bmenu.P_MainMnu&amp;msg=WELCOME+Welcome,+Jiahao+Li,+to+the+Dartmouth+Student+Information+System!Jan+10,+201401%3A22+pm'
    @form_name = 'loginform'
    @username_field = 'sid'
    @password_field = 'PIN'
  end

  def retrieve_page
    page1 = super

    page1.link_with(text: 'Undergraduate Applicant Menu').click.link_with(text: 'Admission Application Status').click
  end

end