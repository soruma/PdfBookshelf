require 'test_helper'
require_relative '../test_helper'

class BookTest < ActiveSupport::TestCase
  test "has make recode" do
    book = books(:one)
    assert File.exists?(fixture_file_upload(book.image.file.path, 'image/jpeg'))
    assert File.exists?(fixture_file_upload(book.bookpdf.file.path, 'application/pdf'))
  end
end
