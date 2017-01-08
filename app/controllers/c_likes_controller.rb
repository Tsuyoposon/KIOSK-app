class CLikesController < ApplicationController
  before_action :set_c_like, only: [:show, :edit, :update, :destroy]

  # GET /c_likes
  # GET /c_likes.json
  def index
    @c_likes = CLike.all
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
    @c_like = CLike.new(c_like_params)

    respond_to do |format|
      if @c_like.save
        format.html { redirect_to @c_like, notice: 'C like was successfully created.' }
        format.json { render :show, status: :created, location: @c_like }
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
    @c_like.destroy
    respond_to do |format|
      format.html { redirect_to c_likes_url, notice: 'C like was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_c_like
      @c_like = CLike.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def c_like_params
      params.require(:c_like).permit(:user_id, :comment_id)
    end
end
