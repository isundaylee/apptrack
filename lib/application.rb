class Application

  require 'mechanize'

  def initialize(username, password)
    @username = username
    @password = password

    @agent = Mechanize.new do |agent|
      agent.user_agent_alias = 'Mac Safari'
      agent.agent.http.verify_mode = OpenSSL::SSL::VERIFY_NONE
      agent.follow_meta_refresh = true
    end
  end

  def retrieve_html
    @html = retrieve_raw_html
    @doc = Nokogiri::HTML(@html)

    base_node = Nokogiri::XML::Node.new('base', @doc)
    base_node['href'] = retrieve_url
    @doc.at_css('head').children.first.add_previous_sibling(base_node)

    @doc.to_s
  end

  def filename
    raise NotImplementedError
  end

end