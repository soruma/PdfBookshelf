class RentalController < ApplicationController
  def addcart
    @book = Book.find params[:id]

    helpers.add @book.id
  end

  def confirmation
  end

  def create
  end

  def destroy
    helpers.delete params[:id]
    redirect_to rental_show_path
  end

  def index
    @books = Book.all
  end

  def lets_rental
    redirect_to rental_show_path if helpers.book_ids.size == 0
    @books = books
  end

  def show
    @books = books
  end

  private
  def books
    Book.where(id: helpers.book_ids)
  end
end
