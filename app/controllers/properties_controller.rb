class PropertiesController < ApplicationController
  before_action :find_property, only: [:destroy, :update, :show, :edit]

  def index
    if params[:search].present?
      @properties = Property.search_by_location(params[:search])
    else
      @properties = Property.all
    end
  end

  def show
    @markers = Property.where(id: @property.id).geocoded.map do |property|
      {
        lat: property.latitude,
        lng: property.longitude
      }
    end
  end

  def new
    @property = Property.new
  end

  def edit
  end

  def update
    @property.update(property_params)
    @property.save

    redirect_to property_path(@property)
  end

  def create
    @property = Property.new(property_params)
    @property.user = current_user
    if @property.save!
      redirect_to property_path(@property)
    else
      render :new
    end
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  private

  def find_property
    @property = Property.find(params[:id])
  end

  def property_params
    params.require(:property).permit(:id, :property_name, :property_price, :property_address, :availability_from, :availability_until)
  end
end
