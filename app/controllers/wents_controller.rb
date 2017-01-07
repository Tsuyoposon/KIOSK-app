class WentsController < ApplicationController
	def create
    	@went = Went.create(user_id: current_user.id, shop_id: params[:shop_id])
    	@likes = Went.where(shop_id: params[:shop_id])
    	@shops = Shop.all
  	end

  	def destroy
    	went = Went.find_by(user_id: current_user.id, shop_id: params[:shop_id])
    	went.destroy
    	@wents = Went.where(shop_id: params[:shop_id])
    	@shops = Shop.all
  	end
end
