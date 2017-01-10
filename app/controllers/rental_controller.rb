class RentalController < ApplicationController
  def addcart
    @book = Book.find params[:id]

    helpers.add @book.id
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
    redirect_to rental_show_path if helpers.books.size == 0
  end

  def show
    @books = helpers.books.inject([]) { |books, id| books << Book.find(id) }
  end

end
