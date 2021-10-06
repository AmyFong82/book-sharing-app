class Api::V1::BooksController < ApplicationController

	def index
		books = Book.all
		render json: books, except: [:created_at, :updated_at]
	end

	def show
		book = Book.find(params[:id])
		render json: book, except: [:created_at, :updated_at]
	end

	def create
		book = Book.create(book_params)
		render json: book, except: [:created_at, :updated_at], status: :created
	end

	def update
		book = Book.find(params[:id])
		book.update(book_params)
		render json: book, except: [:created_at, :updated_at], status: :accepted
	end


	def destroy
		book = Book.find(params[:id])
		book.delete
		render json: {message: "Book Deleted"}
	end

	# def show_new_book
	# 	book = Book.where(user_id = params[:user_id]).last
	# 	render json: book, except: [:created_at, :updated_at]
	# end

	private

	def book_params
		params.require(:book).permit(:user_id, :title, :author, :reading_age, :cover_image)
	end

end
