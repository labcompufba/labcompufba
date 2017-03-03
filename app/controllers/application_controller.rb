class ApplicationController < ActionController::Base
  protect_from_forgery with: :null_session
 
  # GET /institutos
  # GET /institutos.json
 def index
      @institutos =  Instituto.all
 end
end
