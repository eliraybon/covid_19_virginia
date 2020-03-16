class StaticPagesController < ApplicationController

  def root
    state = params[:state] || "virginia"
    state = state.split('_').map(&:capitalize).join(' ') 
    @data = Location.find_by(name: state)
    # @data = Location.first
    render :root
  end

end
