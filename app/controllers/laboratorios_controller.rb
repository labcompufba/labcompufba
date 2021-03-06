class LaboratoriosController < ApplicationController
  before_action :set_laboratorio, only: [:show, :edit, :update, :destroy]

  # GET /laboratorios
  # GET /laboratorios.json
    def index
    @laboratorios = Laboratorio.all;
    if @laboratorios.present?
      @temlab = 1;
    else
      @temlab = 0;
    end
    
    if params[:search]
         @laboratorios = Laboratorio.where("nome like ?", "%#{params[:search]}%").page(params['page']).per(5);
    else
         @laboratorios = Laboratorio.order(:instituto_id,:nome).page(params['page']).per(5);
    end
    
    respond_to do |format|
      format.html

      format.pdf { render pdf: "",
        footer: { center: "[page] of [topage]" }
      }
    end      
  end

  # GET /laboratorios/1
  # GET /laboratorios/1.json
  def show
  end

  # GET /laboratorios/new
  def new
    if can? :pesq, Laboratorio
      @laboratorio = Laboratorio.new
      @institutos = Instituto.all
      @programas = Programa.all
    else
      redirect_to laboratorios_url
    end
  end

  # GET /laboratorios/1/edit
  def edit
    if can? :pesq, Laboratorio
      @laboratorio = Laboratorio.find(params[:id])
      @institutos = Instituto.all
     @programas = Programa.all
    else
      redirect_to laboratorios_url
    end
  end

  # POST /laboratorios
  # POST /laboratorios.json
  def create
    @laboratorio = Laboratorio.new(laboratorio_params)

    respond_to do |format|
      if @laboratorio.save
        format.html { redirect_to @laboratorio, notice: 'O laboratório foi criado com sucesso.' }
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
        format.html { redirect_to @laboratorio, notice: 'O laboratório foi atualizado com sucesso.' }
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
      format.html { redirect_to laboratorios_url, notice: 'O laboratório foi deletado com sucesso.' }
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
      params.require(:laboratorio).permit(:nome, :sigla, :local, :instituto_id,:programa_id)
    end
end
