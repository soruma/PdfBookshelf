require 'test_helper'
require_relative '../test_helper'

class BookTest < ActiveSupport::TestCase
  test "has make recode" do
    file_dir = CarrierWave.root #あとで消してみる
    File.open(file_dir.join(book.image.file.path)) do |img|
      book.image = img
    end
    File.open(file_dir.join(book.bookpdf.file.path)) do |pdf|
      book.bookpdf = pdf
    end
    book.save!
  end
end
