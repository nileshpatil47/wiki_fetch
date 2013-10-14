require "wiki_fetch/version"
require 'mechanize'

class Wiki
	def initialize()
		@@agent = Mechanize.new
  end

	def search(name, format = "json" )
		url = "http://en.wikipedia.org/w/api.php?format=#{format}&action=query&prop=extracts&exsentences=10&titles=#{name}"
		begin
			page_data = @@agent.get url
			return page_data.body
		rescue => e
			e.message
		end
	end
end
