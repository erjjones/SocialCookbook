class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  attr_accessible :description, :measure, :unit
end
