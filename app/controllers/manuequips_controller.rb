class ManuequipsController < ApplicationController
  before_action :set_manuequip, only: [:show, :edit, :update, :destroy]

  # GET /manuequips
  # GET /manuequips.json
  def index
    if params[:listar] == 'true'
       @manuequips = Manuequip.where(manutencao_id: params[:manutencao_id])
    else
       @manuequips = Labequip.where(" manutencao_id=:manutencao_id and manutencao = :manutencao",
       {manutencao:true,manutencao_id:false})
    end   
    
    respond_to do |format|
      format.html

      format.pdf { render pdf: "",
        footer: { center: " Sistema de Laboratórios Compartilhados [page] of [topage]" }
      }
    end        
  
  end
  

  # GET /manuequips/1
  # GET /manuequips/1.json
  def show
  end

  # GET /manuequips/new
  def new
    if can? :pesq, Manuequip
       @manuequip = Manuequip.new
    else
       redirect_to manutentions_path
    end
  end

  # GET /manuequips/1/edit
  def edit
  end

def incluir
     @manutencao =  Manutention.where(id: params[:manutencao_id])
     @manuequip = Manuequip.new()
     @manuequip.manutencao_id  =  params[:manutencao_id]
     @manuequip.labequip_id    =  params[:labequip_id]
     respond_to do |format|
     @manuequip.save
  
      #@labequip = Labequip.where(id: 3)
      # @users = User.where("id=:id",{id:@equip.usuario_manutencao_id})
     # @users = User.where(id: idu)
     #  equip_desc = "" 
     #  equip_lab  =""
     #  email      = ""
      # @users.each do |user|
      #    email = user.email
      #    @labequip.each do |equips|
      #      equip_desc =  equips.equipamento.descricao
      #       equip_lab = equips.laboratorio.nome
       #   end 
  	          # HomeMailer.inclusao_equip_manutencao(email,equip_desc,equip_lab).deliver_now!
 	        
   	   #end
         
      format.html { redirect_to "/manuequips/", notice: 'Item adicionado!'}
     end  
     @labequip = Labequip.find(params[:labequip_id])
     @labequip.update(manutencao_id: true)
end 


  # POST /manuequips
  # POST /manuequips.json 
  def create
    @manuequip = Manuequip.new()
      @manuequip.manutencao_id =params[:manutencao_id]
      @manuequip.labequip_id = params [:labequip_id]
    respond_to do |format|
     @manuequip.save
    format.html { redirect_to @manuequip, notice: 'Item adicionado!' }
    end  
    @labequip = Labequip.find(params [:labequip_id])
    @labequip.update(manutencao_id: true)
  end


  # PATCH/PUT /manuequips/1
  # PATCH/PUT /manuequips/1.json
  def update
    respond_to do |format|
      if @manuequip.update(manuequip_params)
        format.html { redirect_to @manuequip, notice: 'Manuequip was successfully updated.' }
        format.json { render :show, status: :ok, location: @manuequip }
      else
        format.html { render :edit }
        format.json { render json: @manuequip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manuequips/1
  # DELETE /manuequips/1.json
  def destroy
    @manuequip.destroy
    respond_to do |format|
      format.html { redirect_to manuequips_url, notice: 'Item retirado!' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manuequip
      @manuequip = Manuequip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def manuequip_params
      params.require(:manuequip).permit(:manutencao_id, :equipamento_id, :labequip_id, :baixa)
    end
end
