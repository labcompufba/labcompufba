# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(nome: 'Admin', matricula:'00000', email:'admin@admin.com.br', password:'admin1', admin:true )
User.create(nome: 'Pesquisador', matricula:'00000', email:'pesquisador@pesquisador.com.br', password:'admin1', pesq:true )
User.create(nome: 'Usuario', matricula:'00000', email:'usuario@usuario.com.br', password:'admin1' )


Programa.create(nome:'CIÊNCIA DE ALIMENTOS (FARMÁCIA)', local:'ONDINA', sigla:'ICI')
Programa.create(nome:'CIÊNCIAS DA SAÚDE (ICS - VALE DO CANELA)', local:'CANELA',sigla:'ICS')
Programa.create(nome:'CIÊNCIAS SOCIAIS (FFCH - SÃO LÁZARO)', local:'SAO LAZARO',sigla:'FFCH')
Programa.create(nome: 'CIÊNCIA DA INFORMAÇÃO (ICI)', local:'ONDINA', sigla:'ICI')

Instituto.create(nome:' INSTITUTO DE MATEMATICA', local: 'ONDINA', sigla: 'IM' )
Equipamento.create(descricao:'AR CONDICIONADO' )
Equipamento.create(descricao:'NOTEBOOK' )
Equipamento.create(descricao:'IMPRESSORA 3D' )
Equipamento.create(descricao:'NOBREAK' )

Laboratorio.create(  nome:'LABORATORIO DE INFORMATICA',sigla:'LABINF',local:'SALA 140',instituto_id:1,programa_id:1)
Laboratorio.create(  nome:'LABORATÓRIO DE SISTEMAS DISTRIBUÍDOS',sigla:'LASID',local:'SALA 143',instituto_id:1,programa_id:1)


TipoServico.create(servico:'MANUTENÇÃO CORRETIVA' )
TipoServico.create(servico:'MANUTENÇÃO COM SUBSTITUIÇÃO')





