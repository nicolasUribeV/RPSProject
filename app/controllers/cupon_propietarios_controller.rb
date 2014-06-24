class CuponPropietariosController < ApplicationController
  before_action :set_cupon_propietario, only: [:show, :edit, :update, :destroy]

  # GET /cupon_propietarios
  # GET /cupon_propietarios.json
  def index
    @cupon_propietarios = CuponPropietario.all
  end

  # GET /cupon_propietarios/1
  # GET /cupon_propietarios/1.json
  def show
  end

  # GET /cupon_propietarios/new
  def new
    @cupon_propietario = CuponPropietario.new
  end

  # GET /cupon_propietarios/1/edit
  def edit
  end

  # POST /cupon_propietarios
  # POST /cupon_propietarios.json
  def create
    @cupon_propietario = CuponPropietario.new(cupon_propietario_params)

    respond_to do |format|
      if @cupon_propietario.save
        format.html { redirect_to @cupon_propietario, notice: 'Cupon propietario was successfully created.' }
        format.json { render :show, status: :created, location: @cupon_propietario }
      else
        format.html { render :new }
        format.json { render json: @cupon_propietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cupon_propietarios/1
  # PATCH/PUT /cupon_propietarios/1.json
  def update
    respond_to do |format|
      if @cupon_propietario.update(cupon_propietario_params)
        format.html { redirect_to @cupon_propietario, notice: 'Cupon propietario was successfully updated.' }
        format.json { render :show, status: :ok, location: @cupon_propietario }
      else
        format.html { render :edit }
        format.json { render json: @cupon_propietario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cupon_propietarios/1
  # DELETE /cupon_propietarios/1.json
  def destroy
    @cupon_propietario.destroy
    respond_to do |format|
      format.html { redirect_to cupon_propietarios_url, notice: 'Cupon propietario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cupon_propietario
      @cupon_propietario = CuponPropietario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cupon_propietario_params
      params.require(:cupon_propietario).permit(:Propietario_id, :TotalCobrosProp, :TotalPagosProp, :FechaEmisionProp)
    end
end
