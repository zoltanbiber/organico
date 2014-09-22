require 'rails_helper'

RSpec.describe Shop, :type => :model do
  it { should have_many(:shop_tags) }
  it { should have_many(:tags).through(:shop_tags) }
  it { should have_many(:products) }

  describe "Geocoding" do
    before do
      # with mocha, stub out geocode method
      Shop.any_instance.stubs(:geocode)
      @shop = Shop.new(
        :name => "Planet Organic", 
        :address_city => "London",
        :address_street => "10 Devonshire Square",
        :address_postcode => "EC2M 4AE",
      )
    end

    it "should provide useful input to the geocoder" do
      result = @shop.geocoder_input
      expect(result).to eq("London, 10 Devonshire Square, EC2M 4AE")
    end

  end
end



