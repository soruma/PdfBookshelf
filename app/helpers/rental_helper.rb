module RentalHelper
  def rental_book_ids
    session[:rental_book_ids]
  end

  def rental_book_ids=(value)
    session[:rental_book_ids] = value
  end

  def book_ids
    rental_book_ids.nil? ? Array.new : rental_book_ids.split("&").uniq
  end

  def add(val)
    self.rental_book_ids = book_ids << val
  end

  def delete(val)
    arr = book_ids
    arr.delete(val)
    self.rental_book_ids = arr
  end
end
