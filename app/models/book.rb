class Book < ApplicationRecord
  has_and_belongs_to_many :lends

  mount_uploader :image, ImageUploader
  mount_uploader :bookpdf, PdfUploader

  validates :title, presence: true
  validates :bookpdf, presence: true
end
