class DetalleCuponsController < ApplicationController
  before_action :set_detalle_cupon, only: [:show, :edit, :update, :destroy]

  # GET /detalle_cupons
  # GET /detalle_cupons.json
  def index
    @detalle_cupons = DetalleCupon.all
  end

  # GET /detalle_cupons/1
  # GET /detalle_cupons/1.json
  def show
  end

  # GET /detalle_cupons/new
  def new
    @detalle_cupon = DetalleCupon.new
  end

  # GET /detalle_cupons/1/edit
  def edit
  end

  # POST /detalle_cupons
  # POST /detalle_cupons.json
  def create
    @detalle_cupon = DetalleCupon.new(detalle_cupon_params)

    respond_to do |format|
      if @detalle_cupon.save
        format.html { redirect_to @detalle_cupon, notice: 'Detalle cupon was successfully created.' }
        format.json { render :show, status: :created, location: @detalle_cupon }
      else
        format.html { render :new }
        format.json { render json: @detalle_cupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /detalle_cupons/1
  # PATCH/PUT /detalle_cupons/1.json
  def update
    respond_to do |format|
      if @detalle_cupon.update(detalle_cupon_params)
        format.html { redirect_to @detalle_cupon, notice: 'Detalle cupon was successfully updated.' }
        format.json { render :show, status: :ok, location: @detalle_cupon }
      else
        format.html { render :edit }
        format.json { render json: @detalle_cupon.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /detalle_cupons/1
  # DELETE /detalle_cupons/1.json
  def destroy
    @detalle_cupon.destroy
    respond_to do |format|
      format.html { redirect_to detalle_cupons_url, notice: 'Detalle cupon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_detalle_cupon
      @detalle_cupon = DetalleCupon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def detalle_cupon_params
      params.require(:detalle_cupon).permit(:CuponPropiedad_id, :ContratoPropiedad_id, :DescripcionDetalle, :Total, :DetalleProcesado, :TipoD)
    end
end
