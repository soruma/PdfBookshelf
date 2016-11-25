class Book < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :bookpdf, PdfUploader
end
