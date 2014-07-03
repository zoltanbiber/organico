class ShopsController < ApplicationController

  def index
    @shops = Shop.all
  end

  # def show
  #   @shop = Shop.find(params[:id])
  # end

  private
  def allowed_params #whitelist
    params.require(:shop).permit(:name, :address_city, :address_street, :email, :opening_hours,
    :phone, :website, :address_secondary, :address_building, :address_postcode, :address_state,
    :address_country, :address_latitude, :address_longitude ) #for each attribute in the model
  end 

end
