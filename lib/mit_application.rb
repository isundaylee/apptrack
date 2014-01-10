require 'lib/application'

class MITApplication < Application

  def retrieve_page
    @agent.get('https://my.mit.edu') do |login_page|
      page = login_page.form_with(name: 'loginForm') do |login_form|
        login_form.j_username = @username
        login_form.j_password = @password
      end.submit

      return page
    end
  end

  def filename
    'MIT'
  end

end