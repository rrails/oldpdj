User.destroy_all
Restaurant.destroy_all
Plat.destroy_all
Cuisine.destroy_all


thai = Cuisine.create(:name => 'thai')
french = Cuisine.create(:name => 'french')
italian = Cuisine.create(:name => 'italian')
japanese = Cuisine.create(:name => 'japanese')
chinese = Cuisine.create(:name => 'chinese')


u1 = User.create(:name => 'Bob', :address => '610 Harris St Sydney', :phone => '0412222', :email => 'bob@gmail.com', :password => 'a', :city => 'Sydney',  :password_confirmation => 'a')


r1 = Restaurant.create(:name => 'Lego House', :address => '700 Harris St Sydney', :phone => '0422222', :email => 'lego@gmail.com', :password => 'a', :city => 'Sydney', :password_confirmation => 'a', :icon => 'http://icons.iconarchive.com/icons/visualpharm/icons8-metro-style/32/Catering-Restaurant-icon.png', :cuisine_id => thai.id)

r2 = Restaurant.create(:name => 'The RockPool', :address => '66 Hunter St
Sydney NSW', :phone => '(02) 8078 1900', :email => 'rockpool@gmail.com', :password => 'b', :city => 'Sydney', :password_confirmation => 'b', :icon => 'http://icons.iconarchive.com/icons/chrisbanks2/cold-fusion-hd/32/Restaurant-Story-icon.png' , :cuisine_id => french.id)


r3 = Restaurant.create(:name => 'Thai hut', :address => '800 Harris St Sydney', :phone => '0422232', :email => 'thai@gmail.com', :password => 'a', :city => 'Sydney', :password_confirmation => 'a', :icon => 'http://icons.iconarchive.com/icons/3xhumed/mega-games-pack-35/32/Restaurant-Empire-2-1-icon.png', :cuisine_id => thai.id)


p1 = Plat.create(:description => '2 Piri Piri Burgers with fries', :price => '20', :release => '2012-08-04', :email => 'rockpool@gmail.com', :ready => true )

p2 = Plat.create(:description => 'All you can eat Sushi', :price => '25', :release => '2013-08-01', :email => 'rockpool@gmail.com', :ready => true )

r1.plats << p1
r2.plats << p2