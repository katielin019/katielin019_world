class Category < ApplicationRecord
	has_many :photos

	scope :active, 			 -> { where('active = ?', true) }
  scope :alphabetical, -> { order('name') }
  
end
