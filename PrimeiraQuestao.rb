module AcoesDoCorpo
    def movimentar_braco
        (@inforIdade % 2) == 0 ? "Morreu dizendo que à teoria da relatividade é a maior descoberta do mundo" : "Morreu dizendo que à gravidade é a maior descoberta do mundo"
    end
end

class Pessoa
    def initialize (nome:,dia:,mes:,ano:,inforIdade:,idade:)
        @nome = nome
        @dia = dia
        @mes = mes
        @ano = ano
        @idade = idade 
        @inforIdade = inforIdade
    end

    def informarNome
        @nome
    end

    def informarIdade
        @inforIdade
    end

    def calcularIdade
        Time.new(1993, 9, 27).utc
        dt = Time.new(@ano,@mes,@dia).utc
        atual = Time.now
        @inforIdade =  ((atual - dt) / 32504000).to_i
    end

    def ajustarDataDeNascimento
        @idade = %{#{@dia}/#{@mes}/#{@ano}}
    end

    include AcoesDoCorpo   
end

pessoa = Pessoa.new(nome:'Albert Einstein',dia:04,mes:01,ano:1643,idade:"", inforIdade:"")
pessoa2 = Pessoa.new(nome:'Isaac Newton',dia:14,mes:03,ano:1879,idade:"", inforIdade:"")

puts %{Nome: #{pessoa.informarNome} - Data de nascimento: #{pessoa.ajustarDataDeNascimento} - Idade: #{pessoa.calcularIdade} anos - #{pessoa.movimentar_braco}}

puts %{Nome: #{pessoa2.informarNome} - Data de nascimento: #{pessoa2.ajustarDataDeNascimento} - Idade: #{pessoa2.calcularIdade} anos - #{pessoa2.movimentar_braco}}


