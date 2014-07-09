class ShopsController < ApplicationController

  def index
    @shops = Shop.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @shop = Shop.find(params[:id])
  end

  private
  def allowed_params #whitelist
    params.require(:shop).permit(:name, :address_city, :address_street, :email, :opening_hours,
    :phone, :website, :address_secondary, :address_building, :address_postcode, :address_state,
    :address_country, :latitude, :longitude ) #for each attribute in the model
  end 

end
