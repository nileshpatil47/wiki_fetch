require "wiki_fetch/version"
require 'mechanize'
require "wiki_fetch/url_formatter"

class Wiki
	def initialize()
		@@agent = Mechanize.new
  end

	def search_title(name, options = {})
		url = UrlFormatter.create_url({:name => name, :method => "search_title", :options => options})
		fetch_url(url)
	end
	
	def search_suggestions(name, options = {})
		url = UrlFormatter.create_url({:name => name, :method => "search_suggestions", :options => options})
		fetch_url(url)
	end

	def fetch_url(url)
		begin
			page_data = @@agent.get url
			return page_data.body
		rescue => e
			e.message
		end
	end
end
