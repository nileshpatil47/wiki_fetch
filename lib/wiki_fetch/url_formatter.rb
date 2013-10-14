module UrlFormatter
	def self.create_url(options)
		format = options[:format] || "json"
		case options[:method]
		when "search_title"
			query = options[:options][:action] || "query"
			extracts = options[:options][:prop] || "extracts"
			exsentences = (options[:options][:exsentences] || 10).to_i
			return "#{$wiki_base_url}?format=#{format}&action=#{query}&prop=#{extracts}&exsentences=#{exsentences}&titles=#{options[:options][:name]}"  
		when "search_suggestions"
			query = options[:options][:action] || "opensearch"
			limit = (options[:options][:limit] || 10).to_i
			namespace = (options[:options][:namespace] || 0).to_i
		  return "#{$wiki_base_url}?action=#{query}&search=#{options[:options][:name]}&limit=#{limit}&namespace=#{namespace}&format=#{format}"
		else
		  puts "You gave me -- I have no idea what to do with that."
		end
	end
en