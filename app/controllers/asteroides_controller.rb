class AsteroidesController < ApplicationController
  before_action :set_asteroide, only: [:show, :edit, :update, :destroy]

  # GET /asteroides
  # GET /asteroides.json
  def index
    @asteroides = Asteroide.all
  end

  # GET /asteroides/1
  # GET /asteroides/1.json
  def show
  end

  # GET /asteroides/new
  def new
    @asteroide = Asteroide.new
  end

  # GET /asteroides/1/edit
  def edit
  end

  # POST /asteroides
  # POST /asteroides.json
  def create
    @asteroide = Asteroide.new(asteroide_params)

    respond_to do |format|
      if @asteroide.save
        format.html { redirect_to @asteroide, notice: 'Asteroide was successfully created.' }
        format.json { render :show, status: :created, location: @asteroide }
      else
        format.html { render :new }
        format.json { render json: @asteroide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /asteroides/1
  # PATCH/PUT /asteroides/1.json
  def update
    respond_to do |format|
      if @asteroide.update(asteroide_params)
        format.html { redirect_to @asteroide, notice: 'Asteroide was successfully updated.' }
        format.json { render :show, status: :ok, location: @asteroide }
      else
        format.html { render :edit }
        format.json { render json: @asteroide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /asteroides/1
  # DELETE /asteroides/1.json
  def destroy
    @asteroide.destroy
    respond_to do |format|
      format.html { redirect_to asteroides_url, notice: 'Asteroide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_asteroide
      @asteroide = Asteroide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def asteroide_params
      params.require(:asteroide).permit(:nombre, :Advertencia)
    end
end
