class PagesController < ApplicationController
	def home
		@fornecedores = Fornecedor.all
	end

	def novo_fornecedor
		@fornecedor = Fornecedor.new
		@fornecedor.nome = params[:nome]
		@fornecedor.email = params[:email]

		respond_to do |format|
			if @fornecedor.save
		  	format.js { head :ok }
		  else
		  	format.js { head :bad_request }
		 	end
		end
	end

	def atualizar_fornecedor
		@fornecedor = Fornecedor.where(nome: params[:nome])[0]
		@fornecedor.update(nome: params[:updateNome], email: params[:updateEmail])

		respond_to do |format|
	  	format.js { head :ok }
		end
	end

	def nova_conta
		@conta = Conta.new
		@conta.descricao = params[:descricao]
		@conta.despesa = params[:despesa]
		@conta.valor = params[:valor]
		@conta.vencimento = params[:vencimento]
		@fornecedor = Fornecedor.where(nome: params[:fornecedor])[0]
		@conta.fornecedor = @fornecedor

		respond_to do |format|
			if @conta.save
		  	format.js { head :ok }
		  else
		  	format.js { head :bad_request }
		 	end
		end
	end

	def atualizar_conta
		@conta = Conta.where(descricao: params[:descricao_antiga])[0]
		@conta.descricao = params[:descricao]
		@conta.despesa = params[:despesa]
		@conta.valor = params[:valor]
		@conta.vencimento = params[:vencimento]
		@fornecedor = Fornecedor.where(nome: params[:fornecedor])[0]
		@conta.fornecedor = @fornecedor

		respond_to do |format|
			if @conta.save
		  	format.js { head :ok }
		  else
		  	format.js { head :bad_request }
		 	end
		end
	end
end

# logger.debug "Este é o debugger"
