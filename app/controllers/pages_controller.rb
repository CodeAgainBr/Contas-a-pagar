class PagesController < ActionController::Base
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
end

# logger.debug "Este é o debugger"
