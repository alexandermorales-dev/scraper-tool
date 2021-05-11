  require_relative '../lib/methods'

  describe Link do
    describe "#titles" do
      listings_class = '_8s3ctt'
      title_class = '_bzh5lkq'
      price_class = '_olc9rf0'
      url = 'https://www.airbnb.com/s/Bajo-Boquete/homes?place_id=ChIJWYPOC9_spY8RdI653z0wmMA&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation'
      new_test = Link.new(url, listings_class, title_class, price_class)
      it "returns an array of titles" do
        expect(new_test.titles(title_class)).to be_a(Array)
      end

      it "returns not empty values if finds content with the css selector passed in" do
        expect(new_test.titles(title_class)).not_to be_empty
      end
    end

    describe "#prices" do
      listings_class = '_8s3ctt'
      title_class = '_bzh5lkq'
      price_class = '_olc9rf0'
      url = 'https://www.airbnb.com/s/Bajo-Boquete/homes?place_id=ChIJWYPOC9_spY8RdI653z0wmMA&refinement_paths%5B%5D=%2Fhomes&search_type=section_navigation'
      new_test = Link.new(url, listings_class, title_class, price_class)
      it "returns an array of prices" do
        expect(new_test.price(price_class)).to be_a(Array)
      end

      it "returns not empty values if finds content with the css selector passed in" do
        expect(new_test.price(price_class)).not_to be_empty
      end

      it "returns true when it finds content with the css selector passed in" do
        expect(new_test.price(price_class)).to be_truthy
      end
    end

  end
