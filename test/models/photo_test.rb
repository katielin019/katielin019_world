require 'test_helper'

class PhotoTest < ActiveSupport::TestCase
  # shoulda matchers
  should belong_to(:category)
  should validate_presence_of(:caption)

end
