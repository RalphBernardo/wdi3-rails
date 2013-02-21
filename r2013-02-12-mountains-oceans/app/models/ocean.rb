# == Schema Information
#
# Table name: oceans
#
#  id               :integer          not null, primary key
#  name             :string(255)
#  image            :text
#  total_area       :float
#  percent_of_earth :integer
#  max_depth        :integer
#  etymology        :text
#

class Ocean < ActiveRecord::Base
  attr_accessible :name, :image, :total_area, :percent_of_earth, :max_depth, :etymology
end
