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

require 'spec_helper'
# describe Restaurant do
#   before do
#       @restaurant = Restaurant.new
#   end

#     it "has invalid name" do
#       @restaurant.valid?.should be_false
#     end

#     it "has a valid name" do
#       @restaurant.name = "Lego"
#       @restaurant.address = "108 Harris Street"
#       @restaurant.phone = "043499123"
#       @restaurant.email = "Lego@gmail.com"
#       @restaurant.valid?.should be_true
#     end
# end