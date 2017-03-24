class InstitutosController < ApplicationController
  before_action :set_instituto, only: [:show, :edit, :update, :destroy]

  # GET /institutos
  # GET /institutos.json
  def index
    if params[:search]
        @institutos = Instituto.where("nome like ?", "%#{params[:search]}%");
    else
        @institutos = Instituto.order(:nome);
    end
  end

  # GET /institutos/1
  # GET /institutos/1.json
  def show
  end

  # GET /institutos/new
  def new
    if can? :pesq, Instituto
        @instituto = Instituto.new
    else
        redirect_to institutos_path
    end
      
  end

  # GET /institutos/1/edit
  def edit
    if !(can? :pesq, Instituto)
      redirect_to institutos_path
    end  
  end

  # POST /institutos
  # POST /institutos.json
  def create
    @instituto = Instituto.new(instituto_params)

    respond_to do |format|
      if @instituto.save
        format.html { redirect_to @instituto, notice: 'Instituto was successfully created.' }
        format.json { render :show, status: :created, location: @instituto }
      else
        format.html { render :new }
        format.json { render json: @instituto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /institutos/1
  # PATCH/PUT /institutos/1.json
  def update
    respond_to do |format|
      if @instituto.update(instituto_params)
        format.html { redirect_to @instituto, notice: 'Instituto was successfully updated.' }
        format.json { render :show, status: :ok, location: @instituto }
      else
        format.html { render :edit }
        format.json { render json: @instituto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /institutos/1
  # DELETE /institutos/1.json
  def destroy
    @instituto.destroy
    respond_to do |format|
      format.html { redirect_to institutos_url, notice: 'Instituto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_instituto
      @instituto = Instituto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def instituto_params
      params.require(:instituto).permit(:nome, :sigla, :local)
    end
end
