class HomeMailer < ApplicationMailer

  def nova_manutencao(nome, sobrenome, email)
    @nome = nome
    @sobrenome = sobrenome
    @email = email

    mail to: @email,
         subject: 'Boas vindas'
  end
end 

