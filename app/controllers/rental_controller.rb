class RentalController < ApplicationController
  def addcart
    @book = Book.find(params[:id])

    helpers.add_rental_books @book.id
  end

  def create
  end

  def destroy
    arr = helpers.rental_books
    arr.delete(params[:id])
    helpers.rental_books = arr
    redirect_to rental_show_path
  end

  def index
    @books = Book.all
  end

  def lets_rental
  end

  def show
    @books = Array.new
    helpers.rental_books.each do |id|
      @books << Book.find(id)
    end
  end

end
