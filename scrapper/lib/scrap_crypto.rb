require 'pry'
require 'dotenv'
require 'nokogiri'
require 'open-uri'

def gratte (n)
page = Nokogiri::HTML(open("https://coinmarketcap.com/"))


hash = {}

i = 1
final = []
  	n.times do 

		nom_crypto = page.css('tbody tr[' + i.to_s + '] a').text
		doss = nom_crypto.split("$")
		hash[doss[0]] = doss[1]
		final << hash
			hash = {} 
			i = i + 1
  	end




print final
puts ""
return final.length
end
