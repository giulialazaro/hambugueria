class SessionsController < ApplicationController
  skip_before_action :require_authentication
    layout "login"
  
    def new
      
    end
  
    def create
      @admin = Admin.find_by(username: params[:session][:username])
      if @admin && @admin.authenticate(params[:session][:password])
        session[:admin_id] = @admin.id
        redirect_to(root_path)
      else
        flash[:alert] = "Usuario e/ou senha invalido(s)"
        redirect_to authentication_form_path
      end
    end  
  
    def destroy       
      session[:admin_id] = nil   
      p session[:admin_id]  
      redirect_to authentication_form_path
    end 
  end