class UsuarioSessionsController < ApplicationController
  def new
    @usuario = Usuario.new
  end
 def create
    if  @usuario = login(params[:username],params[:password])
             redirect_back_or_to(posts_path, message: "Login Exitoso")
    else
      flash.now[:alert] = "Error de login"
     render  action: :new    
    end
  end
  def destroy 
       logout
       redirect_to(:usuarios, message: "fuera del login")
  end  
end
