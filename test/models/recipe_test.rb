require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  
  test "recipe should be valid" do
    assert recipes(:one).valid?
    assert_not recipes(:name_missing).valid?
    assert_not recipes(:description_missing).valid?
    assert_not recipes(:name_minimum).valid?
    assert_not recipes(:name_maximum).valid?
    assert_not recipes(:description_minimum).valid?
    assert_not recipes(:description_maximum).valid?
  end
end
