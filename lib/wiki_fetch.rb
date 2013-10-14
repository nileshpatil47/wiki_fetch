require "wiki_fetch/version"
require 'mechanize'

class Wiki
	def initialize()
		@@agent = Mechanize.new
  end

	def search_form_title(name, format = "json" )
		url = "http://en.wikipedia.org/w/api.php?format=#{format}&action=query&prop=extracts&exsentences=10&titles=#{name}"
		begin
			page_data = @@agent.get url
			return page_data.body
		rescue => e
			e.message
		end
	end
	
	def suggestions(name)
		url = "http://en.wikipedia.org/w/api.php?action=opensearch&search=#{name}&limit=15&namespace=0&format=json"
		begin
			page_data = @@agent.get url
			return page_data.body
		rescue => e
			e.message
		end
	end
end
