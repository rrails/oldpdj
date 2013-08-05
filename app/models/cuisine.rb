# == Schema Information
#
# Table name: cuisines
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Cuisine < ActiveRecord::Base
  attr_accessible :name
  has_many :restaurants
end
