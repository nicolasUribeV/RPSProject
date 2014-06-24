class CaracteristicaTiposController < ApplicationController
  before_action :set_caracteristica_tipo, only: [:show, :edit, :update, :destroy]

  # GET /caracteristica_tipos
  # GET /caracteristica_tipos.json
  def index
    @caracteristica_tipos = CaracteristicaTipo.all
  end

  # GET /caracteristica_tipos/1
  # GET /caracteristica_tipos/1.json
  def show
  end

  # GET /caracteristica_tipos/new
  def new
    @caracteristica_tipo = CaracteristicaTipo.new
  end

  # GET /caracteristica_tipos/1/edit
  def edit
  end

  # POST /caracteristica_tipos
  # POST /caracteristica_tipos.json
  def create
    @caracteristica_tipo = CaracteristicaTipo.new(caracteristica_tipo_params)

    respond_to do |format|
      if @caracteristica_tipo.save
        format.html { redirect_to @caracteristica_tipo, notice: 'Caracteristica tipo was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristica_tipo }
      else
        format.html { render :new }
        format.json { render json: @caracteristica_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristica_tipos/1
  # PATCH/PUT /caracteristica_tipos/1.json
  def update
    respond_to do |format|
      if @caracteristica_tipo.update(caracteristica_tipo_params)
        format.html { redirect_to @caracteristica_tipo, notice: 'Caracteristica tipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristica_tipo }
      else
        format.html { render :edit }
        format.json { render json: @caracteristica_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristica_tipos/1
  # DELETE /caracteristica_tipos/1.json
  def destroy
    @caracteristica_tipo.destroy
    respond_to do |format|
      format.html { redirect_to caracteristica_tipos_url, notice: 'Caracteristica tipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristica_tipo
      @caracteristica_tipo = CaracteristicaTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristica_tipo_params
      params.require(:caracteristica_tipo).permit(:TipoPropiedad_id, :Caracteristica_id)
    end
end
