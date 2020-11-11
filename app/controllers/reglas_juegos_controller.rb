class ReglasJuegosController < ApplicationController
  before_action :set_reglas_juego, only: [:show, :edit, :update, :destroy]

  # GET /reglas_juegos
  # GET /reglas_juegos.json
  def index
    @reglas_juegos = ReglasJuego.all
  end

  # GET /reglas_juegos/1
  # GET /reglas_juegos/1.json
  def show
  end

  # GET /reglas_juegos/new
  def new
    @reglas_juego = ReglasJuego.new
  end

  # GET /reglas_juegos/1/edit
  def edit
  end

  # POST /reglas_juegos
  # POST /reglas_juegos.json
  def create
    @reglas_juego = ReglasJuego.new(reglas_juego_params)
    
    # @reglas_juego.file.attach(params[:reglas_juego][:file])
    # @reglas_juego.save!
    respond_to do |format|
      if @reglas_juego.save
        format.html { redirect_to @reglas_juego, notice: 'Reglas juego was successfully created.' }
        format.json { render :show, status: :created, location: @reglas_juego }
      else
        format.html { render :new }
        format.json { render json: @reglas_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reglas_juegos/1
  # PATCH/PUT /reglas_juegos/1.json
  def update
    respond_to do |format|
      if @reglas_juego.update(reglas_juego_params)
        format.html { redirect_to @reglas_juego, notice: 'Reglas juego was successfully updated.' }
        format.json { render :show, status: :ok, location: @reglas_juego }
      else
        format.html { render :edit }
        format.json { render json: @reglas_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reglas_juegos/1
  # DELETE /reglas_juegos/1.json
  def destroy
    @reglas_juego.destroy
    respond_to do |format|
      format.html { redirect_to reglas_juegos_url, notice: 'Reglas juego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reglas_juego
      @reglas_juego = ReglasJuego.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def reglas_juego_params
      params.require(:reglas_juego).permit(:juego_id, :regla, :file)
    end
end
