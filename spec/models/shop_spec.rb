require 'rails_helper'

RSpec.describe Shop, :type => :model do
  it { should have_many(:shop_tags) }
  it { should have_many(:tags).through(:shop_tags) }
end



