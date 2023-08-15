class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @hello = "hello"
    @ship = Ship.find(params[:id])
  end
end
