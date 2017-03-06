class ConfirmationController < ApplicationController
  def status
    @current_user = User.find_by(id: session[:user_id])
  end

  def ranking
  end
end
