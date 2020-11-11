class ComponentesJuegosController < ApplicationController
  before_action :set_componentes_juego, only: [:show, :edit, :update, :destroy]

  # GET /componentes_juegos
  # GET /componentes_juegos.json
  def index
    @componentes_juegos = ComponentesJuego.all
  end

  # GET /componentes_juegos/1
  # GET /componentes_juegos/1.json
  def show
  end

  # GET /componentes_juegos/new
  def new
    @componentes_juego = ComponentesJuego.new
  end

  # GET /componentes_juegos/1/edit
  def edit
  end

  # POST /componentes_juegos
  # POST /componentes_juegos.json
  def create
    @componentes_juego = ComponentesJuego.new(componentes_juego_params)

    respond_to do |format|
      if @componentes_juego.save
        format.html { redirect_to @componentes_juego, notice: 'Componentes juego was successfully created.' }
        format.json { render :show, status: :created, location: @componentes_juego }
      else
        format.html { render :new }
        format.json { render json: @componentes_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /componentes_juegos/1
  # PATCH/PUT /componentes_juegos/1.json
  def update
    respond_to do |format|
      if @componentes_juego.update(componentes_juego_params)
        format.html { redirect_to @componentes_juego, notice: 'Componentes juego was successfully updated.' }
        format.json { render :show, status: :ok, location: @componentes_juego }
      else
        format.html { render :edit }
        format.json { render json: @componentes_juego.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /componentes_juegos/1
  # DELETE /componentes_juegos/1.json
  def destroy
    @componentes_juego.destroy
    respond_to do |format|
      format.html { redirect_to componentes_juegos_url, notice: 'Componentes juego was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_componentes_juego
      @componentes_juego = ComponentesJuego.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def componentes_juego_params
      params.require(:componentes_juego).permit(:componente, :juego_id, images: [])
    end
end
