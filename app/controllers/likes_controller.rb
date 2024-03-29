class LikesController < ApplicationController
  before_action :set_like, only: [:show, :edit, :update, :destroy]

  # GET /likes
  # GET /likes.json
  def index
    @likes = Like.all
    if params[:shop_id].present?
      like = Like.find_by(user_id: current_user.id, shop_id: params[:shop_id])
      render json: {status: 'success', like: like, counts: Like.where(shop_id: params[:shop_id]).count, liked: like.present?}
    end
  end

  # GET /likes/1
  # GET /likes/1.json
  def show
  end

  # GET /likes/new
  def new
    @like = Like.new
  end

  # GET /likes/1/edit
  def edit
  end

  # POST /likes
  # POST /likes.json
  def create
    @like = Like.new(user_id: current_user.id, shop_id: params[:shop_id])

    respond_to do |format|
      if @like.save
        format.html { redirect_to :back, notice: 'Like was successfully created.' }
        format.json { render json: {status: 'success', like: @like, counts: Like.where(shop_id: @like.shop_id).count, liked: true} }
      else
        format.html { render :new }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /likes/1
  # PATCH/PUT /likes/1.json
  def update
    respond_to do |format|
      if @like.update(like_params)
        format.html { redirect_to @like, notice: 'Like was successfully updated.' }
        format.json { render :show, status: :ok, location: @like }
      else
        format.html { render :edit }
        format.json { render json: @like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /likes/1
  # DELETE /likes/1.json
  def destroy
    @like = Like.find_by(user_id: current_user.id, shop_id: params[:shop_id])
    @like.destroy
    respond_to do |format|
      format.html { redirect_to likes_url, notice: 'Like was successfully destroyed.' }
      format.json { render json: {status: 'success', like: @like, counts: Like.where(shop_id: params[:shop_id]).count}, liked: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_like

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def like_params
      params.require(:like).permit(:user_id, :shop_id)
    end
end
