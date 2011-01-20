require 'test_helper'

class ChangeTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Change.new.valid?
  end
end
