class ContratoArriendosController < ApplicationController
  before_action :set_contrato_arriendo, only: [:show, :edit, :update, :destroy]

  # GET /contrato_arriendos
  # GET /contrato_arriendos.json
  def index
    @contrato_arriendos = ContratoArriendo.all
  end

  # GET /contrato_arriendos/1
  # GET /contrato_arriendos/1.json
  def show
  end

  # GET /contrato_arriendos/new
  def new
    @contrato_arriendo = ContratoArriendo.new
  end

  # GET /contrato_arriendos/1/edit
  def edit
  end

  # POST /contrato_arriendos
  # POST /contrato_arriendos.json
  def create
    @contrato_arriendo = ContratoArriendo.new(contrato_arriendo_params)

    respond_to do |format|
      if @contrato_arriendo.save
        format.html { redirect_to @contrato_arriendo, notice: 'Contrato arriendo was successfully created.' }
        format.json { render :show, status: :created, location: @contrato_arriendo }
      else
        format.html { render :new }
        format.json { render json: @contrato_arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrato_arriendos/1
  # PATCH/PUT /contrato_arriendos/1.json
  def update
    respond_to do |format|
      if @contrato_arriendo.update(contrato_arriendo_params)
        format.html { redirect_to @contrato_arriendo, notice: 'Contrato arriendo was successfully updated.' }
        format.json { render :show, status: :ok, location: @contrato_arriendo }
      else
        format.html { render :edit }
        format.json { render json: @contrato_arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrato_arriendos/1
  # DELETE /contrato_arriendos/1.json
  def destroy
    @contrato_arriendo.destroy
    respond_to do |format|
      format.html { redirect_to contrato_arriendos_url, notice: 'Contrato arriendo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato_arriendo
      @contrato_arriendo = ContratoArriendo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrato_arriendo_params
      params.require(:contrato_arriendo).permit(:Propiedad_id, :Arrendatario_id, :FechaInicioArriendo, :FechaTerminoArriendo, :TipoRenovacion, :PeriodoReajuste, :MultaPeriocidad, :DiaPago, :ContratoDigital)
    end
end
