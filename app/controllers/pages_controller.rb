class PagesController < ApplicationController
  def home
    @ships = Ship.all
  end
end
