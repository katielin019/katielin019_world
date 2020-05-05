require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
	# shoulda matchers
  should have_many(:photos)
  
end
