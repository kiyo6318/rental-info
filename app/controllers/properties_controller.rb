class PropertiesController < ApplicationController
  before_action :set_propety,only:[:show,:edit,:update,:destroy]
  def index
    @properties = Property.all
  end

  def new
    @property = Property.new
    2.times { @property.stations.build }
  end

  def create
    if Property.create(property_params)
      redirect_to properties_path
    else
      render "new"
    end
  end

  def show
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      render "edit"
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
