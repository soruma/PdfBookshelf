json.extract! book, :id, :title, :author, :publisher, :image, :bookpdf, :created_at, :updated_at
json.url book_url(book, format: :json)
