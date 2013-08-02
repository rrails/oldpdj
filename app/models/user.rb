# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  type            :string(255)
#  name            :string(255)
#  address         :string(255)
#  phone           :string(255)
#  email           :string(255)
#  image           :string(255)
#  city            :string(255)
#  longitude       :float            default(0.0)
#  latitude        :float            default(0.0)
#  password_digest :string(255)
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :name, :address, :phone, :email, :image, :city, :password, :password_confirmation
  # validates :name, :email, :address, :phone, :presence => true
  validates :name, :presence => true
end
