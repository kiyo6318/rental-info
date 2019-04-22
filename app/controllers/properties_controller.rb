class PropertiesController < ApplicationController
  def index
  end

  def property_params
    params.require(:property).permit(:name,:price,:address,:age,:remarks)
  end
end
