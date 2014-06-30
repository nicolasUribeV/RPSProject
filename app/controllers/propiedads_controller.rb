class PropiedadsController < ApplicationController
  before_action :set_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /propiedads
  # GET /propiedads.json
  def index
    @q = Propiedad.search(params[:q])
    @propiedads = @q.result(:distinct => true)
  end

  def buscar_propiedad
    @q = Propiedad.search(params[:q])
    @propiedads = @q.result
    @regiones = Ubicacion.where("Ubicacion_id IS NULL").order(:NombreUbicacion)
    @comunas = Ubicacion.where("Ubicacion_id = ?", Ubicacion.where("Ubicacion_id IS NULL").order(:NombreUbicacion).first.id)
  end

  def update_comunas
    @comunas = Ubicacion.where("Ubicacion_id = ?", params[:Ubicacion_id])
    respond_to do |format|
      format.js
    end
  end

  def propiedad_usuario
    @propiedads = Propiedad.all
  end

  # GET /propiedads/1
  # GET /propiedads/1.json

  def show
  end

  # GET /propiedads/new
  def new
    @propiedad = Propiedad.new
  end

  # GET /propiedads/1/edit
  def edit
  end

  # POST /propiedads
  # POST /propiedads.json
  def create
    @propiedad = Propiedad.new(propiedad_params)

    respond_to do |format|
      if @propiedad.save
        format.html { redirect_to @propiedad, notice: 'Propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @propiedad }
      else
        format.html { render :new }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /propiedads/1
  # PATCH/PUT /propiedads/1.json
  def update
    respond_to do |format|
      if @propiedad.update(propiedad_params)
        format.html { redirect_to @propiedad, notice: 'Propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @propiedad }
      else
        format.html { render :edit }
        format.json { render json: @propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /propiedads/1
  # DELETE /propiedads/1.json
  def destroy
    @propiedad.destroy
    respond_to do |format|
      format.html { redirect_to propiedads_url, notice: 'Propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_propiedad
      @propiedad = Propiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def propiedad_params
      params.require(:propiedad).permit(:Ubicacion_id, :TipoPropiedad_id, :Propietario_id, :DireccionPropiedad, :Estacionamiento, :Bodega, :EquipadaMuebles, :M2Totales, :Descripcion, :Habilitada)
    end
end
