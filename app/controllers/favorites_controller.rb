class FavoritesController < ApplicationController

	def create
		book = Book.find(params[:book_id])
		favorite = current_user.favorites.new(book_id: book.id)
		favorite.user_id = book.id
		favorite.save
		redirect_to book_path(book.id)
	end

	def destroy
		book = Book.find(params[:book_id])
		favorite = current_user.favorites.find_by(book_id: book.id)
		favotite.destroy
		redirect_to book_path(book.id)
	end
end