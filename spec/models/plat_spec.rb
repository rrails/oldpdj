# == Schema Information
#
# Table name: plats
#
#  id            :integer          not null, primary key
#  description   :string(255)
#  price         :integer
#  date          :datetime
#  email         :string(255)
#  ready         :boolean
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  restaurant_id :integer
#

require 'spec_helper'
