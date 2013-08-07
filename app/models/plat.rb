# == Schema Information
#
# Table name: plats
#
#  id            :integer          not null, primary key
#  description   :string(255)
#  price         :integer
#  email         :string(255)
#  ready         :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :integer
#  release       :datetime
#  image         :string(255)
#

class Plat < ActiveRecord::Base
  attr_accessible :description, :price, :date, :email, :ready, :release,:image, :restaurant_id
  belongs_to :restaurant
end
