class AddRestaurantsTable < ActiveRecord::Migration
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      t.string :phone
      t.string :email
      t.float  :longitude, :default => 0
      t.float  :latitude, :default => 0
      t.string :password_digest
      t.timestamps
    end
  end
end