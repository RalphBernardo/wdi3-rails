# == Schema Information
#
# Table name: recipes
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  course       :string(255)
#  cooktime     :integer
#  serving_size :integer
#  instructions :text
#  image        :text
#  book_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Recipe < ActiveRecord::Base
  attr_accessible :name, :course, :cooktime, :serving_size, :instructions, :image, :book_id
  belongs_to :book
  has_and_belongs_to_many :ingredients
end
