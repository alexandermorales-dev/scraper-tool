require './lib/methods'

describe Link do
  describe '#listings' do
    html = Link.new('https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?regionslug=prov-panama&q=f_price.-false|number.50')
    it 'returns a nodeset containing set of listings' do
      expect(html.listings('.article')).to be_a(Nokogiri::XML::NodeSet)
    end
  end

  describe '#titles' do
    html = Link.new('https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?regionslug=prov-panama&q=f_price.-false|number.50')
    html.listings('.article')
    html.titles('.ann-box-title')
    it 'returns a nodeset containing set of listing titles' do
      expect(html.listings('.article')).to be_a(Nokogiri::XML::NodeSet)
    end
  end

  describe '#prices' do
    html = Link.new('https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?regionslug=prov-panama&q=f_price.-false|number.50')
    html.listings('.article')
    html.prices('.ann-price-2nd')
    it 'returns a nodeset containing set of listing prices' do
      expect(html.listings('.article')).to be_a(Nokogiri::XML::NodeSet)
    end
  end

  describe '#all' do
    html = Link.new('https://www.encuentra24.com/panama-es/searchresult/bienes-raices-venta-de-propiedades?regionslug=prov-panama&q=f_price.-false|number.50')
    html.listings('.article')
    html.titles('.ann-box-title')
    html.prices('.ann-price-2nd')
    html.all
    it 'returns an array containing titles and prices in a string' do
      expect(html.arr).to be_a(Array)
    end
  end
end
