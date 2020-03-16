class Api::LocationsController < ApplicationController
  skip_before_action :verify_authenticity_token

  def update
    @location = Location.find_by(id: params[:id])

    if @location.update(location_params)
      render json: @location
    else
      render json: @location.errors.full_messages
    end
  end

  private
  def location_params
    params.require(:location).permit(:infected, :dead, :sick, :recovered)
  end

end
