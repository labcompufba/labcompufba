class ManutentionsController < ApplicationController
  before_action :set_manutention, only: [:show, :edit, :update, :destroy]

  # GET /manutentions
  # GET /manutentions.json
  def index
    @manutentions = Manutention.all
    @servicos = TipoServico.all
    
    respond_to do |format|
      format.html

      format.pdf { render pdf: "",
        footer: { center: "[page] of [topage]" }
      }
    end        
    
  end

  # GET /manutentions/1
  # GET /manutentions/1.json
  def show
  end

  # GET /manutentions/new
  def new
    if can? :pesq, Manutention
        @manutention = Manutention.new
        @servicos = TipoServico.all
    else
        redirect_to manutentions_path
    end    
  end

  # GET /manutentions/1/edit
  def edit
    if !(can? :pesq, Instituto)
      redirect_to manutentions_path
    else
      @manutention = Manutention.find(params[:id])
      @servicos = TipoServico.all
    end
  end

  # POST /manutentions
  # POST /manutentions.json
  def create
    @manutention = Manutention.new(manutention_params)

    respond_to do |format|
      if @manutention.save
        format.html { redirect_to @manutention, notice: 'Manutenção criada com sucesso.' }
        format.json { render :show, status: :created, location: @manutention }
      else
        format.html { render :new }
        format.json { render json: @manutention.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manutentions/1
  # PATCH/PUT /manutentions/1.json
  def update
    respond_to do |format|
      if @manutention.update(manutention_params)
        format.html { redirect_to @manutention, notice: 'Manutenção atualizada com sucesso.' }
        format.json { render :show, status: :ok, location: @manutention }
      else
        format.html { render :edit }
        format.json { render json: @manutention.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manutentions/1
  # DELETE /manutentions/1.json
  def destroy
    @manutention.destroy
    respond_to do |format|
      format.html { redirect_to manutentions_url, notice: 'Manutenção excluída com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manutention
      @manutention = Manutention.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manutention_params
      params.require(:manutention).permit(:labequip_id, :data_manutencao, :usuario_manutencao, :baixa, :tipo_servico_id, :data_baixa,:fornecedor)
    end
end
