require 'open-uri'
require 'openssl'
require 'nokogiri'
require 'anemone'
# reqiure 'fileutils'
OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE


Anemone.crawl("https://movies.yahoo.co.jp/ranking/",:depth_limit => 0) do |doc| 
	doc.on_every_page do |page|
		# page.doc.xpath("//div[contains(@class,'box')]/h3[contains(@class,'text.large.color-sub')]").each do |title|

		
		# page.doc.xpath("//h3[contains(@class,'text-large color-sub')]").each do |title|	
		page.doc.xpath("//div[contains(@class,'box__cell pl1em')]").each do |title|		
		
		puts title.text
		end
	end
end
puts "-----------------------------------------------------------"
