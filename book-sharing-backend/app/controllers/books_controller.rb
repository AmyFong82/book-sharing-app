class BooksController < ApplicationController

	def index
		books = Book.all
		render json: books, except: [:created_at, :updated_at]
	end

	def show
	end

	def create
	end

	def update
	end


	def destroy
	end

end
