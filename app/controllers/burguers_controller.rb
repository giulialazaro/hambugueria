class BurguersController < ApplicationController
    def index
        @burguers = Burguer.order(nome: :asc)
    end    

    def create
        attrs = params.require(:burguer).permit(:nome, :descricao, :valor)
        @burguer = Burguer.new attrs
        
        if @burguer.save
        flash[:notice] = "Lanche cadastrado com sucesso"
        redirect_to burguers_path  
        else
        render :new
        end  
    end  
    def new
        @burguer = Burguer.new
    end 
    def update
        @burguer = Burguer.find(params[:id])
        if @burguer.update(nome: params[:burguer][:nome], descricao: params[:burguer][:descricao], valor: params[:burguer][:valor])
            redirect_to burguers_path
        else 
            render :edit
        end     
    end
    def destroy
        id = params[:id]
        Burguer.destroy id
        redirect_to burguers_path
    end  
    def edit
        @burguer = Burguer.find(params[:id])
    end


end    