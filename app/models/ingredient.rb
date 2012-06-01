class Ingredient < ActiveRecord::Base
  belongs_to :recipe
  attr_accessible :description, :measure, :unit
  validates :description,  :presence => true, :length => { :minimum => 3 }  
  validates :unit,  :presence => true, :length => { :minimum => 1 }
end
