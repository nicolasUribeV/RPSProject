class CaracteristicaPropiedadsController < ApplicationController
  before_action :set_caracteristica_propiedad, only: [:show, :edit, :update, :destroy]

  # GET /caracteristica_propiedads
  # GET /caracteristica_propiedads.json
  def index
    @caracteristica_propiedads = CaracteristicaPropiedad.all
  end

  # GET /caracteristica_propiedads/1
  # GET /caracteristica_propiedads/1.json
  def show
  end

  # GET /caracteristica_propiedads/new
  def new
    @caracteristica_propiedad = CaracteristicaPropiedad.new
  end

  # GET /caracteristica_propiedads/1/edit
  def edit
  end

  # POST /caracteristica_propiedads
  # POST /caracteristica_propiedads.json
  def create
    @caracteristica_propiedad = CaracteristicaPropiedad.new(caracteristica_propiedad_params)

    respond_to do |format|
      if @caracteristica_propiedad.save
        format.html { redirect_to @caracteristica_propiedad, notice: 'Caracteristica propiedad was successfully created.' }
        format.json { render :show, status: :created, location: @caracteristica_propiedad }
      else
        format.html { render :new }
        format.json { render json: @caracteristica_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /caracteristica_propiedads/1
  # PATCH/PUT /caracteristica_propiedads/1.json
  def update
    respond_to do |format|
      if @caracteristica_propiedad.update(caracteristica_propiedad_params)
        format.html { redirect_to @caracteristica_propiedad, notice: 'Caracteristica propiedad was successfully updated.' }
        format.json { render :show, status: :ok, location: @caracteristica_propiedad }
      else
        format.html { render :edit }
        format.json { render json: @caracteristica_propiedad.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /caracteristica_propiedads/1
  # DELETE /caracteristica_propiedads/1.json
  def destroy
    @caracteristica_propiedad.destroy
    respond_to do |format|
      format.html { redirect_to caracteristica_propiedads_url, notice: 'Caracteristica propiedad was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_caracteristica_propiedad
      @caracteristica_propiedad = CaracteristicaPropiedad.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def caracteristica_propiedad_params
      params.require(:caracteristica_propiedad).permit(:Propiedad_id, :Caracteristica_id, :ValorCaracteristica)
    end
end
