require "wiki_fetch/version"
require 'mechanize'

module WikiFetch
  def self.ipsum
  	"Hi we will work on wiki data"
  end
  class WikiFetch
  	def initialize()
  		@@agent = Mechanize.new
    end

  	def self.fetch(url)
  		page_data = @@agent.get url
  		page_data.body
  	end
  end
end
