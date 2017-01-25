class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    #render html: "Projeto Laboratórios Compartilhados - UFBA!!!"
  end
  

end