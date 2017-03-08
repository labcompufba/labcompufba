class LaboratoriosController < ApplicationController
  before_action :set_laboratorio, only: [:show, :edit, :update, :destroy]

  # GET /laboratorios
  # GET /laboratorios.json
  def index
    @laboratorios = Laboratorio.all
  end

  # GET /laboratorios/1
  # GET /laboratorios/1.json
  def show
  end

  # GET /laboratorios/new
  def new
    @laboratorio = Laboratorio.new
    @institutos = Instituto.all
  end

  # GET /laboratorios/1/edit
  def edit
     @laboratorio = Laboratorio.find(params[:id])
     @institutos = Instituto.all
  end

  # POST /laboratorios
  # POST /laboratorios.json
  def create
    @laboratorio = Laboratorio.new(laboratorio_params)

    respond_to do |format|
      if @laboratorio.save
        format.html { redirect_to @laboratorio, notice: 'Laboratorio was successfully created.' }
        format.json { render :show, status: :created, location: @laboratorio }
      else
        format.html { render :new }
        format.json { render json: @laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /laboratorios/1
  # PATCH/PUT /laboratorios/1.json
  def update
    respond_to do |format|
      if @laboratorio.update(laboratorio_params)
        format.html { redirect_to @laboratorio, notice: 'Laboratorio was successfully updated.' }
        format.json { render :show, status: :ok, location: @laboratorio }
      else
        format.html { render :edit }
        format.json { render json: @laboratorio.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /laboratorios/1
  # DELETE /laboratorios/1.json
  def destroy
    @laboratorio.destroy
    respond_to do |format|
      format.html { redirect_to laboratorios_url, notice: 'Laboratorio was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_laboratorio
      @laboratorio = Laboratorio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def laboratorio_params
      params.require(:laboratorio).permit(:cod_lab, :cod_inst, :nome, :local)
    end
end
