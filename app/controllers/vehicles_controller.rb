class VehiclesController < ApplicationController
  before_action :set_vehicle, only: %i[ edit update show destroy ]

  def index
    @vehicles = Vehicle.all
  end

  def show
  end

  def new
    @vehicle = Vehicle.new
  end

  def create
    @vehicle = Vehicle.new(vehicle_params)
    @vehicle.user = current_user
    if @vehicle.save
      redirect_to root_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @vehicle.update(vehicle_params)
  end

  def destroy
    @vehicle.destroy
    redirect_to list_path(@vehicle.booking)
  end

  private

  def vehicle_params
    params.require(:vehicle).permit(:license, :category, :model, :description, :price, :photo)
  end

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
