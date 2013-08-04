User.destroy_all
Restaurant.destroy_all
Plat.destroy_all

u1 = User.create(:name => 'Bob', :address => '610 Harris St Sydney', :phone => '0412222', :email => 'bob@gmail.com', :password => 'a', :city => 'Sydney',  :password_confirmation => 'a')


r1 = Restaurant.create(:name => 'Lego House', :address => '700 Harris St Sydney', :phone => '0422222', :email => 'lego@gmail.com', :password => 'a', :city => 'Sydney', :password_confirmation => 'a')

r2 = Restaurant.create(:name => 'The RockPool', :address => '66 Hunter St
Sydney NSW', :phone => '(02) 8078 1900', :email => 'rockpool@gmail.com', :password => 'b', :city => 'Sydney', :password_confirmation => 'b')


p1 = Plat.create(:description => '2 Piri Piri Burgers with fries', :price => '20', :date => '2012-08-03', :email => 'rockpool@gmail.com', :ready => true )

r1.plats << p1
