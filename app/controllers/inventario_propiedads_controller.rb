class InventarioPropiedadsController < ApplicationController
  before_action :set_inventario_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /inventario_propiedads
  # GET /inventario_propiedads.json
  def index
    @inventario_propiedads = InventarioPropiedad.all
  end

  # GET /inventario_propiedads/1
  # GET /inventario_propiedads/1.json
  def show
  end

  # GET /inventario_propiedads/new
  def new
    @inventario_propiedad = InventarioPropiedad.new
  end

  # GET /inventario_propiedads/1/edit
  def edit
  end

  # POST /inventario_propiedads
  # POST /inventario_propiedads.json
  def create
    @inventario_propiedad = InventarioPropiedad.new(inventario_propiedad_params)

    respond_to do |format|
      if @inventario_propiedad.save
        format.html { redirect_to @inventario_propiedad, notice: 'Inventario propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @inventario_propiedad }
      else
        format.html { render :new }
        format.json { render json: @inventario_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /inventario_propiedads/1
  # PATCH/PUT /inventario_propiedads/1.json
  def update
    respond_to do |format|
      if @inventario_propiedad.update(inventario_propiedad_params)
        format.html { redirect_to @inventario_propiedad, notice: 'Inventario propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @inventario_propiedad }
      else
        format.html { render :edit }
        format.json { render json: @inventario_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /inventario_propiedads/1
  # DELETE /inventario_propiedads/1.json
  def destroy
    @inventario_propiedad.destroy
    respond_to do |format|
      format.html { redirect_to inventario_propiedads_url, notice: 'Inventario propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_inventario_propiedad
      @inventario_propiedad = InventarioPropiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def inventario_propiedad_params
      params.require(:inventario_propiedad).permit(:Item_id, :Propiedad_id, :CantidadItem, :FechaInventario, :NumeracionInventario)
    end
end
