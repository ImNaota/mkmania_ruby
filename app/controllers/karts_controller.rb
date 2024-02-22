class KartsController < ApplicationController
  before_action :set_kart, only: %i[ show edit update destroy ]

  # GET /karts or /karts.json
  def index
    @karts = Kart.all
  end

  # GET /karts/1 or /karts/1.json
  def show
  end

  # GET /karts/new
  def new
    @kart = Kart.new
  end

  # GET /karts/1/edit
  def edit
  end

  # POST /karts or /karts.json
  def create
    @kart = Kart.new(kart_params)

    respond_to do |format|
      if @kart.save
        format.html { redirect_to kart_url(@kart), notice: "Kart was successfully created." }
        format.json { render :show, status: :created, location: @kart }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @kart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /karts/1 or /karts/1.json
  def update
    respond_to do |format|
      if @kart.update(kart_params)
        format.html { redirect_to kart_url(@kart), notice: "Kart was successfully updated." }
        format.json { render :show, status: :ok, location: @kart }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @kart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /karts/1 or /karts/1.json
  def destroy
    @kart.destroy!

    respond_to do |format|
      format.html { redirect_to karts_url, notice: "Kart was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_kart
      @kart = Kart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def kart_params
      params.require(:kart).permit(:size, :color, :speed, :maneuverability, :description, :image)
    end
end
