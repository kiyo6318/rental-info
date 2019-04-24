class PropertiesController < ApplicationController
  before_action :set_propety,only: %i(edit show destroy update)
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      redirect_to properties_path
    end
  end

  def show
  end

  def edit
    1.times { @property.stations.build }
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      redirect_to edit_property_path
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  def property_params
    params.require(:property).permit(:name,:price,:address,:age,:remarks,stations_attributes:[:id,:line,:station_name,:walktime])
  end

  def set_propety
    @property = Property.find(params[:id])
  end
end
