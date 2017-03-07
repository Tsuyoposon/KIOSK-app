class MapController < ApplicationController
  def index
    @shops = Shop.all
  end
end
