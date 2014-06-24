class ServicioContratadosController < ApplicationController
  before_action :set_servicio_contratado, only: [:show, :edit, :update, :destroy]

  # GET /servicio_contratados
  # GET /servicio_contratados.json
  def index
    @servicio_contratados = ServicioContratado.all
  end

  # GET /servicio_contratados/1
  # GET /servicio_contratados/1.json
  def show
  end

  # GET /servicio_contratados/new
  def new
    @servicio_contratado = ServicioContratado.new
  end

  # GET /servicio_contratados/1/edit
  def edit
  end

  # POST /servicio_contratados
  # POST /servicio_contratados.json
  def create
    @servicio_contratado = ServicioContratado.new(servicio_contratado_params)

    respond_to do |format|
      if @servicio_contratado.save
        format.html { redirect_to @servicio_contratado, notice: 'Servicio contratado was successfully created.' }
        format.json { render :show, status: :created, location: @servicio_contratado }
      else
        format.html { render :new }
        format.json { render json: @servicio_contratado.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /servicio_contratados/1
  # PATCH/PUT /servicio_contratados/1.json
  def update
    respond_to do |format|
      if @servicio_contratado.update(servicio_contratado_params)
        format.html { redirect_to @servicio_contratado, notice: 'Servicio contratado was successfully updated.' }
        format.json { render :show, status: :ok, location: @servicio_contratado }
      else
        format.html { render :edit }
        format.json { render json: @servicio_contratado.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicio_contratados/1
  # DELETE /servicio_contratados/1.json
  def destroy
    @servicio_contratado.destroy
    respond_to do |format|
      format.html { redirect_to servicio_contratados_url, notice: 'Servicio contratado was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio_contratado
      @servicio_contratado = ServicioContratado.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_contratado_params
      params.require(:servicio_contratado).permit(:Servicio_id, :ContratoPropiedad_id, :PrecioAcordado, :Periocidad, :ServicioActivo)
    end
end
