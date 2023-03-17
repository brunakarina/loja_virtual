class Livro
  #cria o metodo setter/getter automaticamente, getter: acessar valor do atributo, setter: alterar valor do atributo
  attr_accessor :preco
  attr_reader :categoria
  attr_reader :isbn
  #attr_writer :preco - esse cria automaticamente somente o metodo setter do atributo preco
  #attr_reader :preco - esse cria automaticamente somente o metodo getter do atributo preco

  def initialize (autor, isbn = "1", numero_de_paginas, preco, categoria)
    @autor = autor
    @isbn = isbn
    @numero_de_paginas = numero_de_paginas
    @preco = preco
    @categoria = categoria
  end

  def to_s
    "Autor: #{@autor}, Isbn: #{@isbn}, páginas: #{@numero_de_paginas}, Categoria #{@categoria}"
  end

  def eql?(outro_livro)
    @isbn == outro_livro.isbn
  end

  def hash
    @isbn.hash
  end
end

  #metodo getter
  # def preco
  #   @preco
  # end

  #metodo setter
  # def preco=(preco)
  #   @preco = preco
  # end

