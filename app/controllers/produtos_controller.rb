class ProdutosController < ApplicationController

    def index
        @camisetas_por_nome = Produto.all.order :nome
        @camisetas_por_preco = Produto.all.order(:quantidade).limit 2
    end
end
