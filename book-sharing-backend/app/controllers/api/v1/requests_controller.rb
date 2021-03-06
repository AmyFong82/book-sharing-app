class Api::V1::RequestsController < ApplicationController

	def create
		request = Request.create(user_id: params[:requester_id], book_id: params[:book_id])
		if request.valid?
			render json: request.bookDetails, except: [:created_at, :updated_at], status: :created
		else
			render json: { message: "Book has already been requested."}, status: :not_acceptable
		end
	end


	def destroy
		request = Request.find_by(book_id: params[:id])
		request.delete
		render json: {message: "Request Canceled"}
	end

end
