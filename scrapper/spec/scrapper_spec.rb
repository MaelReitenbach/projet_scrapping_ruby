require_relative '../lib/scrap_crypto.rb'

describe "Scrap de nom associe aux prix de crypto" do

	it "check si le nombre de crypto scrap est le bon" do
		expect(gratte(100)).to eq(100)
	end	
end

