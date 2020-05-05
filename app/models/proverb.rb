class Proverb < ApplicationRecord
	# Method to get a random quote for home page
  def self.get_random_quote
    find(:first, :order => 'Random()')
  end
  
  # Make sure that both klingon phrase and translation included
  validates_presence_of :klingon, :translation
  
  # Alphabetical by translation
  scope :alphabetical, -> { order('translation') }
  scope :active, 			 -> { where('active = ?', true) }
  
end
