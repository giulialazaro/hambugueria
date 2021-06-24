class Contrato < ApplicationRecord
  belongs_to :burguer
  belongs_to :bebida
  validates  :nome , :presence => { :message => " é obrigatório !"}  
  validates  :telefone , :presence => { :message => " é obrigatório !"}  
  validates  :endereco , :presence => { :message => " é obrigatório !"} 
  validates  :burguer , :presence => { :message => " é obrigatório !"}  
  
  validate :validar_telefone 
  def validar_telefone
    return if telefone.blank?
    if telefone.count('0123456789') != 11 || telefone.size != 11
      errors.add(:telefone, "Invalido")
    end  
  end  

  def valor
    burguer.valor + bebida.valor
  end  
end
