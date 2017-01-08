class WentsController < ApplicationController
  before_action :set_went, only: [:show, :edit, :update, :destroy]

  # GET /wents
  # GET /wents.json
  def index
    @wents = Went.all
    if params[:shop_id].present?
      went = Went.find_by(user_id: current_user.id, shop_id: params[:shop_id])
      render json: {status: 'success', went: went, counts: Went.where(shop_id: params[:shop_id]).count, wented: went.present?}
    end
  end

  # GET /wents/1
  # GET /wents/1.json
  def show
  end

  # GET /wents/new
  def new
    @went = Went.new
  end

  # GET /wents/1/edit
  def edit
  end

  # POST /wents
  # POST /wents.json
  def create
    @went = Went.new(user_id: current_user.id, shop_id: params[:shop_id])

    respond_to do |format|
      if @went.save
        format.html { redirect_to :back, notice: 'Went was successfully created.' }
        format.json { render json: {status: 'success', went: @went, counts: Went.where(shop_id: @went.shop_id).count, wented: true} }
      else
        format.html { render :new }
        format.json { render json: @went.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wents/1
  # PATCH/PUT /wents/1.json
  def update
    respond_to do |format|
      if @went.update(went_params)
        format.html { redirect_to @went, notice: 'Went was successfully updated.' }
        format.json { render :show, status: :ok, location: @went }
      else
        format.html { render :edit }
        format.json { render json: @went.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wents/1
  # DELETE /wents/1.json
  def destroy
    @went = Went.find_by(user_id: current_user.id, shop_id: params[:shop_id])
    @went.destroy
    respond_to do |format|
      format.html { redirect_to wents_url, notice: 'Went was successfully destroyed.' }
      format.json { render json: {status: 'success', went: @went, counts: Went.where(shop_id: params[:shop_id]).count}, wented: false }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_went

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def went_params
      params.require(:went).permit(:user_id, :shop_id)
    end
end
