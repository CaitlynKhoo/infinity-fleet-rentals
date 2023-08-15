class SpaceshipsController < ApplicationController

  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
  end
end
