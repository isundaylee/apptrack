require 'lib/application'
require 'watir-webdriver'

class BrowserBasedApplication < Application

  def initialize(username, password)
    super(username, password)

    @browser = Watir::Browser.new :chrome
  end

  def filename
    @filename
  end

end