class MapController < ApplicationController
  def index
    @shops = Shop.all
    @comments = Comment.all
    @likes = Like.all
    @c_likes = CLike.all
    @wents = Went.all
    @user = User.all
    @current_user = @user.find_by(id: session[:user_id])
  end
end
