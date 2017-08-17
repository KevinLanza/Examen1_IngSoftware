class GalaxiaController < ApplicationController
  before_action :set_galaxium, only: [:show, :edit, :update, :destroy]

  # GET /galaxia
  # GET /galaxia.json
  def index
    @galaxia = Galaxium.all
  end

  # GET /galaxia/1
  # GET /galaxia/1.json
  def show
  end

  # GET /galaxia/new
  def new
    @galaxium = Galaxium.new
  end

  # GET /galaxia/1/edit
  def edit
  end

  # POST /galaxia
  # POST /galaxia.json
  def create
    @galaxium = Galaxium.new(galaxium_params)

    respond_to do |format|
      if @galaxium.save
        format.html { redirect_to @galaxium, notice: 'Galaxium was successfully created.' }
        format.json { render :show, status: :created, location: @galaxium }
      else
        format.html { render :new }
        format.json { render json: @galaxium.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /galaxia/1
  # PATCH/PUT /galaxia/1.json
  def update
    respond_to do |format|
      if @galaxium.update(galaxium_params)
        format.html { redirect_to @galaxium, notice: 'Galaxium was successfully updated.' }
        format.json { render :show, status: :ok, location: @galaxium }
      else
        format.html { render :edit }
        format.json { render json: @galaxium.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /galaxia/1
  # DELETE /galaxia/1.json
  def destroy
    @galaxium.destroy
    respond_to do |format|
      format.html { redirect_to galaxia_url, notice: 'Galaxium was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_galaxium
      @galaxium = Galaxium.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def galaxium_params
      params.require(:galaxium).permit(:nombre, :body)
    end
end
