class CLikesController < ApplicationController
  before_action :set_c_like, only: [:show, :edit, :update, :destroy]

  # GET /c_likes
  # GET /c_likes.json
  def index
    @c_likes = CLike.all
    if params[:comment_id].present?
      like = CLike.find_by(user_id: current_user.id, comment_id: params[:comment_id])
      render json: {status: 'success', like: like, counts: CLike.where(comment_id: params[:comment_id]).count, liked: like.present?}
    end
  end

  # GET /c_likes/1
  # GET /c_likes/1.json
  def show
  end

  # GET /c_likes/new
  def new
    @c_like = CLike.new
  end

  # GET /c_likes/1/edit
  def edit
  end

  # POST /c_likes
  # POST /c_likes.json
  def create
  @c_like = CLike.new(user_id: current_user.id, comment_id: params[:comment_id])

  respond_to do |format|
    if @c_like.save
      format.html { redirect_to :back, notice: 'Like was successfully created.' }
      format.json { render json: {status: 'success', like: @c_like, counts: CLike.where(comment_id: @c_like.comment_id).count, liked: true} }
    else
      format.html { render :new }
      format.json { render json: @c_like.errors, status: :unprocessable_entity }
    end
  end
end

  # PATCH/PUT /c_likes/1
  # PATCH/PUT /c_likes/1.json
  def update
    respond_to do |format|
      if @c_like.update(c_like_params)
        format.html { redirect_to @c_like, notice: 'C like was successfully updated.' }
        format.json { render :show, status: :ok, location: @c_like }
      else
        format.html { render :edit }
        format.json { render json: @c_like.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /c_likes/1
  # DELETE /c_likes/1.json
  def destroy
    @c_like = CLike.find_by(user_id: current_user.id, comment_id: params[:comment_id])
    @c_like.destroy
    respond_to do |format|
      format.html { redirect_to :back, notice: 'Like was successfully destroyed.' }
      format.json { render json: {status: 'success', like: @c_like, counts: CLike.where(comment_id: params[:comment_id]).count}, liked: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_like

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_like_params
      params.require(:c_like).permit(:user_id, :comment_id)
    end
end
