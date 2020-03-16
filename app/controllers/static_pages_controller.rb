class StaticPagesController < ApplicationController

  def root
    @data = Location.first
    render :root
  end

end
