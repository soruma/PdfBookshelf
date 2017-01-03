class RentalController < ApplicationController
  def addcart
    @book = Book.find(params[:id])
  end

  def create
  end

  def destroy
  end

  def index
    @books = Book.all
  end

  def lets_rental
  end

  def show
  end

end
