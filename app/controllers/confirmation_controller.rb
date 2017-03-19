class ConfirmationController < ApplicationController

  def status
    @current_user = User.find_by(id: session[:user_id])
  end

  def ranking
    @ranking_users = User.order("moving DESC")
  end

  def kakuninn
    @this = Shop.find_by(id: params[:this_shop])
    @current_user = User.find_by(id: session[:user_id])
    @wents = Went.all

    if @wents.find_by(user_id: session[:user_id], shop_id: params[:this_shop]).nil? then
      went = Went.new(:user_id => session[:user_id], :shop_id => params[:this_shop])
      went.save
    end
  end

  def pointgame

  end

  # 引数に値を入れて距離を出す
  def self.save_distance(lat1, lng1, user_id)
    y1 = lat1 * Math::PI / 180
    x1 = lng1 * Math::PI / 180
    y2 = 39.702176 * Math::PI / 180
    x2 = 141.13615400 * Math::PI / 180
    earth_r = 6378140

    deg = Math::sin(y1) * Math::sin(y2) + Math::cos(y1) * Math::cos(y2) * Math::cos(x2 - x1)
    distance = earth_r * (Math::atan(-deg / Math::sqrt(-deg * deg + 1)) + Math::PI / 2) / 1000
    # 有効桁数を0.0にする
    distance.round(1)
    @user = User.find_by(id: user_id)
    @user.moving += distance.round(1)
    @user.moving.round(1)
    @user.save

    return distance.round(1)
  end

  # ランダムでポイント付与
  def self.random_point
    rate = rand(100) + 1
    if rate == 1 then
      point = 5000
    elsif (2 <= rate) && (rate <= 20) then
      point = 500
    elsif (21 <= rate) && (rate <=50) then
      point = 100
    else
      point = 50
    end
    return point
  end
end
