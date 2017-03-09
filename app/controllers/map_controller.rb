class MapController < ApplicationController
  def index
    @shops = Shop.all
    @comments = Comment.all
    @likes = Like.all
    @c_likes = CLike.all
    @wents = Went.all
  end
end
