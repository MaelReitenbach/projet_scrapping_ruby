require 'pry'
require 'dotenv'
require 'nokogiri'
require 'open-uri'

page = Nokogiri::HTML(open("http://annuaire-des-mairies.com/val-d-oise.html"))
a = page.xpath('//tr/td/p/a')

malist = {}
u = "http://annuaire-des-mairies.com"

a.each do |x|
	k = x.text
	v = x.attribute("href")
    v2 = v.to_s

	url = u + v2[1..-1]
 #   puts url
	page_with_email = Nokogiri::HTML(open(url.to_s))
	email = page_with_email.xpath('/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]').text
	
	malist[k] = email
end

print  malist
puts ''
