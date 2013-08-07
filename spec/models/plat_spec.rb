# == Schema Information
#
# Table name: plats
#
#  id                  :integer          not null, primary key
#  description         :string(255)
#  price               :integer
#  email               :string(255)
#  ready               :boolean
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  restaurant_id       :integer
#  release             :datetime
#  image               :string(255)
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#

require 'spec_helper'
