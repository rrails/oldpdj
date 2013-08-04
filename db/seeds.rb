# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
u1 = User.create(:name => 'Bob', :address => '610 Harris St Sydney', :phone => '0412222', :email => 'bob@gmail.com', :password => 'a', :city => 'Sydney', :password_confirmation => 'a')
r1 = Restaurant.create(:name => 'Lego', :address => '700 Harris St Sydney', :phone => '0422222', :email => 'bob@gmail.com', :password => 'a', :city => 'Sydney', :password_confirmation => 'a')
