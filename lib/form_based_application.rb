require 'lib/application'

class FormBasedApplication < Application

  def retrieve_page
    @agent.get(@url) do |login_page|
      page = login_page.form_with(name: @form_name) do |login_form|
        login_form[@username_field] = @username
        login_form[@password_field] = @password
      end.submit

      return page
    end
  end

  def filename
    @filename
  end

end