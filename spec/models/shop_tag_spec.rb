require 'rails_helper'

RSpec.describe ShopTag, :type => :model do
  it {should belong_to(:shop)}
  it {should belong_to(:tag)}
end
