class ResturentsController < ApplicationController
  before_action :set_resturent, only: [:show, :edit, :update, :destroy]

  # GET /resturents
  # GET /resturents.json
  def index
    @resturents = Resturent.all
  end

  # GET /resturents/1
  # GET /resturents/1.json
  def show
    @reviews = Review.where(resturent_id: @resturent.id)
  end

  # GET /resturents/new
  def new
    @resturent = Resturent.new
  end

  # GET /resturents/1/edit
  def edit
  end

  # POST /resturents
  # POST /resturents.json
  def create
    @resturent = Resturent.new(resturent_params)

    respond_to do |format|
      if @resturent.save
        format.html { redirect_to @resturent, notice: 'Resturent was successfully created.' }
        format.json { render :show, status: :created, location: @resturent }
      else
        format.html { render :new }
        format.json { render json: @resturent.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resturents/1
  # PATCH/PUT /resturents/1.json
  def update
    respond_to do |format|
      if @resturent.update(resturent_params)
        format.html { redirect_to @resturent, notice: 'Resturent was successfully updated.' }
        format.json { render :show, status: :ok, location: @resturent }
      else
        format.html { render :edit }
        format.json { render json: @resturent.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resturents/1
  # DELETE /resturents/1.json
  def destroy
    @resturent.destroy
    respond_to do |format|
      format.html { redirect_to resturents_url, notice: 'Resturent was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resturent
      @resturent = Resturent.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resturent_params
      params.require(:resturent).permit(:name, :address, :phone, :website, :image)
    end
end
