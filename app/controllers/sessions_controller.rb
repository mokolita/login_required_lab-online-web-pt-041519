class SessionsController < ApplicationController
    def new
    end 
  
    def create
      session[:name] = params[:name]
      if session[:name].nil? || session[:name].empty?
          redirect_to new_session_path
      else 
          redirect_to '/'
      end 
  
    end 
  
    def destroy
      session.clear 
      redirect_to new_session_path
    end 
end 