# == Schema Information
#
# Table name: restaurants
#
#  id              :integer          not null, primary key
#  name            :string(255)
#  address         :string(255)
#  phone           :string(255)
#  email           :string(255)
#  longitude       :float            default(0.0)
#  latitude        :float            default(0.0)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :string(255)
#  city            :string(255)
#

class Restaurant < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :name
  validates :name,:email, :address, :phone, :presence => true
end
