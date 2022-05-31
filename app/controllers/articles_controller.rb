class ArticlesController < ApplicationController

	def new
	end

	def create
		render plain: params[:article].inspect # plain - ключ хеша, парамс...-значення хеша
	end

end
