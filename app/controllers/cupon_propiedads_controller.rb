class CuponPropiedadsController < ApplicationController
  before_action :set_cupon_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /cupon_propiedads
  # GET /cupon_propiedads.json
  def index
    @cupon_propiedads = CuponPropiedad.all
  end

  # GET /cupon_propiedads/1
  # GET /cupon_propiedads/1.json
  def show
  end

  # GET /cupon_propiedads/new
  def new
    @cupon_propiedad = CuponPropiedad.new
  end

  # GET /cupon_propiedads/1/edit
  def edit
  end

  # POST /cupon_propiedads
  # POST /cupon_propiedads.json
  def create
    @cupon_propiedad = CuponPropiedad.new(cupon_propiedad_params)

    respond_to do |format|
      if @cupon_propiedad.save
        format.html { redirect_to @cupon_propiedad, notice: 'Cupon propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @cupon_propiedad }
      else
        format.html { render :new }
        format.json { render json: @cupon_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupon_propiedads/1
  # PATCH/PUT /cupon_propiedads/1.json
  def update
    respond_to do |format|
      if @cupon_propiedad.update(cupon_propiedad_params)
        format.html { redirect_to @cupon_propiedad, notice: 'Cupon propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @cupon_propiedad }
      else
        format.html { render :edit }
        format.json { render json: @cupon_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupon_propiedads/1
  # DELETE /cupon_propiedads/1.json
  def destroy
    @cupon_propiedad.destroy
    respond_to do |format|
      format.html { redirect_to cupon_propiedads_url, notice: 'Cupon propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupon_propiedad
      @cupon_propiedad = CuponPropiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cupon_propiedad_params
      params.require(:cupon_propiedad).permit(:CuponPropietario_id, :ContratoPropiedad_id, :TotalCobros, :TotalPagos, :DescripcionCP, :FechaEmisionCP, :CPProcesada)
    end
end
