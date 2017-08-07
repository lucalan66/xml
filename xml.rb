
require 'open-uri'
require 'nokogiri'

doc = Nokogiri::HTML(open("https://www.myvoicecomm.com/portal/api/itemget_form.php?api=InventoryRequest&AccountNumber=13358&AccountPassword=485zmlan01&CategoryID=&Status=1&Format=XML"))

doc.css('item').each do |item|
	p item.css('sku').text
	p item.css('onhand').text.to_i
end

# hash = {}
# xml.xpath('//result/*').each do |row|
#   hash[get_node_name:] = row.content
# end

# p hash

# USAGE: Hash.from_xml(YOUR_XML_STRING)require 'rubygems'

# modified from http://stackoverflow.com/questions/1230741/convert-a-nokogiri-document-to-a-ruby-hash/1231297#123129
