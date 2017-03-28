class EquipamentosController < ApplicationController
  before_action :set_equipamento, only: [:show, :edit, :update, :destroy]

  # GET /equipamentos
  # GET /equipamentos.json
  def index
    @equipamentos = Equipamento.all;
    if params[:search]
        @equipamentos = Equipamento.where("descricao like ?", "%#{params[:search]}%").page(params['page']).per(4);
    else
        @equipamentos = Equipamento.order(:descricao).page(params['page']).per(4);
    end
  end

  # GET /equipamentos/1
  # GET /equipamentos/1.json
  def show
  end

  # GET /equipamentos/new
  def new
    if can? :pesq, Equipamento
      @equipamento = Equipamento.new
    else
      redirect_to equipamentos_path
    end
  end

  # GET /equipamentos/1/edit
  def edit
    if !(can? :pesq, Equipamento)
      redirect_to equipamentos_path
    end
  end

  # POST /equipamentos
  # POST /equipamentos.json
  def create
    @equipamento = Equipamento.new(equipamento_params)

    respond_to do |format|
      if @equipamento.save
        format.html { redirect_to @equipamento, notice: 'O equipamento foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @equipamento }
      else
        format.html { render :new }
        format.json { render json: @equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /equipamentos/1
  # PATCH/PUT /equipamentos/1.json
  def update
    respond_to do |format|
      if @equipamento.update(equipamento_params)
        format.html { redirect_to @equipamento, notice: 'O equipamento foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @equipamento }
      else
        format.html { render :edit }
        format.json { render json: @equipamento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /equipamentos/1
  # DELETE /equipamentos/1.json
  def destroy
    @equipamento.destroy
    respond_to do |format|
      format.html { redirect_to equipamentos_url, notice: 'O equipamento foi deletado com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_equipamento
      @equipamento = Equipamento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def equipamento_params
      params.require(:equipamento).permit(:descricao)
    end
end
