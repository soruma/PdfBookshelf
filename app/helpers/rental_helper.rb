module RentalHelper
  def books
    arr = cookies[:rental_books_id]
    arr.nil? ? Array.new : arr.split("&").uniq
  end

  def add(val)
    cookies[:rental_books_id] = books << val
  end

  def delete(val)
    arr = books
    arr.delete(val)
    cookies[:rental_books_id] = arr
  end
end
