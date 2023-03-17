require "./lib/loja_virtual"

nome = "linguagem ruby"
isbn = "123-45678901-2"
numero_paginas = 245

preco = 69.90
desconto = 0.1

nome = "linguagem ruby"
isbn = "342-65675756-1"
numero_paginas = 245

preco = 69.90
desconto = 0.1

def preco_com_desconto (preco, desconto)
  preco - (preco * desconto)
end

puts preco_com_desconto(preco, desconto)

mome = "Teste Driven Development: Teste e Design no Mundo Real"
isbn = "342-65675756-1"
numero_paginas = 245

preco = 89.90
desconto = 0.1

puts preco_com_desconto(preco, desconto)


# Livro.new "lucas souza", 200


teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 60.9
# p teste_e_design
# p web_design_responsivo

puts teste_e_design.preco
# puts teste_e_design.to_s 

teste_e_design.preco = 79.9
puts teste_e_design.preco

# puts teste_e_design.instance_variable_get "@autor"

#estrutura de dados
## array - como ruby é uma linguagem com tipagem dinamica podemos adicionar objetos de qualquer tipo dentro de um mesmo array. adicionar novos
## elementos dentro de um array se da através do método << 
# puts numeros.class

# numeros = [1, 2, 3]
# numeros << "ola"

# def multiplica_primeiro_elemento_por_dois(numeros)
#   puts 2 * numeros.first
# end

# multiplica_primeiro_elemento_por_dois [1, 2, 3]

## array de palavras separar por %w{} -  a vantagem de usar é poder separar as palavras que compoe o array usando espaco e nao virgula.
# %W{} - permite a interpolação de valores nas palavras que compoe o array.

# nome = "lucas"
# palavras = %W{ola #{nome}}
# p palavras

# biblioteca = []
# biblioteca << teste_e_design
# biblioteca << web_design_responsivo
# puts biblioteca

biblioteca = Biblioteca.new

teste_e_design = Livro.new "Mauricio Aniche", "123454", 247, 60.9, :testes
teste_e_design_2 = Livro.new "Mauricio Aniche", "123454", 247, 60.9, :testes
web_design_responsivo = Livro.new "Tárcio Zemel", "452565", 189, 67.9, :web_design

# puts web_design_responsivo.categoria 

biblioteca.adiciona teste_e_design
biblioteca.adiciona web_design_responsivo

# puts biblioteca.livros

biblioteca = Biblioteca.new           
# for livro in biblioteca.livros do
#   puts livro.valor
# end

hash = {"123454" => teste_e_design, 
        "452565" => web_design_responsivo}

# puts hash ["452565"]
# puts hash ["123454"]

# for categoria, livros in biblioteca.livros do
#   puts categoria

#   for livro in livros do
#     puts livro.preco
#   end
# end


# values retorna todos os valores do hash dentro de um array

hash = { testes: teste_e_design,
         web_design: web_design_responsivo}



jsf_e_jpa = Livro.new "Gilliard Cordeiro", "543465", 234, 64.9, :frameworks_mvc

# hash = {}
# hash[:testes] = [[teste_e_design], [jsf_e_jpa]]
# hash[:web_design] = [[web_design_responsivo]]

puts hash.values.flatten  

  hash = { :testes => [teste_e_design], :web_design => [web_design_responsivo] }

  puts hash[:testes]

 ## == retorna true apenas se os dois objetos envolvidos na comparação forem a mesma instancia
  # equal? retorna true apenas se os dois objetos envolvidos na comparacao "" - bibliotecas usam
  # eql? esté metodo deve ser sobrescrito quando desejamos avaliar se dois objetos sao iguais por seus valores.

  require 'set'

  numero_sem_repeticao = Set.new [1, 2, 2, 3, 2, 1]

  for numero in numero_sem_repeticao do
    p numero
  end  

  p teste_e_design.eql? teeste_e_design_2

  p teste_e_design.hash == teste_e_design_2.hash

  livros = Set.new [teste_e_design, teste_e_design_2]
  for livro in livros do
    puts livro
  end

  