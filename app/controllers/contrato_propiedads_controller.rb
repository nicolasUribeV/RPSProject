class ContratoPropiedadsController < ApplicationController
  before_action :set_contrato_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /contrato_propiedads
  # GET /contrato_propiedads.json
  def index
    @contrato_propiedads = ContratoPropiedad.all
  end

  # GET /contrato_propiedads/1
  # GET /contrato_propiedads/1.json
  def show
  end

  # GET /contrato_propiedads/new
  def new
    @contrato_propiedad = ContratoPropiedad.new
  end

  # GET /contrato_propiedads/1/edit
  def edit
  end

  # POST /contrato_propiedads
  # POST /contrato_propiedads.json
  def create
    @contrato_propiedad = ContratoPropiedad.new(contrato_propiedad_params)

    respond_to do |format|
      if @contrato_propiedad.save
        format.html { redirect_to @contrato_propiedad, notice: 'Contrato propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @contrato_propiedad }
      else
        format.html { render :new }
        format.json { render json: @contrato_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contrato_propiedads/1
  # PATCH/PUT /contrato_propiedads/1.json
  def update
    respond_to do |format|
      if @contrato_propiedad.update(contrato_propiedad_params)
        format.html { redirect_to @contrato_propiedad, notice: 'Contrato propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @contrato_propiedad }
      else
        format.html { render :edit }
        format.json { render json: @contrato_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contrato_propiedads/1
  # DELETE /contrato_propiedads/1.json
  def destroy
    @contrato_propiedad.destroy
    respond_to do |format|
      format.html { redirect_to contrato_propiedads_url, notice: 'Contrato propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato_propiedad
      @contrato_propiedad = ContratoPropiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contrato_propiedad_params
      params.require(:contrato_propiedad).permit(:Propiedad_id, :FechaInicio, :DuracionContrato, :ContratoDigital, :Vigencia)
    end
end
