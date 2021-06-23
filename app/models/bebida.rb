class Bebida < ApplicationRecord
    validates  :descricao , :presence => { :message => " é obrigatório !"}  
    validates  :valor , :presence => { :message => " é obrigatório !"} 
end
