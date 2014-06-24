class TipoArriendosController < ApplicationController
  before_action :set_tipo_arriendo, only: [:show, :edit, :update, :destroy]

  # GET /tipo_arriendos
  # GET /tipo_arriendos.json
  def index
    @tipo_arriendos = TipoArriendo.all
  end

  # GET /tipo_arriendos/1
  # GET /tipo_arriendos/1.json
  def show
  end

  # GET /tipo_arriendos/new
  def new
    @tipo_arriendo = TipoArriendo.new
  end

  # GET /tipo_arriendos/1/edit
  def edit
  end

  # POST /tipo_arriendos
  # POST /tipo_arriendos.json
  def create
    @tipo_arriendo = TipoArriendo.new(tipo_arriendo_params)

    respond_to do |format|
      if @tipo_arriendo.save
        format.html { redirect_to @tipo_arriendo, notice: 'Tipo arriendo was successfully created.' }
        format.json { render :show, status: :created, location: @tipo_arriendo }
      else
        format.html { render :new }
        format.json { render json: @tipo_arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tipo_arriendos/1
  # PATCH/PUT /tipo_arriendos/1.json
  def update
    respond_to do |format|
      if @tipo_arriendo.update(tipo_arriendo_params)
        format.html { redirect_to @tipo_arriendo, notice: 'Tipo arriendo was successfully updated.' }
        format.json { render :show, status: :ok, location: @tipo_arriendo }
      else
        format.html { render :edit }
        format.json { render json: @tipo_arriendo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tipo_arriendos/1
  # DELETE /tipo_arriendos/1.json
  def destroy
    @tipo_arriendo.destroy
    respond_to do |format|
      format.html { redirect_to tipo_arriendos_url, notice: 'Tipo arriendo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tipo_arriendo
      @tipo_arriendo = TipoArriendo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tipo_arriendo_params
      params.require(:tipo_arriendo).permit(:Descripcion, :NombreTipo)
    end
end
