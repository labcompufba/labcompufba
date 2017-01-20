class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render html: "Projeto Laboratorios Compartilhados UFBA"
  end
  

end