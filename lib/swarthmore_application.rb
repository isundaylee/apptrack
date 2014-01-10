require 'lib/browser_based_application'

class SwarthmoreApplication < BrowserBasedApplication

  def initialize(username, password)
    super(username, password)

    @filename = 'Swarthmore'
    @url = 'https://apex.swarthmore.edu/prod/apex/f?p=116:LOGIN:13811671993785'
  end

  def retrieve_raw_html
    @browser.goto(@url)

    @browser.text_field(name: 'p_t01').set @username
    @browser.text_field(name: 'p_t02').set @password

    @browser.button(id: 'P101_LOGIN').click

    @browser.html
  end

  def retrieve_url
    @browser.url
    @browser.close
  end

end