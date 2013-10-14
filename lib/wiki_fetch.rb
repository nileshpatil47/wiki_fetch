require "wiki_fetch/version"
require 'mechanize'

class Wiki
	def initialize()
		@@agent = Mechanize.new
  end

	def fetch(url)
		begin
			page_data = @@agent.get url
			page_data.body
		rescue => e
			e.message
		end
	end
end
