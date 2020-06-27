class ProdutosController < ApplicationController

    def index
        @camisetas_por_nome = Produto.all.order :nome
        @camisetas_por_preco = Produto.all.order(:quantidade).limit 2
    end

    def create
    	valores = params.require(:produto).permit(:nome, :descricao, :quantidade, :preco)

    	produto = Produto.create valores
    	
    end
end
