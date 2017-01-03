# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Role.create(:name => 'admin')
superadmin = Role.create(:name => 'superadmin')

User.create(:email => 'admin@ex.com',
            :password => 'adminadmin',
            :password_confirmation => 'adminadmin',
            :roles => [ admin ])

User.create(:email => 'superadmin@ex.com',
            :password => 'adminadmin',
            :password_confirmation => 'adminadmin',
            :roles => [ admin, superadmin ])

User.create(:email => 'user@ex.com',
            :password => 'useruser',
            :password_confirmation => 'useruser')
