
defmodule Cadastro do
    def registroArtigo() do
        
        evento = " "
        artigo = " "
        IO.puts "Bem vindo" 
        IO.puts "1:Para Cadastrar"
        IO.puts "2:Para Mostrar"
        num =IO.gets("Escolha:")
        if num == 1 do
            evento = IO.gets("Digite o nome do evento:")
            artigo = IO.gets("Digite o artigo:")
            colecao = {:evento => artigo}
        end
        if num == 2 do
            ev = IO.gets("Digite o nome do evento");
            procura(ev,colecao)
        end
        i = IO.gets("Gostaria de cadastrar novamente?(s/n):")
        if i != "n" do
            registroArtigo()       
        end
       
end
    def procura(ev,colecao) do
    if Map.fetch(colecao{:value},ev) do
      IO.puts colecao[:evento]
    end
end
    
end


Cadastro.menu()
