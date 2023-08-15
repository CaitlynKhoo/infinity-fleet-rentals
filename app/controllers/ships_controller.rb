class ShipsController < ApplicationController

  def index
    @ships = Ship.all
  end

end
