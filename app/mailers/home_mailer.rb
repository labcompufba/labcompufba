class HomeMailer < ApplicationMailer

  def nova_manutencao(nome, email,equipamento,laboratorio)
    @nome = nome
    @email = email
    @equipamento = equipamento
    @laboratorio = laboratorio 
    mail to: @email,subject: 'Requisição de Manutenção.'
  end
  
  def inclusao_equip_manutencao(nome, email,equipamento,laboratorio)
    @nome = nome
    @email = email
    @equipamento = equipamento
    @laboratorio = laboratorio 
    mail to: @email ,subject: 'Equipamento em Manutenção.'
  end
  
end