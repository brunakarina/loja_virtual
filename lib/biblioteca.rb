class Biblioteca
  attr_reader :livros
  def initialize
      @livros = {} #inicializa com um hash 
  end

  # def adiciona(livro)
  #   @livros << livro   - metodo array
  # end

  def adiciona(livro)
    @livros[livro.categoria] ||= []
    @livros[livro.categoria] << livro
  end

  def livros
    @livros = {}
  end
end

