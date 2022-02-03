class PropertiesController < ApplicationController
  def index
    @properties = Property.all
  end

  def show
    @property = Property.find(params[:id])
  end

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def delete
    find_property
    @property.destroy
    redirect_to property_path
  end

  private

  def find_property
    @property = Property.find(params[:id])
  end

  def list_params
    params.require(:property).permit(:id, :property_name)
  end
end
