class PesquisadorController < ApplicationController
  def index
    @nome = "Admin"
    @pesquisadors = Pesquisador.all
  end

  def show
    @nome = "Admin"
  end

  def edit
    @nome = "Admin"
  end
end
