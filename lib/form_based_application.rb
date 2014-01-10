require 'lib/application'

class FormBasedApplication < Application

  def retrieve_page
    @agent.get(@url) do |login_page|
      page = login_page.form_with(name: @form_name) do |login_form|
        login_form[@username_field] = @username
        login_form[@password_field] = @password
      end.submit

      return @page = page
    end
  end

  def retrieve_raw_html
    retrieve_page.body
  end

  def retrieve_url
    return @page.uri.to_s
  end

  def filename
    @filename
  end

end