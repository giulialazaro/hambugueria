class ContratosController < ApplicationController
    def index 
        @contratos = Contrato.order(created_at: :desc)
        @valor_recebido = 0
        @contratos.each do |contrato|
            @valor_recebido = @valor_recebido + contrato.valor
        end
    end
    
    def create
        attrs = params.require(:contrato).permit(:nome, :telefone, :endereco, :burguer_id, :bebida_id)
        @contrato = Contrato.new attrs
        if @contrato.save
            redirect_to contratos_path
            flash[:notice] = "Pedido realizado com sucesso"
        else 
            render :new
        end
    end 

    def new
        @contrato = Contrato.new
    end    

    def edit
        @contrato = Contrato.find(params[:id])
    end

    def update
        @contrato = Contrato.find(params[:id])
        if @contrato.update(nome: params[:contrato][:nome], telefone: params[:contrato][:telefone], endereco: params[:contrato][:endereco], burguer_id: params[:contrato][:burguer_id], bebida_id: params[:contrato][:bebida_id])
            redirect_to contratos_path
        else 
            render :edit
        end     
    end

    def destroy
        id = params[:id]
        Contrato.destroy id
        redirect_to contratos_path
    end 



    
end