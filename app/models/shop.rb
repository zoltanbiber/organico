class Shop < ActiveRecord::Base
  has_many :shop_tags
  has_many :tags, :through => :shop_tags

  validates :name, :presence => true
  validates :address_city, :presence => true
  validates :address_street, :presence => true
  validates :address_postcode, :presence => true

  geocoded_by :geocoder_input

  after_validation :geocode

  def geocoder_input
    "#{address_city}, #{address_street}, #{address_postcode}"
  end
end

