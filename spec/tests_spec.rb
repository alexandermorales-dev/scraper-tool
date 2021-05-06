require './lib/methods.rb'

describe Link do
  describe '#listings' do
    html = Link.new('https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?regionslug=prov-panama&q=f_price.-false|number.50')
    it "returns a nodeset containing set of listings" do
      expect(html.listings('.article')).to be_a(Nokogiri::XML::NodeSet)
    end
  end
end