class Recipe < ActiveRecord::Base
  attr_accessible :author, :category, :imagelink, :instructions, :name
  validates :name,  :presence => true, :length => { :minimum => 3 }
  validates :author, :presence => true, :length => { :minimum => 3 }
  validates :category, :presence => true, :length => { :minimum => 3 }
  validates :instructions, :presence => true, :length => { :minimum => 3 }
  
  has_many :ingredients, :dependent => :destroy
end

