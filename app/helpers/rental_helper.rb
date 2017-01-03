module RentalHelper
  def rental_books
    arr = cookies[:rental_books_id]
    arr.nil? ? Array.new : arr.split("&").uniq
  end

  def rental_books=(val)
    cookies[:rental_books_id] = val
  end

  def add_rental_books(val)
    cookies[:rental_books_id] = rental_books << val
  end
end
