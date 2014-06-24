class ValorArriendosController < ApplicationController
  before_action :set_valor_arriendo, only: [:show, :edit, :update, :destroy]

  # GET /valor_arriendos
  # GET /valor_arriendos.json
  def index
    @valor_arriendos = ValorArriendo.all
  end

  # GET /valor_arriendos/1
  # GET /valor_arriendos/1.json
  def show
  end

  # GET /valor_arriendos/new
  def new
    @valor_arriendo = ValorArriendo.new
  end

  # GET /valor_arriendos/1/edit
  def edit
  end

  # POST /valor_arriendos
  # POST /valor_arriendos.json
  def create
    @valor_arriendo = ValorArriendo.new(valor_arriendo_params)

    respond_to do |format|
      if @valor_arriendo.save
        format.html { redirect_to @valor_arriendo, notice: 'Valor arriendo was successfully created.' }
        format.json { render :show, status: :created, location: @valor_arriendo }
      else
        format.html { render :new }
        format.json { render json: @valor_arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /valor_arriendos/1
  # PATCH/PUT /valor_arriendos/1.json
  def update
    respond_to do |format|
      if @valor_arriendo.update(valor_arriendo_params)
        format.html { redirect_to @valor_arriendo, notice: 'Valor arriendo was successfully updated.' }
        format.json { render :show, status: :ok, location: @valor_arriendo }
      else
        format.html { render :edit }
        format.json { render json: @valor_arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /valor_arriendos/1
  # DELETE /valor_arriendos/1.json
  def destroy
    @valor_arriendo.destroy
    respond_to do |format|
      format.html { redirect_to valor_arriendos_url, notice: 'Valor arriendo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_valor_arriendo
      @valor_arriendo = ValorArriendo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def valor_arriendo_params
      params.require(:valor_arriendo).permit(:TipoArriendo_id, :Propiedad_id, :ValorDefinido, :Temporada, :ValorActivo, :FechaInicioTemp, :FechaTerminoTemp)
    end
end
