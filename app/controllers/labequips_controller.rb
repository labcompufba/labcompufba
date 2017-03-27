class LabequipsController < ApplicationController
  before_action :set_labequip, only: [:show, :edit, :update, :destroy]

  # GET /labequips
  # GET /labequips.json
  def index
    @labequips = Labequip.where(laboratorio_id: params[:laboratorio_id])
  end

  # GET /labequips/1
  # GET /labequips/1.json
  def show
  end

  # GET /labequips/new
  def new
    if can? :pesq, Labequip
      @labequip = Labequip.new
      @laboratorios = Laboratorio.all
      @equipamentos=Equipamento.all
    else
      redirect_to laboratorios_url
    end
  end

  # GET /labequips/1/edit
  def edit
    if can? :pesq, Labequip
      @labequip = Labequip.find(params[:id])
      @laboratorios = Laboratorio.all
      @equipamentos = Equipamento.all
    else
      redirect_to laboratorios_url
    end
  end

  # POST /labequips
  # POST /labequips.json
  def create
    @labequip = Labequip.new(labequip_params)

    respond_to do |format|
      if @labequip.save
        format.html { redirect_to @labequip, notice: 'Labequip was successfully created.' }
        format.json { render :show, status: :created, location: @labequip }
      else
        format.html { render :new }
        format.json { render json: @labequip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /labequips/1
  # PATCH/PUT /labequips/1.json
  def update
    respond_to do |format|
      if @labequip.update(labequip_params)
        format.html { redirect_to @labequip, notice: 'Labequip was successfully updated.' }
        format.json { render :show, status: :ok, location: @labequip }
      else
        format.html { render :edit }
        format.json { render json: @labequip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /labequips/1
  # DELETE /labequips/1.json
  def destroy
    @labequip.destroy
    respond_to do |format|
      format.html { redirect_to ({:action => "index", :laboratorio_id => @labequip.laboratorio.id}), notice: 'Labequip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_labequip
      @labequip = Labequip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def labequip_params
      params.require(:labequip).permit(:laboratorio_id, :equipamento_id, :quantidade, :numero_tombamento,:manutencao)
    end
end
