class EquipasController < ApplicationController
  before_action :set_equipa, only: [:show, :edit, :update, :destroy]

  # GET /equipas
  # GET /equipas.json
  def index
    @equipas = Equipa.all
  end

  # GET /equipas/1
  # GET /equipas/1.json
  def show
  end

  # GET /equipas/new
  def new
    @equipa = Equipa.new
  end

  # GET /equipas/1/edit
  def edit
  end

  # POST /equipas
  # POST /equipas.json
  def create
    @equipa = Equipa.new(equipa_params)

    respond_to do |format|
      if @equipa.save
        format.html { redirect_to @equipa, notice: 'Equipa was successfully created.' }
        format.json { render :show, status: :created, location: @equipa }
      else
        format.html { render :new }
        format.json { render json: @equipa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipas/1
  # PATCH/PUT /equipas/1.json
  def update
    respond_to do |format|
      if @equipa.update(equipa_params)
        format.html { redirect_to @equipa, notice: 'Equipa was successfully updated.' }
        format.json { render :show, status: :ok, location: @equipa }
      else
        format.html { render :edit }
        format.json { render json: @equipa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipas/1
  # DELETE /equipas/1.json
  def destroy
    @equipa.destroy
    respond_to do |format|
      format.html { redirect_to equipas_url, notice: 'Equipa was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipa
      @equipa = Equipa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipa_params
      params.require(:equipa).permit(:codigo, :descricao)
    end
end
