class ProgramasController < ApplicationController
  before_action :set_programa, only: [:show, :edit, :update, :destroy]

  # GET /programas
  # GET /programas.json
  def index
    @programas = Programa.all
  end

  # GET /programas/1
  # GET /programas/1.json
  def show
  end

  # GET /programas/new
  def new
    @programa = Programa.new
  end

  # GET /programas/1/edit
  def edit
  end

  # POST /programas
  # POST /programas.json
  def create
    @programa = Programa.new(programa_params)

    respond_to do |format|
      if @programa.save
        format.html { redirect_to @programa, notice: 'O programa foi criado com sucesso.' }
        format.json { render :show, status: :created, location: @programa }
      else
        format.html { render :new }
        format.json { render json: @programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /programas/1
  # PATCH/PUT /programas/1.json
  def update
    respond_to do |format|
      if @programa.update(programa_params)
        format.html { redirect_to @programa, notice: 'O programa foi atualizado com sucesso.' }
        format.json { render :show, status: :ok, location: @programa }
      else
        format.html { render :edit }
        format.json { render json: @programa.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /programas/1
  # DELETE /programas/1.json
  def destroy
    @programa.destroy
    respond_to do |format|
      format.html { redirect_to programas_url, notice: 'O programa foi excluído com sucesso.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_programa
      @programa = Programa.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def programa_params
      params.require(:programa).permit(:nome, :sigla,:local)
    end
end
