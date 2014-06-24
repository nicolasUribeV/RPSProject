class CuponPagoArrendatariosController < ApplicationController
  before_action :set_cupon_pago_arrendatario, only: [:show, :edit, :update, :destroy]

  # GET /cupon_pago_arrendatarios
  # GET /cupon_pago_arrendatarios.json
  def index
    @cupon_pago_arrendatarios = CuponPagoArrendatario.all
  end

  # GET /cupon_pago_arrendatarios/1
  # GET /cupon_pago_arrendatarios/1.json
  def show
  end

  # GET /cupon_pago_arrendatarios/new
  def new
    @cupon_pago_arrendatario = CuponPagoArrendatario.new
  end

  # GET /cupon_pago_arrendatarios/1/edit
  def edit
  end

  # POST /cupon_pago_arrendatarios
  # POST /cupon_pago_arrendatarios.json
  def create
    @cupon_pago_arrendatario = CuponPagoArrendatario.new(cupon_pago_arrendatario_params)

    respond_to do |format|
      if @cupon_pago_arrendatario.save
        format.html { redirect_to @cupon_pago_arrendatario, notice: 'Cupon pago arrendatario was successfully created.' }
        format.json { render :show, status: :created, location: @cupon_pago_arrendatario }
      else
        format.html { render :new }
        format.json { render json: @cupon_pago_arrendatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupon_pago_arrendatarios/1
  # PATCH/PUT /cupon_pago_arrendatarios/1.json
  def update
    respond_to do |format|
      if @cupon_pago_arrendatario.update(cupon_pago_arrendatario_params)
        format.html { redirect_to @cupon_pago_arrendatario, notice: 'Cupon pago arrendatario was successfully updated.' }
        format.json { render :show, status: :ok, location: @cupon_pago_arrendatario }
      else
        format.html { render :edit }
        format.json { render json: @cupon_pago_arrendatario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupon_pago_arrendatarios/1
  # DELETE /cupon_pago_arrendatarios/1.json
  def destroy
    @cupon_pago_arrendatario.destroy
    respond_to do |format|
      format.html { redirect_to cupon_pago_arrendatarios_url, notice: 'Cupon pago arrendatario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupon_pago_arrendatario
      @cupon_pago_arrendatario = CuponPagoArrendatario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cupon_pago_arrendatario_params
      params.require(:cupon_pago_arrendatario).permit(:ContratoArriendo_id, :FechaEmision, :Total, :Comentario, :LiquidacionProcesada)
    end
end
