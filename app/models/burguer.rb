class Burguer < ApplicationRecord
    validates  :nome , :presence => { :message => " é obrigatório !"}  
    validates  :descricao , :presence => { :message => " é obrigatório !"}  
    validates  :valor , :presence => { :message => " é obrigatório !"} 
end
