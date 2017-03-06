class ConfirmationController < ApplicationController
  def status
    @current_user = User.find_by(id: session[:user_id])
  end

  def ranking
  end

  def kakuninn
    @this = params[:this_shop]
  end

end
