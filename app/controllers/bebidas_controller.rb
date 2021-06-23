class BebidasController < ApplicationController
    skip_before_action :verify_authenticity_token, :require_authentication, only: [:create]
    def index
        @bebidas = Bebida.order(descricao: :asc)
    end

    def create
        attrs = params.require(:bebida).permit(:descricao, :valor)
        @bebida = Bebida.new attrs
        
        if @bebida.save
        flash[:notice] = "Bebida cadastrada com sucesso"
        redirect_to bebidas_path  
        else
        render :new
        end  
    end  
    def new
        @bebida = Bebida.new
    end 
    def update
        @bebida = Bebida.find(params[:id])
        if @bebida.update(descricao: params[:bebida][:descricao], valor: params[:bebida][:valor])
            redirect_to bebidas_path
        else 
            render :edit
        end     
    end
    def destroy
        id = params[:id]
        Bebida.destroy id
        redirect_to bebidas_path
    end  
    def edit
        @bebida = Bebida.find(params[:id])
    end
end    