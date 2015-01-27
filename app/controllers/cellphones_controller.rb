class CellphonesController < ApplicationController
  before_action :set_cellphone, only: [:show, :edit, :update, :destroy]

  # GET /cellphones
  # GET /cellphones.json
  def index
    @cellphones = Cellphone.all
  end

  # GET /cellphones/1
  # GET /cellphones/1.json
  def show
  end

  # GET /cellphones/new
  def new
    @cellphone = Cellphone.new
  end

  # GET /cellphones/1/edit
  def edit
  end

  # POST /cellphones
  # POST /cellphones.json
  def create
    @cellphone = Cellphone.new(cellphone_params)

    respond_to do |format|
      if @cellphone.save
        format.html { redirect_to @cellphone, notice: 'Cellphone was successfully created.' }
        format.json { render :show, status: :created, location: @cellphone }
      else
        format.html { render :new }
        format.json { render json: @cellphone.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cellphones/1
  # PATCH/PUT /cellphones/1.json
  def update
    respond_to do |format|
      if @cellphone.update(cellphone_params)
        format.html { redirect_to @cellphone, notice: 'Cellphone was successfully updated.' }
        format.json { render :show, status: :ok, location: @cellphone }
      else
        format.html { render :edit }
        format.json { render json: @cellphone.errors, status: :unprocessable_entity }
      end
    end
  end

  def cell_specifications
    @cellphones = Cellphone.all
    respond_to do |format|
      format.js
    end
  end

  # DELETE /cellphones/1
  # DELETE /cellphones/1.json
  def destroy
    @cellphone.destroy
    respond_to do |format|
      format.html { redirect_to cellphones_url, notice: 'Cellphone was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cellphone
      @cellphone = Cellphone.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cellphone_params
      params.require(:cellphone).permit(:brand, :price, :color, :details,:os)
    end
end
