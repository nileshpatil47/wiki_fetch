require 'wiki_fetch/global'

module UrlFormatter
	def self.create_url(options)
		format = options[:format] || "json"
		case options[:method]
		when "search_title"
			query = options[:options][:action] || "query"
			prop = options[:options][:prop] || "revisions"
			rvprop = options[:options][:rvprop] || "content" 
			return "#{$wiki_base_url}?format=#{format}&action=#{query}&titles=#{options[:name]}&prop=#{prop}&rvprop=#{rvprop}"  
		when "search_suggestions"
			query = options[:options][:action] || "opensearch"
			limit = (options[:options][:limit] || 10).to_i
			namespace = (options[:options][:namespace] || 0).to_i
		  return "#{$wiki_base_url}?action=#{query}&search=#{options[:name]}&limit=#{limit}&namespace=#{namespace}&format=#{format}"
		else
		  puts "You gave me -- I have no idea what to do with that."
		end
	end
end