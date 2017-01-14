module RentalHelper
  def rental_books_id
    session[:rental_books_id]
  end

  def rental_books_id=(value)
    session[:rental_books_id] = value
  end

  def books
    rental_books_id.nil? ? Array.new : rental_books_id.split("&").uniq
  end

  def add(val)
    self.rental_books_id = books << val
  end

  def delete(val)
    arr = books
    arr.delete(val)
    self.rental_books_id = arr
  end
end
