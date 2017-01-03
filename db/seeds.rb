# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Role.find_or_create_by(:name => 'admin')
superadmin = Role.find_or_create_by(:name => 'superadmin')

User.find_or_create_by(:email => 'superadmin@ex.com') do |user|
  user.password = 'adminadmin'
  user.password_confirmation = 'adminadmin'
  user.roles = [ admin, superadmin ]
end

User.find_or_create_by(:email => 'admin@ex.com') do |user|
  user.password = 'adminadmin'
  user.password_confirmation = 'adminadmin'
  user.roles = [ admin ]
end

User.find_or_create_by(:email => 'user@ex.com') do |user|
  user.password = 'useruser'
  user.password_confirmation = 'useruser'
end

file_path = "#{Rails.root}/db/data/"

Book.find_or_create_by(:title => 'test 1') do |book|
  book.author = 'author 1'
  book.publisher = 'publisher 1'
  book.image = open(file_path + "test1.jpg")
  book.bookpdf = open(file_path + "test.pdf")
end

Book.find_or_create_by(:title => 'test 2') do |book|
  book.author = 'author 2'
  book.publisher = 'publisher 2'
  book.image = open(file_path + "test2.jpg")
  book.bookpdf = open(file_path + "test.pdf")
end

Book.find_or_create_by(:title => 'test 3') do |book|
  book.author = 'author 3'
  book.publisher = 'publisher 3'
  book.bookpdf = open(file_path + "test.pdf")
end
